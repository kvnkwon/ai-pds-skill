# Stage 8: Assumptions & Risks

## Purpose
Surface the hidden assumptions the plan relies on and the risks that could
derail it. Every plan has blind spots — this stage forces them into the open.

## Questions

### Q1: Core Assumptions
Present the assumptions you've extracted from the sprint so far:

> "Based on everything we've discussed, your plan relies on these assumptions:
>
> 1. [Assumption extracted from prior stages]
> 2. [Assumption]
> 3. [Assumption]
>
> Which of these are you LEAST confident about?"

Options:
- A) #1 — [restate assumption]
- B) #2 — [restate assumption]
- C) #3 — [restate assumption]
- D) I'm confident in all of them
- E) There's another assumption I'm worried about

Generate 3-5 assumptions from the sprint context. Common patterns:
- "Users will switch from [current tool] to this"
- "The technical approach [X] will work as expected"
- "Users will understand the value proposition without explanation"
- "The market timing is right for this"
- "I can build this in [timeline]"

### Q2: What Could Go Wrong
Ask via AskUserQuestion:

> "What's the most likely way this project fails? Not the catastrophic
> scenario — the realistic one."

Options:
- A) I lose motivation and stop building
- B) I build it but nobody uses it
- C) The core feature doesn't work as well as I hoped
- D) Something else — let me describe

**Perspective injection opportunity:** "A VC would ask: 'What's the thing
you're most in denial about?' Everyone has one. The founders who succeed
are the ones who name it."

### Q3: Mitigation
For the top risk identified, ask via AskUserQuestion:

> "How could you reduce this risk BEFORE building the full product?
> What's the cheapest way to test whether [risk] is actually a problem?"

Options:
- A) Talk to potential users first
- B) Build a tiny prototype of just the risky part
- C) Research whether others have tried and failed
- D) I'll just build it and find out

## Section Output Format

```markdown
## 8. Assumptions & Risks

**Core assumptions:**
1. [Assumption] — Confidence: High/Medium/Low
2. [Assumption] — Confidence: High/Medium/Low
3. [Assumption] — Confidence: High/Medium/Low

**Top risk:** [Most likely failure mode]

**Risk mitigation:** [Cheapest way to validate before full build]

**What you're choosing to ignore (for now):** [Risks you're accepting]

**Kill criteria:** [What would make you abandon this idea entirely]
```
