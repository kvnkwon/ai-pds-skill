# Stage 8: Assumptions & Risks

## Purpose
Review ALL assumptions surfaced during the sprint and validate them. By now,
the Incremental Assumption Tracker should have 25-40 assumptions collected
across Stages 1-7. This stage reviews, validates, and plans around them.

If the accumulated list feels thin (fewer than 20), generate more yourself.
Scan every prior stage's output and the conversation context for implicit
assumptions that weren't flagged. The user should see a COMPREHENSIVE list
here — not a handful.

## Emotional Arc
Honest, rigorous. "Let's be real about..." No sugarcoating, but constructive.

## Conversation Flow

### Step 1: Present accumulated assumptions
Read assumptions from YAML frontmatter and present the full list:

> "Throughout this sprint, we've flagged [N] assumptions. Here they all are:
>
> 1. [Assumption] — confidence: [level], source: [source], found in Stage [N]
> 2. [Assumption] — ...
> ..."

### Step 2: Research validation (if RESEARCH_ENABLED)
For each assumption, search for supporting or contradicting evidence:
- Market data, adoption rates, user behavior studies
- Competitor outcomes, community discussions (Reddit, HN)
- Structure multiple searches per assumption

Present findings:
> **Assumption:** [text]
> Evidence FOR: [findings with sources]
> Evidence AGAINST: [findings with sources]
> **Verdict:** Supported / Mixed / Contradicted / Untested

Update assumption confidence levels based on evidence.

### Step 3: Surface any missed assumptions
> "Are there any assumptions we haven't captured? Anything that's been
> nagging you that we haven't addressed?"

Add any new ones to the list.

### Step 4: Risk identification
> "What's the most likely way this project fails? Not the catastrophic
> scenario — the realistic one."

Options to explore:
- Motivation risk (you stop building)
- Market risk (nobody uses it)
- Technical risk (core feature doesn't work)
- Timing risk (too early or too late)

### Step 5: Mitigation planning
For the top risk:
> "How could you reduce this risk BEFORE building the full product?
> What's the cheapest test?"

### Step 6: User Interview Script
Generate a thorough interview script targeting the riskiest assumptions.

**Script rules:**
- 8-12 questions (more thorough than v1's 5-7)
- ALL open-ended — no yes/no questions
- ALL non-leading — no hints at the "right" answer
- ALL behavioral — ask about what people DO, not what they WOULD do
- Grounded in real past experiences
- Follow Mom Test principles rigorously

Present the script for user review.

## Quote Collection
During research validation, collect any real user quotes found that support
or contradict assumptions. Append to Quote Wall via sprint-write.

## Section Output Format

```markdown
## 8. Assumptions & Risks

**Assumptions (full list):**
1. [Assumption] — Confidence: [H/M/L] | Evidence: [Supported/Mixed/Contradicted/Untested]
   - Key evidence: [one-line summary]
   - Found: Stage [N] | Source: [user-stated/research/inferred]
2. ...

**Top risk:** [Most likely failure mode]

**Risk mitigation:** [Cheapest way to validate before full build]

**What you're accepting (for now):** [Known risks you're moving forward with]

**Kill criteria:** [What would make you abandon this entirely]

### User Interview Script

**Goal:** Validate [riskiest assumptions]
**Duration:** 20-25 minutes
**Who to talk to:** [target user profile]

#### Warm-up (2 min)
1. Tell me about how you currently handle [problem area].

#### Core Questions
**Validating: [Assumption 1]**
2. [Open-ended behavioral question]
3. [Follow-up exploring frequency/severity]

**Validating: [Assumption 2]**
4. [Open-ended question about past attempts]
5. [Follow-up exploring what worked/didn't]

**Validating: [Assumption 3]**
6. [Open-ended question about priorities/willingness]
7. [Follow-up exploring constraints]

[Continue for all risky assumptions — 8-12 questions total]

#### Closing
[N]. Is there anything about [problem area] I should have asked but didn't?

**What to listen for:**
- [Signal supporting assumption 1]
- [Signal contradicting assumption 1]
- [Signal supporting assumption 2]
- [Signal contradicting assumption 2]

### Research Findings
[Evidence gathered for each assumption, with sources]

### Discussion Notes
[How risk assessment evolved, user's gut reactions, mitigation ideas discussed]
```
