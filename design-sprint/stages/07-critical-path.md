# Stage 7: Critical Path

## Purpose
Turn the MVP scope into an ordered build plan. What do you build first,
second, third? What blocks what? This is the stage where the idea becomes
an action plan.

## Questions

### Q1: Build Order
Ask via AskUserQuestion:

> "Looking at your MVP features, what do you build FIRST? Think about
> dependencies — what needs to exist before other things can work?"

Options:
- A) The data model / backend foundation
- B) The core user-facing interaction
- C) The integration with an external service (API, AI, etc.)
- D) Help me figure out the right order

**If D:** Walk through the MVP features and ask for each:
"Does this depend on any other feature being built first?"
Build a dependency chain from the answers.

### Q2: The Riskiest Part
Ask via AskUserQuestion:

> "What's the part you're least confident about? The thing that might
> not work as you imagine it?"

Options:
- A) The technical feasibility of [specific feature]
- B) Whether users will actually want this
- C) Whether I can build it in the timeline
- D) I'm pretty confident about all of it

**If D:** Push gently: "Everyone's confident until they start building.
What's the first thing you'd want to validate — the thing where being wrong
would waste the most time?"

**Perspective injection opportunity:** "A senior engineer would say: build
the riskiest thing first. If it doesn't work, you want to know on day 1,
not day 7."

### Q3: Technical Direction
Ask via AskUserQuestion:

> "Do you have a tech stack in mind, or do you want the AI to decide?"

Options:
- A) I know what I want to use — let me specify
- B) I have preferences but I'm flexible
- C) No preference — let AI decide based on what's best
- D) I'm using no-code / low-code tools

## Section Output Format

```markdown
## 7. Critical Path

**Build order:**
1. [First thing to build] — [why first / what it unblocks]
2. [Second] — [why / dependency]
3. [Third] — [why / dependency]

**Riskiest assumption:** [The thing most likely to not work as expected]

**Risk mitigation:** [How to validate the risky part early]

**Tech stack:** [Chosen stack or "AI decides"]

**First milestone:** [What "day 1 done" looks like]
```
