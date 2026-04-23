# llm-wiki-blueprint

[English](./README.md) | [简体中文](./README.zh-CN.md)

Review-gated LLM wiki starter kit for Obsidian.

Build a private or team knowledge base where:

- new material enters a raw intake lane
- AI generates drafts instead of writing directly into canonical knowledge
- review happens before promotion
- low-signal content can be isolated instead of polluting the main wiki
- the system stays compatible with agent-driven execution

## Why this exists

Most LLM knowledge workflows fail in one of two ways:

- they are too manual to sustain
- they are too automatic to trust

This project chooses a middle path:

**AI handles distillation and maintenance work; the user keeps final judgment over publication.**

## What you get

- a recommended Obsidian vault structure
- note templates for raw, draft, canonical, and review-oriented flows
- governance docs for routing, review, lifecycle, and quarantine
- sample Obsidian configuration
- bilingual docs
- starter examples for an outer enhancement layer
- sample content showing the workflow from raw note to reviewed canonical note

## Core workflow

```text
_raw -> _drafts -> _meta/review -> canonical folders
```

Canonical folders:

- `concepts/`
- `entities/`
- `skills/`
- `references/`
- `synthesis/`
- `projects/`

## Quick start

### Option A: Manual

1. Create a new private vault folder
2. Copy this blueprint structure into it
3. Open the vault in Obsidian
4. Point your preferred execution agent at the vault
5. Start by placing new material into `_raw/`

### Option B: Agent-guided

Use an execution agent such as Claude Code, Codex, or another file-capable coding agent to deploy the blueprint into a new vault.

Start here:

- [Quickstart](./docs/quickstart.md)
- [Deployment](./docs/deployment.md)

## Start here

- [Home](./Home.md)
- [Documentation Index](./docs/README.md)
- [Quickstart](./docs/quickstart.md)
- [Usage](./docs/usage.md)
- [Architecture Diagrams](./docs/architecture-diagrams.md)
- [Chinese Guide](./docs/chinese-guide.md)

## Ecosystem

This project assumes a three-part ecosystem:

1. **Base workflow repo**
   A separate workflow/skills repository that acts as the operational base

2. **Private live vault**
   Your actual Obsidian vault where raw material, drafts, review state, and canonical knowledge live

3. **Enhancement layer**
   An optional sidecar layer for wrappers, review-flow logic, UI experiments, or management plugins

This repository focuses on the **vault blueprint layer**.

Read more:

- [Ecosystem](./docs/ecosystem.md)
- [Reference Projects](./docs/reference-projects.md)

## Recommended plugin stack

This starter kit is designed to work well with:

- Dataview
- Templater
- Linter
- Git
- BRAT

Optional execution-side plugins or agent panels may be layered on top later.

## Included docs

Core docs:

- [Documentation Index](./docs/README.md)
- [Quickstart](./docs/quickstart.md)
- [Usage](./docs/usage.md)
- [Deployment](./docs/deployment.md)
- [Architecture Diagrams](./docs/architecture-diagrams.md)
- [Chinese Guide](./docs/chinese-guide.md)

Project standards:

- [Contributing](./CONTRIBUTING.md)
- [Changelog](./CHANGELOG.md)
- [Security](./SECURITY.md)
- [License](./LICENSE)

## Examples and starter assets

- [examples/wiki_ext](./examples/wiki_ext)
- [examples/sample-content](./examples/sample-content)
- [scripts/bootstrap-sample-vault.ps1](./scripts/bootstrap-sample-vault.ps1)
- [scripts/bootstrap-sample-vault.sh](./scripts/bootstrap-sample-vault.sh)

## What this project is not

It is not:

- a replacement for your preferred execution agent
- a hard dependency on one vendor
- a graph database
- an auto-publish knowledge system
- a public live knowledge vault

## Adoption rule

Treat this repository as:

- a framework
- a starter kit
- a template layer

Do **not** treat it as your private live knowledge store.

