# Contributing

Thanks for considering a contribution.

## What kind of project this is

This repository is a **framework and blueprint** repository, not a private live vault.

Good contributions include:

- improving the generic vault structure
- improving templates
- improving governance docs
- improving bilingual documentation
- improving review-state conventions
- improving compatibility notes for Obsidian plugin ecosystems

Not good contributions:

- adding personal private notes
- adding local runtime state
- adding secrets or provider-specific credentials
- committing live sessions, logs, or raw private sources

## Contribution rules

1. Keep changes generic and reusable
2. Preserve vault-files-as-truth philosophy
3. Do not introduce a second hidden database design without strong justification
4. Prefer lightweight, stable conventions over clever but fragile abstractions
5. Maintain both English and Chinese top-level docs when changing user-facing concepts

## Pull request guidance

Please explain:

- what changed
- why it helps a general adopter
- whether it affects vault structure, governance, or compatibility
- any migration implications

## Scope guard

If a change belongs to:

- an execution engine
- a private live vault
- a personal workflow customization

it may belong in a separate repository, not here.

