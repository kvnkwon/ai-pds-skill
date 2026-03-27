# Stage 9: App Structure Map

## Purpose
This is the culmination of the sprint. Everything we've figured out — features,
flows, edge cases, onboarding, settings, notifications — assembled into a real app.
The user sees their complete product for the first time. This should feel like a
"wow, look at everything we built" moment.

## Emotional Arc
Awe, culmination. "Look at everything we figured out..." This is the payoff.
The user should feel confident that the sprint produced a complete vision.

## Sprint Persona
"As a skeptical investor, I'd want to know..." — look for gaps, missing screens,
incomplete flows. If the map has holes, an investor would see them.

## Conversation Flow

### Step 1: Determine product type
From Stage 4 (product form), identify the structure template:
- **Mobile app:** Bottom nav + tabs + screens + sub-screens
- **Web app:** Pages + sections + components + user flows
- **SaaS/dashboard:** Navigation + workspace areas + settings + data flows
- **CLI/API:** Commands + subcommands + flags + output formats

### Step 2: Build the full structure
Generate a comprehensive app structure from ALL sprint content:
- Every feature from Stage 6
- Onboarding flow (implied by new users)
- Settings/preferences (implied by customization)
- Error states and empty states
- Edge cases surfaced in any stage
- Navigation and information architecture

Use the PRODUCT'S actual language, not generic labels. "Walk Log" not "Dashboard."
"My Dogs" not "Profile."

Choose the template that matches the product type:

**Mobile App Template:**
```
[App Name]
├── [Tab 1: primary action]
│   ├── [Main screen]
│   │   ├── [Component]
│   │   └── [Component]
│   └── [Detail screen]
├── [Tab 2: secondary action]
│   ├── [List/feed screen]
│   └── [Detail screen]
├── [Tab 3: data/history]
│   └── [Screen with filters]
├── [Tab 4: social/community] (if applicable)
│   └── ...
├── Onboarding
│   ├── Welcome / value prop
│   ├── Key setup step
│   └── First action prompt
├── Settings
│   ├── Account
│   ├── Preferences
│   └── Notifications
└── Notifications
    ├── [Trigger 1]
    └── [Trigger 2]
```

**Web App Template:**
```
[App Name]
├── Landing / Marketing
│   ├── Hero + CTA
│   ├── Features
│   └── Pricing (if applicable)
├── Auth
│   ├── Sign up
│   ├── Log in
│   └── Password reset
├── [Main workspace]
│   ├── [Primary view]
│   ├── [Secondary view]
│   └── [Action panels]
├── [Content area]
│   ├── [List/grid]
│   └── [Detail page]
├── Settings
│   ├── Profile
│   ├── Preferences
│   └── Billing (if applicable)
└── [Footer / Help]
```

**SaaS/Dashboard Template:**
```
[App Name]
├── Sidebar Nav
│   ├── [Primary workspace]
│   ├── [Data view 1]
│   ├── [Data view 2]
│   ├── [Reports/analytics]
│   └── Settings
├── [Primary workspace]
│   ├── [Toolbar/actions]
│   ├── [Main content area]
│   └── [Detail panel/drawer]
├── [Data views]
│   ├── [Table/list with filters]
│   ├── [Detail view]
│   └── [Bulk actions]
└── Settings
    ├── Team / permissions
    ├── Integrations
    └── Billing
```

**CLI/API Template:**
```
[tool-name]
├── [primary-command]
│   ├── --flag1 [description]
│   ├── --flag2 [description]
│   └── [subcommand]
├── [secondary-command]
│   ├── --flag [description]
│   └── [subcommand]
├── [config-command]
│   ├── set
│   ├── get
│   └── list
├── Output formats
│   ├── Table (default)
│   ├── JSON
│   └── Quiet
└── Error handling
    ├── [Common error → message]
    └── [Edge case → message]
```

Adapt the template to the specific product — these are starting points, not rigid structures.

### Step 3: Walk through flows
For each major user flow, trace the path:
> "When a new user opens the app, they see [X]. They tap [Y], which takes them to [Z]..."

Cover:
- First-time user experience
- Core daily use flow (the magic moment path)
- Key secondary flows
- What happens when things go wrong (errors, empty states)

### Step 4: Confidence check
> "Does this feel complete? Is there anything missing — screens, flows, features
> we discussed that aren't here?"

Iterate until the user feels confident the map represents their full vision.

## Section Output Format

```markdown
## 9. App Structure Map

**Product type:** [Mobile app / Web app / SaaS / CLI]

### Full Structure
[ASCII art tree — comprehensive, using product's actual language]

### User Flows

**Flow 1: First-time user**
[Step-by-step path through the app]

**Flow 2: Core daily use (magic moment)**
[Step-by-step path]

**Flow 3: [Secondary flow]**
[Step-by-step path]

### Edge Cases & Empty States
- [Screen] when [condition]: [what the user sees]
- [Screen] when [error]: [what happens]

### Discussion Notes
[How the structure evolved, gaps found and filled, user's reactions]
```
