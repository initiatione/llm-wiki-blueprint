# Agent Instructions

This repository is an open-source llm-wiki blueprint.

It is not a private live vault.

## Purpose

Use this repository as:

- a structure reference
- a governance reference
- a template source
- a review-driven workflow reference

## Read Order

1. `README.md`
2. `WIKI.md`
3. `index.md`
4. `_meta/taxonomy.md`
5. `_meta/architecture/overview.md`

## Operating Principles

- treat `_raw/` as the source intake lane
- treat `_drafts/` as the publication buffer
- do not treat drafts as canonical knowledge
- use `_meta/review/` to model review state
- promote cautiously into canonical folders
- keep low-signal material out of canonical folders

## Canonical Folders

- `concepts/`
- `entities/`
- `skills/`
- `references/`
- `synthesis/`
- `projects/`

## Notes for Adopters

This repository is generic by design.

When adapting it to a real vault:

- replace placeholders with your own content
- keep secrets and private data out of the repo
- treat execution-agent integration as an outer layer, not as the vault’s source of truth

