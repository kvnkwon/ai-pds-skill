# Stage 3: Target User & Jobs-to-be-Done

## Purpose
Define exactly who the user is and what job they're hiring this product to do.
The JTBD framework forces clarity: "When [situation], I want to [motivation],
so I can [outcome]." JTBD lives here, not in Stage 2.

## Emotional Arc
Empathy, specificity. "Picture this person..." Make the user concrete and real.

## Conversation Flow

### Step 1: Define the user
Start with what we know from Stages 1-2, then get specific:

> "Based on what we've discussed, who is the person who needs this most?
> Not 'everyone' — the ONE person who'd be devastated if this didn't exist."

Probe for specifics:
- "What's their day like? When does this problem hit?"
- "How technical are they? What tools do they already use?"
- "What's their relationship to [problem domain]?"

### Research Phase (if RESEARCH_ENABLED)
Research the target user's world:
- "[user type] community" / "[user type] subreddit"
- "[user type] tools they use"
- Find where these users hang out — subreddits, forums, Discord, Slack
- Profile their behaviors: tools, complaints, recommendations, jargon

Present findings:
> "Your target user hangs out in [communities]. They talk about [themes].
> The tools they mention are [tools]. Recurring complaints: [pain points]."

Use this to validate/refine the user definition. Collect quotes for Quote Wall.

### Step 2: Jobs-to-be-Done
> "Complete this from your user's perspective:
> 'When I'm [situation], I want to [action], so I can [outcome].'"

If they're stuck, break it down:
- "What situation triggers the need?" (the 'when')
- "What do they want to accomplish?" (the 'want to')
- "What's the real outcome they care about?" (the 'so I can')

If multiple jobs surface, help identify the primary one.

### Step 3: Current alternatives
**If research found data:** Validate against findings:
> "From what I found, people in [community] use [tools/workarounds].
> They say [quote about shortcomings]. Is that what you see?"

**If no research:**
> "Has your target user tried to solve this before? What happened?"

Explore: existing tools, hacky workarounds, or have they given up entirely?

If user hasn't talked to anyone about this, gently push:
"That's honest. The gap between 'I think people want this' and 'I know
Sarah wants this' is enormous. Even one conversation changes everything."

## Assumption Tracking
"Users currently use [tool] for this" and "Users would switch because [reason]"
are both assumptions to flag.

## Section Output Format

```markdown
## 3. Target User & JTBD

**Target user:** [Specific description — role, context, day-to-day]

**Communities:** [Where they hang out online, what they discuss]

**Jobs-to-be-done:**
When [situation], I want to [motivation], so I can [outcome].

**Current alternatives:** [What they use/do today and why it falls short]

**Switching trigger:** [What would make them try something new]

### Research Findings
[Community data, user quotes, tool mentions, behavioral patterns]

### Discussion Notes
[How the user definition evolved, alternatives explored, key insights]
```
