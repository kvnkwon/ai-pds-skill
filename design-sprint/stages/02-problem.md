# Stage 2: Problem Statement

## Purpose
Sharpen the raw idea into a clear problem statement. The user should leave this
stage able to say "The problem is X, and it matters because Y."

## Research Phase (if RESEARCH_ENABLED)

Before asking questions, research the problem space:

1. **Extract the problem space** from Stage 1's idea description. Identify the
   core pain point, domain, and the type of person affected.

2. **WebSearch** for real-world pain signals using these queries:
   - "[problem] reddit"
   - "[problem] complaints forum"
   - "[problem] frustrations"

3. **Find 2-3 real threads or posts** where people describe this pain in their
   own words. Prioritize Reddit threads, forum posts, and review complaints
   where users vent honestly.

4. **Present findings** to the user:
   > "I found real people describing this pain. Here's what they say..."

   Surface actual quotes where possible — the raw, unfiltered language people
   use when they're frustrated. Include the source (subreddit, forum name, etc.)
   for credibility.

5. **Transition into the questionnaire:**
   > "Does this match the problem you're solving, or is your angle different?"

Then proceed to the Questions below, but reframe Q1 using the research
(see Q1 note).

## Fallback (if RESEARCH_ENABLED is false)

Skip the Research Phase entirely and proceed directly to the Questions below
using the standard questionnaire flow.

## Questions

### Q1: The Problem
**If research found pain descriptions (RESEARCH_ENABLED):** Confirm rather than
ask from scratch:

> "Based on what real users are saying, the core problem seems to be: [restate
> pain from research + Stage 1 context]. People describe it as [brief quote or
> paraphrase]. Does this capture the problem you're solving, or is your angle
> different?"

Options:
- A) Yes, that's exactly it
- B) Close, but the real problem is more about [let me explain]
- C) Actually, my angle is different — let me describe it
- D) I didn't know people felt this way — tell me more

**If no research (RESEARCH_ENABLED is false):** Use the original flow.

If the user already articulated a clear problem in Stage 1, confirm it:

> "From what you told me, the core problem seems to be: [restate]. Is that right,
> or is there something deeper?"

If not clear, ask via AskUserQuestion:

> "What specific problem does your idea solve? Not the solution — the pain."

Options:
- A) People waste time doing [X] manually
- B) People can't find/access [X] easily
- C) The current tools for [X] are bad
- D) There's no good way to [X]

Follow up with: "Can you give me a concrete example? Walk me through one time
someone experienced this problem."

### Q2: Who Feels It Most
Ask via AskUserQuestion:

> "Who feels this problem the most? Not 'everyone' — the ONE person who'd
> be most relieved if you solved it."

Options:
- A) Me — I deal with this constantly
- B) A specific person I know (describe them)
- C) A type of professional (describe their role)
- D) I'm not sure yet

**Perspective injection opportunity:** If the user says "everyone," push back:
"'Everyone' means you haven't found your person yet. The best products start
with one desperate user, not a million mildly interested ones."

### Q3: What Happens Without It
Ask via AskUserQuestion:

> "If your product never gets built, what do people keep doing instead?"

Options:
- A) They use a bad existing tool and complain about it
- B) They cobble together a manual workaround (spreadsheets, etc.)
- C) They just don't do the thing — it doesn't get done
- D) They hire someone or pay a lot of money for it

## Section Output Format

```markdown
## 2. Problem Statement

**Core problem:** [Clear, specific problem statement]

**Who feels it most:** [Specific person or role]

**Current workaround:** [What people do today without your product]

**Why it matters:** [Consequence of the problem going unsolved]

**Problem severity:** [Annoying / Painful / Critical]

**Research signals:** [If RESEARCH_ENABLED: brief summary of real-world pain signals found, with sources]
```
