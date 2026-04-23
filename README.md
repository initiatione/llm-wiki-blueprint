# llm-wiki-blueprint

An open-source, review-gated LLM wiki blueprint for Obsidian.

This project provides a **vault template + governance layer + lightweight workflow design** for building a private or team knowledge base where:

- raw material enters an intake lane
- AI generates drafts instead of writing directly to canonical knowledge
- review happens before promotion
- low-signal notes can be isolated instead of polluting the main knowledge base
- the workflow remains compatible with agent-driven execution

It is designed to work well with:

- Obsidian
- agent-based execution workflows
- sidecar execution tools such as chat-capable coding agents
- a clean separation between knowledge content, review state, and execution logic

## What this project is

This repository is a **blueprint**, not a monolithic application.

It contains:

- a recommended vault structure
- templates for notes and drafts
- governance and lifecycle documents
- review-state conventions
- dashboard notes
- bilingual documentation
- sample plugin-compatible Obsidian configuration

## Ecosystem Model

This blueprint assumes a three-part ecosystem:

1. **Base workflow repo**
   A separate workflow/skills repository that acts as the operational base.

2. **Private live vault**
   Your actual Obsidian vault where knowledge, drafts, review state, and canonical notes live.

3. **Enhancement layer**
   An optional sidecar layer for extra wrappers, review-flow logic, or UI experiments that should not pollute the base workflow repo.

This repository focuses on the **vault blueprint layer**.
It documents how the vault should be structured and governed, while remaining compatible with a clean base repo and optional enhancement layer.

## What this project is not

It is not:

- a replacement for your preferred execution agent
- a hard dependency on one vendor
- a graph database
- an auto-publish knowledge system

## Core Idea

The main workflow is:

```text
_raw -> _drafts -> _meta/review -> canonical folders
```

This means:

1. New material enters `_raw/`
2. AI produces a candidate note in `_drafts/`
3. Review state is tracked in `_meta/review/`
4. Approved notes move into canonical folders such as:
   - `concepts/`
   - `entities/`
   - `skills/`
   - `references/`
   - `synthesis/`
   - `projects/`

## Recommended Canonical Folders

- `concepts/` — stable concept definitions
- `entities/` — tools, people, libraries, orgs, datasets
- `skills/` — repeatable methods and workflows
- `references/` — source-derived summaries and bounded source notes
- `synthesis/` — cross-domain or multi-source synthesis
- `projects/` — project-specific knowledge

## Recommended System Folders

- `_raw/` — intake lane for source material
- `_drafts/` — candidate notes waiting for promotion
- `_review/` — optional lightweight review-facing notes
- `_quarantine/` — isolated low-signal or uncertain notes
- `_archives/` — archived or retired material
- `_meta/` — taxonomy, architecture, governance, dashboards, review state

## Included Documentation

### English

- `WIKI.md` — operating schema
- `AGENTS.md` — generic agent instructions
- `Home.md` — dashboard-style home note
- `_meta/governance/` — lifecycle, routing, review, quarantine, low-risk policy
- `_meta/architecture/` — architecture overview and design decisions

### Chinese

- `README.zh-CN.md`
- `中文导览.md`
- `_meta/guides/当前 llm-wiki 框架说明（中文）.md`
- `_meta/guides/智能体工作说明（中文）.md`
- `_meta/guides/英文文件中文索引.md`

## Suggested Usage

1. Copy this blueprint into a new Obsidian vault or adapt your existing vault to this structure
2. Configure your preferred execution agent or workflow to target the vault
3. Put source material into `_raw/`
4. Generate drafts into `_drafts/`
5. Review and promote selectively

## Why this blueprint exists

Many LLM knowledge systems are either:

- too manual to sustain
- too automatic to trust

This blueprint chooses a middle path:

**AI handles distillation and maintenance work; the user keeps final judgment over publication.**

## Plugin Compatibility

This blueprint is designed to remain compatible with a typical Obsidian plugin stack such as:

- Dataview
- Templater
- Linter
- Git
- BRAT
- optional execution-side plugins such as chat-capable agent panels

### Why these plugins matter

- **Dataview**: dashboard and queue visibility
- **Templater**: consistent note creation
- **Linter**: formatting and metadata hygiene
- **Git**: version safety
- **BRAT**: testing or distributing community plugins around the workflow

This repository does not require these plugins to be present, but it is designed to work well with them.

Optional UI/control plugins can be layered on top later.

## Publishing and Forking

This repository is meant to be forked, adapted, and extended.

If you adopt it:

- keep your private notes out of the public repo
- keep runtime secrets out of the vault
- treat this repository as a framework and template, not as your private live data store

## License

MIT

See `LICENSE`.

## Additional Project Docs

- `README.zh-CN.md`
- `QUICKSTART.md`
- `USAGE.md`
- `ECOSYSTEM.md`
- `REFERENCE_PROJECTS.md`
- `DEPLOYMENT.md`
- `DEPLOYMENT.zh-CN.md`
- `CONTRIBUTING.md`
- `CHANGELOG.md`
- `SECURITY.md`

## Starter Kit Additions

This repository also includes:

- `examples/wiki_ext/` — a public outer enhancement-layer example
- `docs/reference-projects/` — room for longer-form notes on adjacent projects and patterns
