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

## Research Phase (if RESEARCH_ENABLED)

After the user has picked their build order and tech direction, run LIGHTWEIGHT
research focused on build path risks — not tech deep-dives. This stage is about
the user's journey, not framework documentation.

1. Run these WebSearch queries:
   - "[chosen approach] common mistakes"
   - "[product type] launch pitfalls"
2. Focus on BUILD PATH risks: sequencing mistakes, scope creep patterns, things
   that derail weekend/week-long builds
3. Present as brief advisory:
   - "Heads up: common pitfalls when building [this type of product]..."
   - Keep it concise — a few bullet points, not a research report
4. If the user mentioned a specific tech stack, run one quick search:
   - "[stack] gotchas"
   - But this is secondary — do not let tech research dominate this stage

Remember: the goal is to help the user avoid common build-path mistakes, not
to provide a technical tutorial. The user's journey and sequencing decisions
are what matter here.

## Fallback (if RESEARCH_ENABLED is false)

Skip the research phase and proceed directly to the section output using only
what the user has shared. The focus remains on the user's build plan and
sequencing decisions.

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
