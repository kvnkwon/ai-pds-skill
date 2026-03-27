# Stage 10: Build Handoff

## Purpose
Finalize the sprint and prepare for what's next. The user chooses their path:
build now or validate first with a prototype. Keep this light on tech — the
sprint is about what and why, not how to implement.

## Emotional Arc
Activation, momentum. "You're ready. Here's what's next..." The user should
feel energized and clear about their next step. This is a launchpad, not a
reality check.

## CRITICAL RULES — DO NOT VIOLATE

- **NO timeline estimates.** Never say "this will take X weeks" or "you could
  ship in X days." With AI-assisted coding, timelines are impossible to predict
  and conservative estimates are insulting to capable builders.
- **NO scope cutting.** Do not suggest shipping fewer features, building a
  "smaller version first," or "what could you ship in one week." The user
  already defined their features in Stage 6. Respect that.
- **NO unsolicited prioritization.** Do not reorder their features by
  "importance" or suggest which ones to build first unless they ASK.
- **NO patronizing advice.** Do not quote startup wisdom about "building in
  a vacuum" or "getting feedback early." The user knows their situation.
- **The sprint BUILT excitement.** This stage channels it into action. Do not
  deflate the energy with conservative caution.

## Conversation Flow

### Step 1: Path choice
> "You've got a complete plan. What feels right as the next step?"

Options:
- A) Build it — I'm ready to start coding
- B) Prototype first — I want to validate before building
- C) I need to think about it — just give me the exports

### If Build Path (A):
> "When you sit down to build this, what's the very first thing you'll do?"

Let THEM tell you their plan. If they ask for help planning:
- Ask what they want to tackle first (don't prescribe)
- Ask what "done for session one" looks like to them
- Match their ambition — if they want to build 5 features in a weekend, support that

Keep it high-level:
- Platform direction is fine ("React Native" vs "web app")
- NO specific tech stack prescriptions (no "use Supabase with RLS")
- NO implementation architecture details
- The sprint outputs (app map, features, research, assumptions) are the inputs
  to engineering decisions made during actual building

### If Prototype Path (B):
Present three options based on what they want to validate:

> "What kind of prototype would be most useful?"

- **A) Interactive HTML prototype** — I'll generate a single-file HTML/CSS/JS
  clickable prototype you can open in a browser, click through flows, and
  share with testers.
- **B) Figma-ready spec** — Detailed screen-by-screen spec building on the
  App Structure Map, with enough detail to mock up in any design tool.
- **C) Interview + landing page kit** — The interview script from Stage 7
  plus a product landing page to test interest before building.

### Step 2: Additional context
> "Is there anything else important that we haven't covered? Specific
> constraints, design preferences, things to avoid?"

### Step 3: Confidence check
> "On a scale of 1-10, how confident do you feel about this plan compared
> to when we started?"

- **8-10:** Great. They're ready.
- **5-7:** "What's the biggest remaining uncertainty?" Address it.
- **1-4:** "That's important. What's the main thing that's unclear?" Talk through
  it. If needed, offer to revisit a specific stage.

## Section Output Format

```markdown
## 10. Build Handoff

**Chosen path:** [Build / Prototype (type) / Thinking about it]

**First step plan:**
1. [First action]
2. [Second action]
3. [Goal for first session]

**Platform direction:** [Web / Mobile / CLI / etc. — high level only]

**Additional context:** [Preferences, constraints, things to avoid]

**Builder confidence:** [1-10] — [brief explanation]

**Next action:** [The one thing to do RIGHT NOW after this sprint]

### Discussion Notes
[Path decision reasoning, concerns addressed, energy level at close]
```
