# Quickstart

This is the fastest way to understand and use this repository.

## What you need

- Obsidian
- a folder to act as your real private vault
- one execution agent or workflow tool you trust
- optional recommended plugins:
  - Dataview
  - Templater
  - Linter
  - Git
  - BRAT

## Fastest setup

### Option A: Manual

1. Create a new vault folder
2. Copy this repository's vault structure into it
3. Open the vault in Obsidian
4. Point your preferred execution agent at the vault
5. Start using:
   - `_raw/` for intake
   - `_drafts/` for candidate notes
   - `_meta/review/` for review state
   - canonical folders for approved notes

### Option B: Agent-guided

Use the deployment prompt from `DEPLOYMENT.md` or `DEPLOYMENT.zh-CN.md`.

## First workflow to try

1. Put one source note in `_raw/`
2. Ask your execution agent to generate one draft
3. Review it
4. Promote only if it belongs in canonical folders

## Read next

- `README.md`
- `README.zh-CN.md`
- `DEPLOYMENT.md`
- `USAGE.md`
- `ECOSYSTEM.md`
- `examples/sample-content/README.md`

## Optional bootstrap shortcut

If you want a ready-to-copy starter vault:

- PowerShell: `scripts/bootstrap-sample-vault.ps1`
- Bash: `scripts/bootstrap-sample-vault.sh`
