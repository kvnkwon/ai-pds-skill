#!/usr/bin/env bash
set -euo pipefail

# test.sh: Test suite for design-sprint bash helpers
# Usage: ./test.sh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BIN_DIR="$SCRIPT_DIR/bin"
PASS=0
FAIL=0
TOTAL=0

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

run_test() {
  local name="$1"
  TOTAL=$((TOTAL + 1))
  echo -n "  $name... "
}

pass() {
  PASS=$((PASS + 1))
  echo -e "${GREEN}PASS${NC}"
}

fail() {
  FAIL=$((FAIL + 1))
  echo -e "${RED}FAIL${NC}: $1"
}

# Create temp directory for tests
TMPDIR=$(mktemp -d)
trap "rm -rf $TMPDIR" EXIT

echo "Design Sprint Helper Tests"
echo "=========================="
echo ""

# ========================================
echo "sprint-init"
echo "----------"

run_test "creates sprint-output.md in target directory"
OUTPUT=$("$BIN_DIR/sprint-init" "$TMPDIR" 2>&1)
if [ -f "$TMPDIR/sprint-output.md" ]; then pass; else fail "File not created"; fi

run_test "output file has valid YAML frontmatter"
HEAD=$(head -1 "$TMPDIR/sprint-output.md")
if [ "$HEAD" = "---" ]; then pass; else fail "No frontmatter: $HEAD"; fi

run_test "frontmatter contains sprint_dir"
if grep -q "sprint_dir: $TMPDIR" "$TMPDIR/sprint-output.md"; then pass; else fail "Missing sprint_dir"; fi

run_test "frontmatter has empty stages_completed"
if grep -q "stages_completed: \[\]" "$TMPDIR/sprint-output.md"; then pass; else fail "stages_completed not empty"; fi

run_test "detects existing sprint (returns EXISTING)"
OUTPUT=$("$BIN_DIR/sprint-init" "$TMPDIR" 2>&1)
if echo "$OUTPUT" | grep -q "EXISTING"; then pass; else fail "Did not detect existing: $OUTPUT"; fi

run_test "fails on non-writable directory"
NOWRITE=$(mktemp -d)
chmod 444 "$NOWRITE"
if "$BIN_DIR/sprint-init" "$NOWRITE" 2>/dev/null; then
  fail "Should have failed"
else
  pass
fi
chmod 755 "$NOWRITE"
rm -rf "$NOWRITE"

echo ""

# ========================================
echo "sprint-status"
echo "-------------"

run_test "returns FRESH for non-existent file"
OUTPUT=$("$BIN_DIR/sprint-status" "$TMPDIR/nonexistent.md" 2>&1)
if echo "$OUTPUT" | grep -q "FRESH"; then pass; else fail "Expected FRESH: $OUTPUT"; fi

run_test "reads stages_completed from frontmatter"
OUTPUT=$("$BIN_DIR/sprint-status" "$TMPDIR/sprint-output.md" 2>&1)
if echo "$OUTPUT" | grep -q "RESUMING: 0"; then pass; else fail "Expected 0 stages: $OUTPUT"; fi

run_test "reports correct SPRINT_DIR"
if echo "$OUTPUT" | grep -q "SPRINT_DIR: $TMPDIR"; then pass; else fail "Wrong sprint_dir: $OUTPUT"; fi

echo ""

# ========================================
echo "sprint-write"
echo "------------"

run_test "appends content to sprint file"
"$BIN_DIR/sprint-write" "$TMPDIR/sprint-output.md" "1" "## 1. Exploration

**Idea:** Test idea"
if grep -q "Test idea" "$TMPDIR/sprint-output.md"; then pass; else fail "Content not found"; fi

run_test "updates stages_completed with new stage"
if grep -q "stages_completed: \[1\]" "$TMPDIR/sprint-output.md"; then pass; else fail "Stage not added to frontmatter"; fi

run_test "adds second stage without losing first"
"$BIN_DIR/sprint-write" "$TMPDIR/sprint-output.md" "2" "## 2. Problem Statement

**Core problem:** Test problem"
if grep -q "stages_completed: \[1, 2\]" "$TMPDIR/sprint-output.md"; then pass; else fail "Stages not accumulated"; fi

run_test "does not duplicate stage on re-write"
"$BIN_DIR/sprint-write" "$TMPDIR/sprint-output.md" "2" "## 2. Problem Statement (revised)

**Core problem:** Updated problem"
STAGES=$(grep "stages_completed" "$TMPDIR/sprint-output.md" | head -1)
COUNT=$(echo "$STAGES" | tr ',' '\n' | grep -c '2' || echo "0")
if [ "$COUNT" -eq 1 ]; then pass; else fail "Stage duplicated: $STAGES"; fi

