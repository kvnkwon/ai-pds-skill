# Challenge Mode — Adversarial Plan Review

## Purpose
After the sprint is complete, flip to adversarial mode. Try to break the plan.
Find fatal flaws, unrealistic assumptions, and blind spots. This is the
"perspective diversity" insight in action — the AI plays devil's advocate.

## Instructions

Read the full sprint-output.md. For each section, find the weakest point.
Then present the challenge as a structured adversarial review.

## The Challenge

### Step 1: Attack the Problem Statement
Ask via AskUserQuestion:

> "Let me challenge your plan. Starting with your problem statement:
> '[quote their problem statement]'
>
> Here's what worries me: [specific concern — e.g., 'this problem might
> not be painful enough for people to switch from their current workaround']
>
> How would you respond to that?"

Options:
- A) You're right — let me rethink this part
- B) I've considered that — here's why it still holds: [explain]
- C) That's a risk I'm accepting — move on

### Step 2: Attack the User Definition
Challenge the target user:

> "Your target user is '[quote their user definition].' But here's the thing:
> [specific challenge — e.g., 'this user might not be willing to pay for
> this because they're already used to the manual workaround']
>
> What evidence do you have that this person would actually switch?"

Same options as above.

### Step 3: Attack the Features
Challenge the feature set:

> "Your features include [list their features]. I think [specific feature]
> is actually not necessary for the magic moment. Here's why: [reasoning].
>
> And I think you're MISSING [something they didn't include] — without it,
> users might [specific failure mode].
>
> What do you think?"

Same options.

### Step 4: Attack the Riskiest Assumption
From Stage 7 (Assumptions & Risks), pick their lowest-confidence assumption:

> "You rated '[assumption]' as your lowest-confidence assumption. Let me
> make it worse: [amplify the risk with a concrete scenario].
>
> If this assumption is wrong, your entire [specific part of plan] falls
> apart. What's your fallback?"

Same options.

### Step 5: The Verdict

After all challenges, summarize:

> **Challenge Mode Results:**
>
> - Problem Statement: [SOLID / NEEDS WORK / FATAL FLAW]
> - Target User: [SOLID / NEEDS WORK / FATAL FLAW]
> - Features: [SOLID / NEEDS WORK / FATAL FLAW]
> - Key Assumption: [SOLID / NEEDS WORK / FATAL FLAW]
>
> **Overall:** [Your plan survived the challenge / Your plan has gaps to address]
>
> [If gaps]: "Want to go back and revise the weak sections?"

If the user wants to revise, re-run the relevant stage(s) and update
sprint-output.md with the revised sections.

## Important
- Be genuinely challenging, not performatively harsh
- Attack the STRONGEST version of their argument, not a strawman
- If the plan is actually solid, say so — don't manufacture problems
- Each challenge should be specific and concrete, not generic
