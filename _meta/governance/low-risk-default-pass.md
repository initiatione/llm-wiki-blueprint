# Low-risk Default Pass Policy

This policy exists to reduce user review load without turning the system into a blind auto-publisher.

## Goal

Allow a small class of low-risk drafts to move through a lighter review path.

## Low-risk Drafts

Low-risk drafts usually have all of these properties:

- single-source
- bounded scope
- mostly descriptive rather than strongly inferential
- no change to architecture, taxonomy, or governance
- no meaningful rewrite of existing canonical meaning

Typical examples:

- source summary notes
- dated news/journal summaries
- metadata or structure-only corrections

## Medium-risk Drafts

These still need lightweight human judgment:

- reusable workflow notes
- notes with some abstraction beyond the source
- candidate updates that are probably useful but may over-generalize

## High-risk Drafts

These should require explicit human review:

- Cross-domain Synthesis with strong conclusions
- new concept definitions meant to become future factual anchors
- multi-source synthesis
- contradictory source integration
- taxonomy, architecture, governance, or review-policy changes
- notes that supersede existing canonical notes

## Simple Model

### Hard gate to High

If a draft does any of the following, classify it as `high` immediately:

- changes governance or architecture
- integrates conflicting sources
- makes strong cross-source conclusions
- rewrites trusted canonical meaning

### Scoring

Otherwise start at `0` and add:

- `+1` if there is more than one source
- `+1` if the source is highly time-sensitive
- `+1` if the draft is more inferential than descriptive
- `+1` if it modifies existing canonical content
- `+1` if the note is likely to be reused frequently
- `+1` if the scope covers more than one core question

### Mapping

- `0-1` -> `low`
- `2-3` -> `medium`
- `4+` -> `high`

## Review Modes

- `auto-pass`: only for whitelist-style low-risk drafts
- `human-lite`: normal lightweight review
- `human-required`: explicit review before promotion

## Guardrail

Even when a draft is `low`, the system should prefer:

- promoting it as a bounded `references` note
- keeping it conservative
- avoiding broad method or concept claims unless reviewed

