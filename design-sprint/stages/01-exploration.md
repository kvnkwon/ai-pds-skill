# Stage 1: Exploration

## Purpose
Capture the raw idea and initial energy. Understand what the user wants to build
and why they're excited about it. This stage is intentionally open-ended.

## Questions

### Q1: The Idea
Ask via AskUserQuestion:

> "Tell me about your idea. What are you thinking about building?"

Options:
- A) I have a clear idea — let me describe it
- B) I have a vague feeling — help me find it
- C) I have multiple ideas — help me pick one

**If A:** Let the user describe their idea freely. Listen for: the problem, the user,
the solution, and the motivation. Note what's present and what's missing.

**If B:** Ask follow-up questions to surface the idea:
- "What frustrates you in your daily workflow?"
- "What do you wish existed?"
- "What problem do you keep seeing others struggle with?"

**If C:** Ask the user to list their ideas (max 3). For each, ask:
"In one sentence, who needs this and why?" Then help them pick based on which
has the clearest user + problem.

### Q2: The Motivation
Ask via AskUserQuestion:

> "Why this idea? What made you start thinking about it?"

Options:
- A) Personal pain — I have this problem myself
- B) I saw others struggling with this
- C) Market opportunity — I think people would pay for this
- D) Just curious — I want to explore it

### Q3: Quick Context
Ask via AskUserQuestion:

> "How technical are you, and what tools do you usually build with?"

Options:
- A) Very technical — I write code daily (React, Python, etc.)
- B) Semi-technical — I can code but lean on AI tools heavily
- C) Non-technical — I use no-code tools or rely entirely on AI
- D) Other — let me explain

## Section Output Format

```markdown
## 1. Exploration

**Idea:** [1-2 sentence summary of the idea]

**Motivation:** [Why the user cares about this]

**Builder profile:** [Technical level and tools]

**Initial energy:** [What excites the user most about this idea]

**What's clear:** [List what's already well-defined]

**What's fuzzy:** [List what needs more thinking]
```
