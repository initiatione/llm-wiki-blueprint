# Taxonomy

This file is the canonical taxonomy entrypoint for the vault.

## Required Structured Fields

- `primary_domain`
- `context`
- `status`
- `review_state`
- `valid_when`
- `invalid_when`
- `supersedes`
- `keep_reason`

## Preferred Domain Values

- `programming`
- `ai`
- `robotics`
- `research`
- `finance`
- `ops`
- `math`

## Preferred Context Values

- `project`
- `open-source`
- `stack`
- `learning`
- `ai-collab`

## Tag Vocabulary

Detailed controlled vocabularies live in:

- `_meta/taxonomy/tags.md`
- `_meta/taxonomy/relation-types.md`
- `_meta/taxonomy/note-types.md`
- `_meta/taxonomy/aliases.md`

## Tagging Rules

- prefer canonical tags over aliases
- keep tags focused and bounded
- use structured fields for governance, not free-form tags
- keep time-sensitive notes clearly dated

