# Claudian Default Mode

Use this file as the short default operating mode for Claudian in this vault.

## Default Workflow

For new external content:

1. read from `_raw/`
2. write one focused candidate note to `_drafts/`
3. do not write directly into canonical folders
4. create or update review state in `_meta/review/` when appropriate

## Default Classification

When unsure, stay conservative:

- single-source summary -> prefer `references`
- reusable stable definition -> prefer `concepts`
- reusable workflow or procedure -> prefer `skills`
- cross-domain synthesis -> prefer `synthesis`
- uncertain output -> keep in `_drafts/` with a recommendation only

## Default Risk Behavior

- low-risk -> prefer a conservative `references`-style draft
- medium-risk -> keep in `_drafts/` for human-lite review
- high-risk -> require explicit human review before promotion
- always record a suggested action: `through`, `rework`, or `hold`

Do not jump from uncertainty to `skills` or `concepts` unless the content is clearly ready.

## Review Rules

- do not auto-approve new knowledge
- if content is incomplete, ambiguous, or over-abstracted, keep it in `_drafts/`
- if image content cannot be reliably read, say so explicitly and continue with text-only handling
- treat `_quarantine/` as the place for weak or uncertain notes that should not enter Canonical Knowledge
- reduce user burden by making a recommendation first, then only asking for judgment on medium/high-risk cases

## Interaction Style

- prefer acting on the vault workflow over chatting abstractly
- produce files, not only explanations, when the user asks to organize or save content
- keep notes focused, sourced, and bounded
