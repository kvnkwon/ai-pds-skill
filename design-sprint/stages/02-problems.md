# Stage 2: Problems

## Purpose
Collaboratively discover and prioritize the pain points this product addresses.
This is NOT a questionnaire — you actively propose pain points alongside the user.
Focus on problems and motivations. JTBD belongs in Stage 3.

## Emotional Arc
Tension, urgency. "This matters because..." Make the user feel the weight of the problem.

## Sprint Persona
"As someone who lives this problem every day..." — use this lens when proposing
pain points. Think from the sufferer's perspective.

## Conversation Flow

### Step 1: User's pain points
> "Based on everything you've told me, what are the biggest pain points you see?
> The problems your product would solve?"

Let them list what they see. Don't interrupt.

### Step 2: Collaborative expansion
After they share, actively propose MORE pain points from multiple sources:

- **First principles reasoning:** "If [problem] is true, then [related pain] probably also exists..."
- **Analogous products/industries:** "In [similar space], users also struggle with..."
- **Edge cases research might miss:** "What about the user who [unusual scenario]?"
- **If RESEARCH_ENABLED:** Run WebSearch:
  - "[problem area] user frustrations"
  - "[problem area] reddit complaints"
  - "[target user] biggest challenges with [current solution]"
  - Share real quotes and data points. Collect quotes for the Quote Wall.

Goal: If user lists 2 pain points, you propose 5+ more. Build an extensive list together.

### Step 3: Review and prioritize
> "Here's everything we've surfaced — [N] pain points. Which feel most critical?
> Which ones, if unsolved, would make the product pointless?"

User prioritizes. Keep ALL pain points in the output (prioritized and deprioritized).

### Step 4: Problem statement synthesis
Draft a problem statement that captures the core:
- Who has this problem
- What the problem is
- Why it matters (consequence of not solving it)
- Why now (what changed that makes this solvable/urgent)

Present for user sign-off before advancing.

## Assumption Tracking
Watch for assumptions: "Users currently solve this by [workaround]" — flag as
[ASSUMPTION] and append to YAML.

## Section Output Format

```markdown
## 2. Problems

**Problem statement:** [2-3 sentence synthesis — who, what, why, why now]

**Critical pain points:**
1. [Pain point] — [evidence/source]
2. [Pain point] — [evidence/source]
3. [Pain point] — [evidence/source]

**Additional pain points (captured, not prioritized):**
- [Pain point] — [source: user/research/first-principles]
- [Pain point] — [source]

**What we're NOT solving (explicitly):**
- [Related problem that's out of scope and why]

### Research Findings
[Real quotes, data, sources found — linked to specific pain points above]

### Discussion Notes
[Key back-and-forth, how prioritization was decided, alternatives considered]
```