run_test "handles special characters in content"
"$BIN_DIR/sprint-write" "$TMPDIR/sprint-output.md" "3" "## 3. User

**User:** Someone who uses \"quotes\" and \`backticks\` and says it's great"
if grep -q "backticks" "$TMPDIR/sprint-output.md"; then pass; else fail "Special chars not handled"; fi

run_test "fails on missing sprint file"
if "$BIN_DIR/sprint-write" "$TMPDIR/nonexistent.md" "1" "content" 2>/dev/null; then
  fail "Should have failed"
else
  pass
fi

echo ""

# ========================================
echo "sprint-status (after writes)"
echo "----------------------------"

run_test "correctly reports 3 completed stages"
OUTPUT=$("$BIN_DIR/sprint-status" "$TMPDIR/sprint-output.md" 2>&1)
if echo "$OUTPUT" | grep -q "RESUMING: 3"; then pass; else fail "Expected 3 stages: $OUTPUT"; fi

run_test "reports correct next stage"
if echo "$OUTPUT" | grep -q "NEXT_STAGE: 4"; then pass; else fail "Expected next stage 4: $OUTPUT"; fi

echo ""

# ========================================
echo "sprint-export"
echo "-------------"

# Write remaining stages for a more complete export test
for i in 4 5 6 7 8; do
  "$BIN_DIR/sprint-write" "$TMPDIR/sprint-output.md" "$i" "## $i. Stage $i

**Content:** Stage $i content"
done

run_test "generates product-context.md"
"$BIN_DIR/sprint-export" "$TMPDIR/sprint-output.md" >/dev/null 2>&1
if [ -f "$TMPDIR/product-context.md" ]; then pass; else fail "product-context.md not created"; fi

run_test "generates claude-code-starter.md"
if [ -f "$TMPDIR/claude-code-starter.md" ]; then pass; else fail "claude-code-starter.md not created"; fi

run_test "generates pitch-summary.md"
if [ -f "$TMPDIR/pitch-summary.md" ]; then pass; else fail "pitch-summary.md not created"; fi

run_test "product-context.md contains sprint content"
if grep -q "Test idea" "$TMPDIR/product-context.md"; then pass; else fail "Content not in export"; fi

run_test "warns on incomplete sprint"
INCOMPLETE_DIR=$(mktemp -d)
"$BIN_DIR/sprint-init" "$INCOMPLETE_DIR" >/dev/null
"$BIN_DIR/sprint-write" "$INCOMPLETE_DIR/sprint-output.md" "1" "## 1. Test"
OUTPUT=$("$BIN_DIR/sprint-export" "$INCOMPLETE_DIR/sprint-output.md" 2>&1)
if echo "$OUTPUT" | grep -q "WARNING"; then pass; else fail "No warning for incomplete sprint"; fi
rm -rf "$INCOMPLETE_DIR"

run_test "fails on missing sprint file"
if "$BIN_DIR/sprint-export" "$TMPDIR/nonexistent.md" 2>/dev/null; then
  fail "Should have failed"
else
  pass
fi

echo ""

# ========================================
echo "sprint-write (error handling)"
echo "-----------------------------"

run_test "rejects invalid stage number (0)"
if "$BIN_DIR/sprint-write" "$TMPDIR/sprint-output.md" "0" "content" 2>/dev/null; then
  fail "Should have rejected stage 0"
else
  pass
fi

run_test "rejects invalid stage number (9)"
if "$BIN_DIR/sprint-write" "$TMPDIR/sprint-output.md" "9" "content" 2>/dev/null; then
  fail "Should have rejected stage 9"
else
  pass
fi

run_test "rejects invalid stage number (abc)"
if "$BIN_DIR/sprint-write" "$TMPDIR/sprint-output.md" "abc" "content" 2>/dev/null; then
  fail "Should have rejected non-numeric stage"
else
  pass
fi

run_test "rejects relative path"
if "$BIN_DIR/sprint-write" "relative/path/sprint-output.md" "1" "content" 2>/dev/null; then
  fail "Should have rejected relative path"
else
  pass
fi

echo ""

# ========================================
echo "sprint-status (error recovery)"
echo "------------------------------"

