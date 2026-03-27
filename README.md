# AI Product Design Sprint

> The missing layer between "I have an idea" and "I have a build-ready plan."

A Claude Code skill that runs a structured product design sprint — solo. No team needed, no facilitator, no sticky notes. Just you and an AI that acts as your thought partner, simulating PM, designer, engineer, and researcher perspectives through dynamic conversation.

In 30-60 minutes, you go from a raw idea to a complete plan you can build from — or a prototype spec to validate first.

## Why this exists

We're in an era where **building is easy but thinking is the bottleneck.**

You can scaffold an app in minutes with Cursor, Replit, or Claude Code. But most solo builders do this:

1. Have an idea
2. Open ChatGPT / Claude
3. Ask a vague prompt
4. Get generic output
5. Jump into building
6. Realize something is off
7. Restart or abandon

The problem isn't building. It's that nobody helped you figure out **what to build, for whom, and why** — before you started writing code.

Traditional design sprints solve this, but they require a full team, rigid scheduling, and heavy coordination. They're designed for companies, not solo builders.

**This skill gives you the thinking of a design sprint without needing the team.** The key insight: design sprint value is **perspective diversity, not headcount.** AI can simulate PM, designer, engineer, and researcher perspectives better than most real teams — because it has no ego, no politics, and no domain blindness.

## What you get

Run `/sprint` and the AI guides you through 9 progressive stages:

| Stage | What happens | What you produce |
|-------|-------------|-----------------|
| 1. **Understand** | Deep stakeholder briefing — AI probes thin areas, surfaces gaps | Idea summary, domain knowledge, what's clear vs fuzzy |
| 2. **Problems** | Collaborative pain point discovery — AI proposes 5+ pain points alongside yours | Prioritized pain points, problem statement |
| 3. **Target User & JTBD** | Define exactly who needs this and what job they're hiring it for | User profile, jobs-to-be-done, alternatives tried |
| 4. **Ideation** | Diverge-then-converge creative brainstorming — AI generates WOW ideas with you | Chosen direction, magic moment, ideas explored |
| 5. **Market & Competitors** | Research-powered competitive landscape | Competitive matrix, why now, your angle |
| 6. **Features** | Catalog, organize, and discuss ALL features | Full feature catalog organized by theme |
| 7. **Assumptions & Risks** | Review all assumptions tracked throughout sprint | Ranked assumptions with evidence, interview script |
| 8. **App Structure Map** | Full app visualization — the culmination of everything | ASCII app map, user flows, edge cases |
| 9. **Build Handoff** | Choose your path: build or prototype | First step plan, confidence check |

After the sprint, you get:

- **Sprint Retrospective** — shows how your thinking evolved from Stage 1 to Stage 9
- **Challenge Mode** (optional) — adversarial review that tries to break your plan
- **Elevator Pitch** — 30-second pitch generated from your sprint
- **Two export files** ready for Claude Code

## The exports

| File | Purpose |
|------|---------|
| `product-context.md` | Full sprint output with quote wall and elevator pitch — hand this to Claude Code |
| `pitch-summary.md` | 1-page pitch you can share with anyone |

To start building after a sprint:

```
Open a new Claude Code session in the same directory and say:
"Read product-context.md, then start building."
```

## Install — 10 seconds

