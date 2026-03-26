# Stage 4: Solution Direction

## Purpose
Now that the problem and user are clear, explore HOW to solve it. This is where
the user starts thinking about their actual product — but still at the concept
level, not the feature level.

## Research Phase (if RESEARCH_ENABLED)

Before asking the user questions, research what already exists in this space:

1. Take the problem statement and solution direction from prior stages
2. Run these WebSearch queries:
   - "[solution type] existing products"
   - "[problem] open source solutions"
   - "[problem] how I built [solution type]"
3. Find existing products, open source projects, and blog posts about building similar things
4. Search for post-mortems from failed attempts in this space:
   - "[solution type] failed startup post-mortem"
   - "[problem] why [product] shut down"
5. Present findings to the user:
   - "I found these existing approaches: [list]. Here's what worked and what didn't..."
   - Surface both inspiration (products/projects to learn from) and cautionary tales (what failed and why)
6. Use this context to inform the questions below — reference specific examples when relevant

## Fallback (if RESEARCH_ENABLED is false)

Skip the research phase and proceed directly to the questions below using only
what the user has shared so far.

## Questions

### Q1: The Core Insight
Ask via AskUserQuestion:

> "What's your key insight — the thing you believe about this problem that
> most people miss? What makes YOUR approach different?"

Options:
- A) I have a specific insight — let me share it
- B) I'm not sure I have a unique angle yet
- C) My insight is more about execution — I'll just do it better
- D) Help me find my angle

**If C:** Push back gently: "Execution matters, but 'we'll do it better' isn't
a defensible position. What would you do DIFFERENTLY, not just better?"

**If D:** Help surface it:
- "What's something you know about this problem that someone building a
  generic solution would miss?"
- "If you could only solve ONE aspect of this problem perfectly, which would it be?"

### Q2: Solution Shape
Ask via AskUserQuestion:

> "What form does your solution take?"

Options:
- A) Web app (users visit a website)
- B) Mobile app
- C) CLI tool / developer tool
- D) API / service / infrastructure
- E) Browser extension / plugin
- F) Something else — let me describe it

### Q3: The Magic Moment
Ask via AskUserQuestion:

> "Imagine a user tries your product for the first time. What's the moment
> where they think 'oh wow, this is great'? What just happened?"

Options:
- A) They got a result instantly that used to take hours
- B) They saw something they couldn't see before (insight, visualization)
- C) Something complex became simple (one-click instead of 10 steps)
- D) Let me describe the magic moment

**Perspective injection opportunity:** "An engineer would ask: is that magic
moment achievable in v1, or does it require 6 months of features first?
Can you make the first version feel magical?"

## Section Output Format

```markdown
## 4. Solution Direction

**Core insight:** [What makes this approach different/better]

**Product form:** [Web app / mobile / CLI / API / etc.]

**Magic moment:** [The "oh wow" experience for a first-time user]

**Key differentiator:** [Why this beats the current alternatives]

**What this is NOT:** [Explicit anti-goals — what you're not building]
```
