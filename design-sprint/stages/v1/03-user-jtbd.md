# Stage 3: Target User & Jobs-to-be-Done

## Purpose
Define exactly who the user is and what job they're hiring this product to do.
The JTBD framework forces clarity: "When [situation], I want to [motivation],
so I can [outcome]."

## Research Phase (if RESEARCH_ENABLED)

Before asking questions, research the target user's world:

1. **Take the target user type** from Stage 2 (the "who feels it most" answer).

2. **WebSearch** to find where these users live online:
   - "[user type] community"
   - "[user type] subreddit"
   - "[user type] tools they use"

3. **Find communities** where these users hang out — subreddits, forums,
   Discord servers, Slack groups, niche platforms. Note which communities are
   most active and what topics dominate.

4. **Profile their typical behaviors** from community data:
   - What tools and workflows do they mention most?
   - What do they complain about repeatedly?
   - What do they celebrate or recommend to each other?
   - What language and jargon do they use?

5. **Present findings** to the user:
   > "Your target user hangs out in [communities]. Here's what they talk about
   > most: [top themes]. The tools they mention constantly are [tools]. And
   > their biggest recurring complaints are [pain points]."

Then proceed to the Questions below, reframing with research context
(see Q1 and Q3 notes).

## Fallback (if RESEARCH_ENABLED is false)

Skip the Research Phase entirely and proceed directly to the Questions below
using the standard questionnaire flow.

## Questions

### Q1: The User (skip if clearly defined in Stage 2)
**If research found community data (RESEARCH_ENABLED):** Validate against
findings rather than asking from scratch:

> "Based on what I found, your target user seems to be [description from
> research — their role, the communities they frequent, their daily tools].
> Does this match your picture of them, or are you targeting a different
> segment?"

Options:
- A) That's my user exactly
- B) Close, but my user is more specifically [let me refine]
- C) I'm targeting a different subset — let me describe them
- D) I didn't know about those communities — tell me more

Follow up: "What's their typical day like? When in their day does this problem hit?"

**If no research (RESEARCH_ENABLED is false):** Use the original flow.

Ask via AskUserQuestion:

> "Let's get specific about your user. Which describes them best?"

Options:
- A) A professional doing their job (what role?)
- B) A creator/builder making something (what kind?)
- C) A consumer solving a personal problem (what situation?)
- D) Let me describe them my way

Follow up: "What's their typical day like? When in their day does this problem hit?"

### Q2: The Job-to-be-Done
Ask via AskUserQuestion:

> "Complete this sentence from your user's perspective:
> 'When I'm [situation], I want to [action], so I can [outcome].'"

Options:
- A) Let me fill it in myself
- B) Help me figure it out — ask me questions
- C) I think there are multiple jobs — help me pick the main one

**If B:** Break it down:
- "What situation triggers the need?" (the 'when')
- "What do they want to accomplish?" (the 'want to')
- "What's the real outcome they care about?" (the 'so I can')

### Q3: Alternatives They've Tried
**If research found tool/community data (RESEARCH_ENABLED):** Use it to
challenge or validate:

> "From what I found, people in [community] tend to use [tools/workarounds]
> for this. They say things like [quote or paraphrase about shortcomings].
> Is that the competitive landscape you see, or are there other alternatives
> your user has tried?"

Options:
- A) Yes — those are the main alternatives, and they fall short because [reason]
- B) There are others you missed — let me add to the picture
- C) My users aren't using those — they've mostly given up
- D) I hadn't mapped the alternatives yet — this is helpful

**If no research (RESEARCH_ENABLED is false):** Use the original flow.

Ask via AskUserQuestion:

> "Has your target user tried to solve this before? What happened?"

Options:
- A) Yes — they tried [existing tool] but it fell short because [reason]
- B) Yes — they built a hacky workaround (spreadsheet, manual process)
- C) No — they've given up or accepted the pain
- D) I'm not sure — I haven't talked to anyone about this

**Perspective injection opportunity:** If the user says D (or equivalent), gently push:
"That's honest, and it's the most common answer. But the gap between 'I think
people want this' and 'I know Sarah wants this' is enormous. Even one
conversation with a real user changes everything."

## Section Output Format

```markdown
## 3. Target User & JTBD

**Target user:** [Specific description — role, context, day-to-day]

**Communities:** [If RESEARCH_ENABLED: where they hang out online and what they discuss]

**Jobs-to-be-done:**
When [situation], I want to [motivation], so I can [outcome].

**Current alternatives:** [What they use/do today and why it falls short]

**Switching trigger:** [What would make them try something new]
```