**Requires:** [Claude Code](https://docs.anthropic.com/en/docs/claude-code)

```bash
git clone https://github.com/kvnkwon/ai-pds-skill.git ~/.claude/skills/design-sprint
```

That's it. Type `/sprint` in any Claude Code session.

### Install to a specific project

```bash
git clone https://github.com/kvnkwon/ai-pds-skill.git .claude/skills/design-sprint
```

## Usage

### Full sprint

```
You:    /sprint
Claude: Welcome to your design sprint. Over the next 30-60 minutes,
        we'll work through 9 stages of structured product thinking.
        Ready? What's your idea?

You:    I want to build a tool that helps people find the best coffee
        shops for remote work.

Claude: [has a real conversation — probes, challenges, contributes ideas]
        [tracks assumptions as they surface throughout]
        [collects real user quotes from research]
        [drafts each section, you confirm or revise]
        [shows your thinking evolution at the end]
        [generates elevator pitch + export files]
```

### Quick sprint

When you just need to validate one aspect of an idea:

```
You:    /sprint
        I just want to pressure-test my target user.

Claude: [enters Quick Sprint mode]
        [runs only the stages you select]
        [produces partial output for those stages]
```

### Challenge mode

After completing a sprint, stress-test your plan:

```
Claude: Want me to stress-test your plan? I'll try to find fatal flaws
        and blind spots.

You:    Yes.

Claude: Let me challenge your problem statement: "[your statement]"
        Here's what worries me: [specific concern]...

        Challenge Mode Results:
        - Problem Statement: SOLID
        - Target User: NEEDS WORK
        - Features: SOLID
        - Key Assumption: NEEDS WORK
```

### Living document

Return to a completed sprint to update it based on what you've learned:

```
Claude: This sprint is complete. Want to update it based on what
        you've learned since then?

You:    Yes, I want to revisit the features.

Claude: [re-runs Stage 6 with existing content as context]
        [updates the sprint file in place]
```

### Sprint diff

Run the sprint again on the same idea to iterate:

```
Claude: You have a completed sprint here. What would you like to do?
        A) Start a fresh sprint on the same idea
        B) Start a sprint on a different idea

You:    A

Claude: [runs a new sprint, then shows what changed]
```

### Idea graveyard

When you kill an idea mid-sprint, save it for later learning:

```
You:    Actually, I don't think this idea works.

Claude: Want to save this to the idea graveyard?

You:    Yes. The market is too crowded.

Claude: Buried. Saved to .sprint-graveyard/ with your reasoning.
```

## Features

### Conversational depth
Every stage is a dynamic conversation, not a checklist. The AI adapts to what you say — a one-paragraph answer and a five-paragraph answer get fundamentally different responses. You control when to move on.

### AI as thought partner
The AI actively contributes ideas, pain points, features, and creative solutions alongside yours. In the Ideation stage, it generates wild ideas from analogous products, emerging tech, and unconventional approaches to create "oh, I hadn't thought of that" moments.

### Sprint personas
At key stages, the AI shifts into specific perspectives:
- *Stage 2:* "As someone who lives this problem every day..."
- *Stage 4:* "As a designer thinking about the experience..."
- *Stage 6:* "As an engineer, building this means..."
- *Stage 8:* "As a skeptical investor, I'd want to know..."

### Incremental assumption tracking
Assumptions are flagged throughout the entire sprint, not just in the risks stage. By Stage 7, you have a comprehensive list to review and validate — nothing gets lost.

### Research-powered intelligence
When enabled, the AI researches your market, competitors, and users in real-time using web search — bringing real data, quotes, and competitive intelligence into the conversation.

### App structure map
The culmination of the sprint: a full ASCII visualization of your entire app — every screen, flow, and edge case assembled from everything discovered across all stages.

### Anti-slop voice
No consultant jargon, no empty validation ("Great point!"), no generic transitions. The AI mirrors your language and stays concrete and specific.

### Session resumption
Quit anytime — your progress is saved after each stage. Run `/sprint` again in the same directory and it picks up where you left off.

### Backward compatibility
v1 sprints in progress when you upgrade to v2 will continue to work. v1 stage files are preserved and loaded automatically based on the sprint version.

## Architecture

```
design-sprint/
├── SKILL.md                     ← v2 orchestrator (~420 lines)
├── stages/
│   ├── 01-understand.md         ← Deep stakeholder briefing
│   ├── 02-problems.md           ← Collaborative pain point discovery
│   ├── 03-user-jtbd.md          ← User definition + JTBD
│   ├── 04-ideation.md           ← Diverge-then-converge brainstorming
│   ├── 05-market-competitors.md ← Research-powered competitive analysis
│   ├── 06-features.md           ← Full feature catalog
│   ├── 07-assumptions-risks.md  ← Assumption review + interview script
│   ├── 08-app-structure.md      ← Full app visualization (NEW in v2)
│   ├── 09-build-handoff.md      ← Build or prototype path
│   ├── challenge-mode.md        ← Adversarial plan review
│   ├── retrospective.md         ← Thinking evolution
│   └── v1/                      ← Preserved v1 stage files
├── bin/
│   ├── sprint-init              ← Initialize sprint with YAML frontmatter
│   ├── sprint-status            ← Read stage completion + version detection
│   ├── sprint-write             ← Append sections + YAML array operations
│   ├── sprint-export            ← Version-aware export generation
│   ├── sprint-diff              ← Compare sprint versions
│   └── sprint-graveyard         ← Archive abandoned sprints
└── test.sh                      ← 53 tests covering all helpers
```

**SKILL.md** handles orchestration — conversational engine, anti-slop directive, sprint personas, assumption tracking, kill checks, progress visualization, and version-aware stage loading.

**Stage files** contain conversation flow, research instructions, emotional arc, persona prompts, and output format for each stage. Each stage output captures the synthesis, research findings, discussion notes, and deprioritized items.

**Bash helpers** handle all file I/O — YAML frontmatter with version detection, multi-line array operations (assumptions, quotes), section appending, version-aware export generation, version diffing, and graveyard archiving. All use `set -euo pipefail` with error handling.

**Sprint output** is a single `sprint-output.md` with YAML frontmatter tracking version, completion state, assumptions, and quotes. Sections are appended incrementally as each stage completes.

## Tests

```bash
cd ~/.claude/skills/design-sprint && ./test.sh
```

53 tests covering:
- Sprint initialization (v2 frontmatter with version, assumptions, quotes)
- Section writing and frontmatter updates
- YAML array operations (append assumption, append quote, special characters)
- Version detection (v1 vs v2)
- Version-aware export generation (v1 gets claude-code-starter.md, v2 does not)
- Backward compatibility (v1 sprints work under v2 code)
- Error handling (invalid stages, relative paths, corrupt YAML, missing files, permissions)
- Sprint diffing and graveyard archiving

## Inspired by

- [Google Design Sprints](https://designsprintkit.withgoogle.com/) — the methodology
- [gstack](https://github.com/garrytan/gstack) — the skill architecture and review pipeline
- The insight that AI makes perspective diversity free — you don't need 5 people in a room, you need 5 perspectives in a conversation

## License

MIT
