# AI Product Design Sprint

> The missing layer between "I have an idea" and "I have a build-ready plan."

A Claude Code skill that runs a structured product design sprint — solo. No team needed, no facilitator, no sticky notes. Just you and an AI that simulates PM, designer, engineer, and researcher perspectives through adaptive questioning.

In 30-50 minutes, you go from a raw idea to three build-ready files you can hand straight to Claude Code.

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
| 1. **Exploration** | Capture your raw idea and energy | Idea summary, motivation, builder profile |
| 2. **Problem Statement** | Sharpen the idea into a real problem | Clear problem, who feels it, current workarounds |
| 3. **Target User & JTBD** | Define exactly who needs this | User profile, jobs-to-be-done, alternatives tried |
| 4. **Solution Direction** | Explore how to solve it | Core insight, product form, magic moment |
| 5. **Market & Competitors** | Understand the landscape | Competitive analysis, why now, your angle |
| 6. **MVP Scope** | Cut ruthlessly to the smallest version | Must-haves, explicit cuts, timeline |
| 7. **Critical Path** | Order the build plan | Build sequence, riskiest assumption, tech stack |
| 8. **Assumptions & Risks** | Surface hidden blind spots | Ranked assumptions, top risk, kill criteria |
| 9. **Build Handoff** | Prep for implementation | First session plan, confidence check |

After the sprint, you get:

- **Sprint Retrospective** — shows how your thinking evolved from Stage 1 to Stage 9
- **Challenge Mode** (optional) — adversarial review that tries to break your plan
- **Three export files** ready for Claude Code

## The exports

| File | Purpose |
|------|---------|
| `product-context.md` | Full sprint output formatted for Claude Code — problem, user, solution, scope, risks, and what NOT to build |
| `claude-code-starter.md` | Implementation-ready prompt with MVP features, build order, tech stack, and first session plan |
| `pitch-summary.md` | 1-page pitch you can share with anyone — problem, solution, MVP |

To start building after a sprint:

```
Open a new Claude Code session in the same directory and say:
"Read product-context.md and claude-code-starter.md, then start building."
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
Claude: Welcome to your design sprint. What's your idea?

You:    I want to build a tool that helps people find the best coffee shops
        for remote work.

Claude: [asks adaptive questions, one at a time]
        [drafts each section, you confirm or revise]
        [challenges your assumptions mid-sprint]
        [shows your thinking evolution at the end]
        [generates 3 export files]

        Your sprint is complete! Three files have been generated:
        - product-context.md
        - claude-code-starter.md
        - pitch-summary.md
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
Claude: Want me to stress-test your plan? Challenge mode will try to
        find fatal flaws and blind spots.

You:    Yes.

Claude: Let me challenge your problem statement: "[your statement]"
        Here's what worries me: [specific concern]...

        Challenge Mode Results:
        - Problem Statement: SOLID
        - Target User: NEEDS WORK
        - MVP Scope: SOLID
        - Key Assumption: NEEDS WORK
```

### Sprint diff

Run the sprint again on the same idea to iterate:

```
Claude: You have a completed sprint here. What would you like to do?
        A) Start a fresh sprint on the same idea (creates a new version)
        B) Start a sprint on a different idea

You:    A

Claude: [runs a new sprint, then shows what changed]
        CHANGED: Stage 2 (Problem Statement)
          Words: 85 → 142
        CHANGED: Stage 5 (MVP Scope)
          Words: 120 → 95
        SUMMARY: 2 section(s) changed between versions.
```

### Idea graveyard

When you kill an idea mid-sprint, save it for later learning:

```
You:    Actually, I don't think this idea works.

Claude: Want to save this to the idea graveyard? It keeps a record of
        what you explored and why you moved on.

You:    Yes. The market is too crowded.

Claude: Buried. Saved to .sprint-graveyard/ with your reasoning.
```

## Features

### Adaptive questioning
The AI doesn't ask a rigid list of questions. It adapts based on what you've already said — if you defined your target user during the Exploration stage, it confirms rather than re-asking in Stage 3.

### Perspective injection
Mid-sprint, the AI occasionally drops uncomfortable questions from different expert perspectives:

- *"An engineer reviewing this would ask: how do you handle [edge case]?"*
- *"If I were your toughest potential customer, I'd push back on [assumption]."*
- *"A designer would say: what does the user see when [error state] happens?"*

These fire naturally when you're in a comfort zone — giving quick, shallow answers.

### Soft stage gating
You can skip any stage, but the AI warns you about the consequences:

> "You can skip this stage, but your MVP scope will be harder to define
> without a clear problem statement. Want to skip anyway?"

### Session resumption
Quit anytime — your progress is saved after each stage. Run `/sprint` again in the same directory and it picks up where you left off.

### Confirm-first artifacts
The AI never saves anything without your approval. After each stage, it drafts the section and asks you to confirm or revise before writing to disk.

## Architecture

```
design-sprint/
├── SKILL.md                ← Orchestration + shared confirm/write protocol
├── stages/
│   ├── 01-exploration.md   ← Stage-specific questions and output format
│   ├── 02-problem.md
│   ├── 03-user-jtbd.md
│   ├── 04-solution.md
│   ├── 05-mvp-scope.md
│   ├── 06-critical-path.md
│   ├── 07-assumptions-risks.md
│   ├── 08-build-handoff.md
│   ├── retrospective.md   ← Post-sprint thinking evolution
│   └── challenge-mode.md  ← Adversarial plan review
├── bin/
│   ├── sprint-init         ← Initialize sprint with YAML frontmatter
│   ├── sprint-status       ← Read stage completion state
│   ├── sprint-write        ← Append section + update frontmatter
│   ├── sprint-export       ← Generate 3 export files
│   ├── sprint-diff         ← Compare sprint versions section-by-section
│   └── sprint-graveyard    ← Archive abandoned sprints
└── test.sh                 ← 37 tests covering all helpers
```

**SKILL.md** handles orchestration — stage sequencing, the shared confirm/write protocol, perspective injection, and soft gating. Each stage file contains only its questions and output format (DRY — no duplicated logic).

**Bash helpers** handle all file I/O — YAML frontmatter management, section appending, export generation, version diffing, and graveyard archiving. All helpers use `set -euo pipefail` with error handling for permissions, corrupt YAML recovery, path validation, and disk space checks.

**Sprint output** is a single `sprint-output.md` file with YAML frontmatter tracking completion state and the absolute project path. Sections are appended incrementally as each stage completes.

## Tests

```bash
cd ~/.claude/skills/design-sprint && ./test.sh
```

37 tests covering:
- Sprint initialization and resumption
- Section writing and frontmatter updates
- Export generation (all 3 formats)
- Error handling (invalid stages, relative paths, corrupt YAML, missing files, permissions)
- YAML frontmatter recovery from corruption
- Sprint diffing between versions
- Idea graveyard archiving

## Inspired by

- [Google Design Sprints](https://designsprintkit.withgoogle.com/) — the methodology
- [gstack](https://github.com/garrytan/gstack) — the skill architecture and review pipeline
- The insight that AI makes perspective diversity free — you don't need 5 people in a room, you need 5 perspectives in a conversation

## License

MIT
