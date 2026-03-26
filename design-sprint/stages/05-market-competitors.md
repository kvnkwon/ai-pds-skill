# Stage 5: Market & Competitors

## Purpose
Understand the landscape before scoping your MVP. Who else is solving this
problem (or adjacent problems)? Why is NOW the right time? This prevents
building something that already exists — or missing an opportunity to
differentiate.

When RESEARCH_ENABLED is true, this stage does real competitive research
before asking questions — making it dramatically more useful. The assistant
brings data to the conversation instead of relying entirely on the user's
awareness of the market.

## Research Phase (if RESEARCH_ENABLED)

Before asking any questions, conduct automated competitive research using
the user's idea (from Stage 1) and problem statement (from Stage 2).

### Step 1: Extract Search Keywords
From the user's prior answers, extract 3-5 search keywords that capture:
- The problem space (e.g., "time tracking for freelancers")
- The solution category (e.g., "invoice automation tool")
- The target user (e.g., "solo developers", "small business owners")

### Step 2: Run Web Searches
Execute the following searches using WebSearch:
1. `"[problem space] tools"` — find direct competitors
2. `"[problem space] alternatives"` — find comparison pages and listicles
3. `"[problem space] reviews reddit"` — find real user sentiment and complaints
4. `"best [solution category] [current year]"` — find recent roundups
5. `"[competitor name] pricing"` — for each top competitor found (up to 5)

### Step 3: Extract Competitive Intelligence
From search results, gather for each competitor found:
- **Name and URL**
- **What they do** (one-line description)
- **Pricing model** (free, freemium, paid, enterprise)
- **Key features** (top 3-5)
- **User sentiment** (what people praise, what they complain about)
- **Target user** (who it's built for)

### Step 4: Synthesize Competitive Landscape
Build a competitive matrix and present it to the user:

> "Before we dive in, I did some research on your space. Here's what I found:"

Present the competitive matrix table:

| Competitor | What They Do | Pricing | Strengths | Weaknesses / Gaps |
|------------|-------------|---------|-----------|-------------------|
| [Name]     | [Description] | [Model] | [What users like] | [Complaints / missing features] |
| ...        | ...         | ...     | ...       | ...               |

Then add a brief landscape summary (2-3 sentences):
- How crowded is this space?
- Is the market growing, mature, or declining?
- Where are the obvious gaps based on user complaints?

## Questions

### Q1: The Landscape (HYBRID — research-informed)

**If RESEARCH_ENABLED:** Ask via AskUserQuestion:

> "I found these competitors in your space: [list top 3-5 with one-line
> descriptions]. Are there any I missed that you already know about —
> including scrappy tools, open source projects, or manual workarounds
> people use?"

Options:
- A) Your list looks complete — that covers it
- B) You missed a few — let me add them
- C) Some of those aren't really competitors — let me clarify
- D) I actually didn't know about some of these — this is helpful

**If B or C:** Update the competitive matrix with the user's corrections
and additions. For any new competitors added, run a quick WebSearch to
fill in pricing and feature details.

### Q2: Why They Fall Short
For each competitor or alternative identified (from research + user input),
ask via AskUserQuestion:

> "Looking at [specific competitor], they [brief description of what they do].
> What's the core reason they don't fully solve the problem for your user?"

Options:
- A) Too expensive for the target user
- B) Too complex / bloated — does way more than needed
- C) Missing the specific feature I'm focused on
- D) Bad UX / painful to use
- E) Not designed for my target user
- F) Actually, they're pretty good — my angle is different

**Perspective injection opportunity:** "A PM would say: if the incumbent
has 10,000 users and a $50M budget, you can't beat them by being 10% better.
You have to be different — solve a different slice, serve a different user,
or approach it from an angle they can't copy easily."

**If RESEARCH_ENABLED:** Reference specific user complaints found during
research: "I noticed people on Reddit complaining about [specific issue]
with [competitor]. Does that align with what you're seeing?"

### Q3: Why Now
Ask via AskUserQuestion:

> "Why is NOW the right time to build this? What changed recently that
> makes this possible or necessary?"

Options:
- A) New technology makes it possible (AI, APIs, platforms)
- B) The market shifted (remote work, regulation, behavior change)
- C) Incumbents are asleep — they haven't adapted
- D) It's always been needed — I'm just the one building it now
- E) Not sure — help me think about this

**If D or E:** This is worth pushing on. "The best products ride a wave.
What's the wave here? If there's no 'why now,' you're swimming upstream —
which is fine for a side project, but worth knowing."

### Q4: Your Unfair Advantage
Ask via AskUserQuestion:

> "What do you have that competitors don't? This could be domain knowledge,
> a unique insight, access to users, technical skill, or just caring more
> about this specific problem."

Options:
- A) I deeply understand the user because I am one
- B) I have a technical insight they don't
- C) I'm building for a niche they're ignoring
- D) I don't have an unfair advantage — I'm just going to execute well
- E) Let me describe mine

**If D:** "That's honest. For a side project, passion and speed are advantages
enough. For a startup, you'd want something more defensible — but we can
figure that out later."

## Fallback (if RESEARCH_ENABLED is false)

When research is not available, use the original questionnaire-only flow
for Q1 instead of the hybrid approach:

### Q1 Fallback: The Landscape (Manual)
Ask via AskUserQuestion:

> "What else exists in this space? Who's already trying to solve this
> problem — even partially?"

Options:
- A) There are direct competitors — let me name them
- B) There are adjacent tools that partially solve it
- C) I don't think anything like this exists
- D) I haven't looked yet — help me think through it

**If C:** Push back: "Something always exists — even if it's a spreadsheet,
a manual process, or a feature buried inside a bigger product. What are
people using today?" (Connect back to Stage 2's current workaround.)

**If D:** Help them map the landscape:
- "What would someone Google if they had this problem right now?"
- "What tools does your target user already pay for?"
- "Is there an open source project in this space?"

Then continue with Q2, Q3, and Q4 as written above (without
research-specific references).

## Section Output Format

```markdown
## 5. Market & Competitors

**Research method:** [Web research / User-provided / Combined]

**Competitive landscape:**
| Competitor/Alternative | What they do | Pricing | Strengths | Why they fall short |
|------------------------|-------------|---------|-----------|-------------------|
| [Name] | [Description] | [Model] | [What works] | [Gap] |
| [Name] | [Description] | [Model] | [What works] | [Gap] |
| [Manual workaround] | [Description] | — | [Convenience] | [Gap] |

**Key user complaints in this space:** [Top 2-3 pain points found in
reviews and forums — what real users hate about existing solutions]

**Why now:** [What changed that makes this timely]

**Your angle:** [How you're different — not just better]

**Unfair advantage:** [What you have that's hard to copy]

**Market size signal:** [Not a TAM number — a concrete indicator like
"X people searched for this" or "Y subreddit has Z subscribers" or
"I know N people who have this problem"]
```
