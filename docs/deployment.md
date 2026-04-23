# Deployment

This document explains two recommended ways to deploy the blueprint:

1. manual deployment
2. agent-guided deployment

Both approaches preserve the same architecture:

- base workflow repo
- private live vault
- optional enhancement layer

## 1. Manual Deployment

### Step 1: Create a new vault directory

Choose a location for your real private vault, for example:

```text
<YOUR_VAULT_PATH>
```

### Step 2: Copy the blueprint structure

Copy the following from this repository into your new vault:

- canonical folders
- `_raw/`
- `_drafts/`
- `_review/`
- `_quarantine/`
- `_archives/`
- `_meta/`
- `templates/`
- `README.md`
- `WIKI.md`
- `AGENTS.md`
- `Home.md`
- `index.md`
- `log.md`
- `.manifest.json`

### Step 3: Open the vault in Obsidian

Open your new vault folder in Obsidian.

### Step 4: Install or enable recommended plugins

Suggested plugin stack:

- Dataview
- Templater
- Linter
- Git
- BRAT

You may also use your preferred execution-side agent plugin or external agent tool.

### Step 5: Configure your execution layer

Choose how your execution agent will operate on the vault.

Examples:

- Claude Code
- Codex
- other file-capable coding agents

The execution agent should target your private vault, not the blueprint repo.

### Step 6: Start using the workflow

1. put new material into `_raw/`
2. generate drafts into `_drafts/`
3. review state in `_meta/review/`
4. promote only approved notes into canonical folders

## 2. Agent-guided Deployment

This blueprint is also designed so an agent can help deploy it.

### Goal

Ask an agent to:

- create the target vault structure
- copy or recreate the blueprint files
- configure the relevant workflows
- explain the resulting structure

### Recommended deployment prompt

You can adapt the following:

```text
Use this repository as an llm-wiki blueprint and help me deploy it into a new private Obsidian vault.

Tasks:
1. Create a vault structure based on this blueprint.
2. Preserve the review-gated workflow: _raw -> _drafts -> _meta/review -> canonical folders.
3. Keep templates, governance docs, and taxonomy structure.
4. Do not treat the blueprint repository itself as the live private vault.
5. Explain the final structure in simple terms when done.
```

### For Claude Code / Codex / similar agents

The agent should:

1. read `README.md`
2. read `WIKI.md`
3. read `AGENTS.md`
4. read `index.md`
5. reproduce or adapt the blueprint into a chosen private vault path

### Suggested post-deployment validation

After agent-guided deployment, verify:

- `_raw/` exists
- `_drafts/` exists
- `_meta/review/` exists
- canonical folders exist
- `templates/` exists
- `Home.md` opens correctly in Obsidian

## 3. Important separation rule

Do not use this repository itself as your only live private vault if you intend to keep personal knowledge private.

Recommended pattern:

- this repository = framework / blueprint layer
- your own vault = live private knowledge layer

## 4. Optional enhancement layer

If you want additional wrappers, orchestration notes, or management UI logic, keep that in a separate enhancement layer instead of polluting either:

- the clean workflow repo
- the live private vault

