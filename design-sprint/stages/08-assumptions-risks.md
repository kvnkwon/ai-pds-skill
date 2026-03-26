# Stage 8: Assumptions & Risks

## Purpose
Surface the hidden assumptions the plan relies on and the risks that could
derail it. Every plan has blind spots — this stage forces them into the open.

When research is enabled, this stage goes further: it tests assumptions against
real-world evidence before the user commits to building.

## Research Phase (if RESEARCH_ENABLED)

Before presenting questions, run an evidence-gathering pass on the assumptions
extracted from prior stages.

### Step 1: Extract Assumptions
From the sprint context so far, extract 3-5 core assumptions. Common patterns:
- "Users will switch from [current tool] to this"
- "The technical approach [X] will work as expected"
- "Users will understand the value proposition without explanation"
- "The market timing is right for this"
- "I can build this in [timeline]"
- "There is sufficient demand for [specific capability]"
- "Users currently solve this problem by [workaround]"

### Step 2: Research Each Assumption
For each extracted assumption, run WebSearch queries to find supporting or
contradicting evidence. Search for:

- **Market data:** market size, growth trends, adoption rates relevant to the assumption
- **User behavior studies:** research on how users actually behave in the problem space
- **Competitor outcomes:** what happened when others built on similar assumptions
- **Community discussions:** Reddit, Hacker News, forums where real users discuss the problem

Structure multiple searches per assumption if needed. Example queries:
- Assumption: "Developers will pay for AI code review"
  - Search: "AI code review tool adoption rates 2025 2026"
  - Search: "developer willingness to pay code review tools survey"
  - Search: "AI code review startup success failure"

### Step 3: Present Evidence
For each assumption, present findings as:

> **Assumption:** [assumption text]
>
> Evidence FOR:
> - [finding with source]
> - [finding with source]
>
> Evidence AGAINST:
> - [finding with source]
> - [finding with source]
>
> **Evidence rating:** Supported / Mixed / Contradicted

If a search returns no meaningful results, note: "No strong evidence found —
this assumption is untested and carries higher risk."

## Questions

### Q1: Core Assumptions
Present the assumptions you've extracted from the sprint so far, now enriched
with research evidence (if RESEARCH_ENABLED):

**If RESEARCH_ENABLED:**

> "Based on everything we've discussed, your plan relies on these assumptions.
> I've researched each one — here's what I found:
>
> 1. [Assumption] — Evidence: [Supported/Mixed/Contradicted]
>    Key finding: [one-line summary of strongest evidence]
> 2. [Assumption] — Evidence: [Supported/Mixed/Contradicted]
>    Key finding: [one-line summary]
> 3. [Assumption] — Evidence: [Supported/Mixed/Contradicted]
>    Key finding: [one-line summary]
>
> Which of these are you LEAST confident about, even after seeing the evidence?"

**If RESEARCH_ENABLED is false:**

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

## User Interview Script Generation

After completing Q1-Q3, generate an interview script targeting the user's
riskiest assumptions (those they marked as lowest confidence, or those rated
"Contradicted" or "Mixed" by research).

### Script Generation Rules

1. Select the 2-3 riskiest assumptions to validate
2. For each assumption, generate 2-3 interview questions (5-7 total)
3. Questions MUST be:
   - **Open-ended** — no yes/no questions
   - **Non-leading** — do not hint at the "right" answer
   - **Behavioral** — ask about what people DO, not what they WOULD do
   - **Specific** — ground questions in real past experiences
4. Follow the "Mom Test" principles: questions should be useful even if the
   interviewee is trying to be polite

### Script Template

Generate the script in this format:

```markdown
## User Interview Script: [Project Name]

**Goal:** Validate assumptions around [riskiest assumption themes]
**Duration:** 15-20 minutes
**Who to talk to:** [target user profile based on sprint context]

### Warm-up (2 min)
- Tell me about how you currently handle [problem area].

### Core Questions

**Validating: [Assumption 1]**
1. [Open-ended question about their current behavior]
2. [Follow-up exploring frequency/severity of the problem]

**Validating: [Assumption 2]**
3. [Open-ended question about past attempts to solve this]
4. [Follow-up exploring what worked/didn't]

**Validating: [Assumption 3]**
5. [Open-ended question about their priorities/willingness]
6. [Follow-up exploring constraints]

### Closing (2 min)
7. Is there anything about [problem area] that I should have asked about but didn't?

### What to listen for
- [Signal that would SUPPORT assumption 1]
- [Signal that would CONTRADICT assumption 1]
- [Signal that would SUPPORT assumption 2]
- [Signal that would CONTRADICT assumption 2]
```

### Example Questions by Assumption Type

**For "Users will switch from [current tool]":**
- "Walk me through the last time you used [current tool]. What was that like?"
- "What have you tried when [current tool] falls short?"
- "If you could change one thing about how you handle [task] today, what would it be?"

**For "Users will pay for this":**
- "What tools or services do you currently pay for in this area?"
- "Tell me about the last tool you started paying for. What made it worth it?"
- "When you hit [problem], how much time do you spend dealing with it?"

**For "The market timing is right":**
- "How has your approach to [problem area] changed in the last year?"
- "What's driving those changes?"
- "What would need to be true for you to try a new approach right now?"

### Presenting the Script
Present the generated script via AskUserQuestion:

> "Here's an interview script to validate your assumptions with real users.
> It targets [N] assumptions you're least confident about. Want to include
> it in your sprint output?"

Options:
- A) Yes, include it — I'll use it
- B) Yes, but adjust the questions (let me give feedback)
- C) Skip the interview script

## Fallback (if RESEARCH_ENABLED is false)

When research is not available, run the questionnaire-only flow:

1. Extract 3-5 assumptions from sprint context (same patterns as above)
2. Present Q1 without evidence annotations
3. Run Q2 and Q3 as written
4. Still generate the User Interview Script — this is especially valuable
   when research cannot be done, because real conversations become the
   primary validation method
5. Note in the output: "Research was not available for this sprint. The
   interview script below is your best tool for validating these assumptions."

## Section Output Format

```markdown
## 8. Assumptions & Risks

**Core assumptions:**
1. [Assumption] — Confidence: High/Medium/Low | Evidence: Supported/Mixed/Contradicted/Untested
   - Key evidence: [one-line summary or "No research conducted"]
2. [Assumption] — Confidence: High/Medium/Low | Evidence: Supported/Mixed/Contradicted/Untested
   - Key evidence: [one-line summary or "No research conducted"]
3. [Assumption] — Confidence: High/Medium/Low | Evidence: Supported/Mixed/Contradicted/Untested
   - Key evidence: [one-line summary or "No research conducted"]

**Top risk:** [Most likely failure mode]

**Risk mitigation:** [Cheapest way to validate before full build]

**What you're choosing to ignore (for now):** [Risks you're accepting]

**Kill criteria:** [What would make you abandon this idea entirely]

### User Interview Script

**Goal:** Validate [riskiest assumptions]
**Who to talk to:** [target user profile]

1. [Interview question targeting assumption X]
2. [Interview question targeting assumption X]
3. [Interview question targeting assumption Y]
4. [Interview question targeting assumption Y]
5. [Interview question targeting assumption Z]
6. [Interview question targeting assumption Z]
7. Is there anything about [problem area] I should have asked but didn't?

**What to listen for:**
- [Signals supporting/contradicting each assumption]
```
