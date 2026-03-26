# Stage 9: Build Handoff

## Purpose
Finalize the sprint and prepare for implementation. This stage synthesizes
everything into an actionable build plan and generates the export files.

## Questions

### Q1: First Session Plan
Ask via AskUserQuestion:

> "When you sit down to build this, what's the very first thing you'll do
> in your first coding session?"

Options:
- A) Set up the project and scaffold the basic structure
- B) Build the core feature first — get the magic moment working
- C) Start with the data model / backend
- D) I'm not sure — help me plan my first session

**If D:** Based on the Critical Path (Stage 6), suggest a concrete first
session plan: "Based on your build order, I'd start with [X]. In your first
session, aim to have [concrete milestone] working."

### Q2: What Claude Code Needs to Know
Ask via AskUserQuestion:

> "Is there anything Claude Code should know that we haven't covered?
> Specific libraries, design preferences, constraints, or things to avoid?"

Options:
- A) Yes — let me add some context
- B) No — everything important is captured
- C) I want to specify my design preferences (colors, style, etc.)

### Q3: Confidence Check
Ask via AskUserQuestion:

> "On a scale of 1-10, how confident do you feel about building this now
> compared to when we started?"

Options:
- A) 8-10 — I know exactly what to build and I'm excited
- B) 5-7 — I'm clearer but still have some uncertainty
- C) 1-4 — I'm still not sure about the direction

**If C:** "That's important to acknowledge. What's the biggest remaining
uncertainty? Let's talk through it." Address the concern, then re-ask.

## Section Output Format

```markdown
## 9. Build Handoff

**First coding session plan:**
1. [First task]
2. [Second task]
3. [Goal for end of first session]

**Additional context for Claude Code:**
[Any preferences, constraints, or notes not captured elsewhere]

**Builder confidence:** [1-10] — [brief explanation]

**Next action:** [The one thing to do RIGHT NOW after this sprint]
```