run_test "recovers from corrupt YAML frontmatter"
CORRUPT_DIR=$(mktemp -d)
cat > "$CORRUPT_DIR/sprint-output.md" << 'CORRUPT'
---
sprint_dir: /tmp/test
stages_completed: [CORRUPTED_GARBAGE
updated_at: not-a-date
---

## 1. Exploration

**Idea:** Test

## 2. Problem

**Problem:** Test
CORRUPT
OUTPUT=$("$BIN_DIR/sprint-status" "$CORRUPT_DIR/sprint-output.md" 2>&1)
if echo "$OUTPUT" | grep -q "WARNING.*recovery\|WARNING.*Corrupt\|RESUMING"; then pass; else fail "No recovery attempt: $OUTPUT"; fi
rm -rf "$CORRUPT_DIR"

echo ""

# ========================================
echo "sprint-diff"
echo "-----------"

run_test "reports NO_DIFF with only one version"
OUTPUT=$("$BIN_DIR/sprint-diff" "$TMPDIR" 2>&1)
if echo "$OUTPUT" | grep -q "NO_DIFF"; then pass; else fail "Expected NO_DIFF: $OUTPUT"; fi

run_test "detects changes between two versions"
# Create a second version that's genuinely different
cp "$TMPDIR/sprint-output.md" "$TMPDIR/sprint-output-20260101-000000.md"
# Create a modified current version from scratch
DIFF_DIR=$(mktemp -d)
"$BIN_DIR/sprint-init" "$DIFF_DIR" >/dev/null
"$BIN_DIR/sprint-write" "$DIFF_DIR/sprint-output.md" "1" "## 1. Exploration

**Idea:** COMPLETELY DIFFERENT IDEA" >/dev/null 2>&1
# Copy the old version into diff_dir and diff there
cp "$TMPDIR/sprint-output-20260101-000000.md" "$DIFF_DIR/sprint-output-old.md"
# Rename so sprint-diff finds two files
mv "$DIFF_DIR/sprint-output-old.md" "$DIFF_DIR/sprint-output-20260101-000000.md"
OUTPUT=$("$BIN_DIR/sprint-diff" "$DIFF_DIR" 2>&1)
if echo "$OUTPUT" | grep -q "CHANGED\|ADDED\|REMOVED\|SUMMARY"; then pass; else fail "Expected changes: $OUTPUT"; fi
rm -rf "$DIFF_DIR"

run_test "fails on non-existent directory"
if "$BIN_DIR/sprint-diff" "/tmp/nonexistent-dir-xyz" 2>/dev/null; then
  fail "Should have failed"
else
  pass
fi

echo ""

# ========================================
echo "sprint-graveyard"
echo "----------------"

GRAVE_DIR=$(mktemp -d)
"$BIN_DIR/sprint-init" "$GRAVE_DIR" >/dev/null
"$BIN_DIR/sprint-write" "$GRAVE_DIR/sprint-output.md" "1" "## 1. Exploration

**Idea:** Graveyard test idea" >/dev/null 2>&1

run_test "creates graveyard entry"
OUTPUT=$("$BIN_DIR/sprint-graveyard" "$GRAVE_DIR/sprint-output.md" "Lost interest" 2>&1)
if echo "$OUTPUT" | grep -q "BURIED"; then pass; else fail "Not buried: $OUTPUT"; fi

run_test "graveyard directory exists"
if [ -d "$GRAVE_DIR/.sprint-graveyard" ]; then pass; else fail "No graveyard dir"; fi

run_test "graveyard entry contains reason"
GRAVE_FILE=$(find "$GRAVE_DIR/.sprint-graveyard" -name '*.md' -type f | head -1)
if [ -n "$GRAVE_FILE" ] && grep -q "Lost interest" "$GRAVE_FILE"; then pass; else fail "Reason not in graveyard entry"; fi

run_test "graveyard entry contains original sprint content"
if [ -n "$GRAVE_FILE" ] && grep -q "Graveyard test idea" "$GRAVE_FILE"; then pass; else fail "Sprint content not preserved"; fi

run_test "fails on missing sprint file"
if "$BIN_DIR/sprint-graveyard" "$GRAVE_DIR/nonexistent.md" "reason" 2>/dev/null; then
  fail "Should have failed"
else
  pass
fi

rm -rf "$GRAVE_DIR"

echo ""

# ========================================
echo "sprint-init (error handling)"
echo "----------------------------"

run_test "warns on low disk space (smoke test)"
# This just verifies the check runs without crashing — we can't easily simulate low disk
OUTPUT=$("$BIN_DIR/sprint-init" "$(mktemp -d)" 2>&1)
if echo "$OUTPUT" | grep -q "CREATED\|WARNING"; then pass; else fail "Unexpected output: $OUTPUT"; fi

echo ""

# ========================================
echo "Results"
echo "======="
echo -e "Total: $TOTAL  ${GREEN}Pass: $PASS${NC}  ${RED}Fail: $FAIL${NC}"
echo ""

if [ "$FAIL" -gt 0 ]; then
  exit 1
fi
