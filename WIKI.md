# Operating Schema

This file defines the generic operating schema for the blueprint.

## Mission

Build a long-lived knowledge base that compounds over time instead of repeatedly rediscovering knowledge from raw sources.

## Core Flow

```text
_raw -> _drafts -> _meta/review -> canonical folders
```

## Core Layers

### 1. Source Layer

`_raw/` stores incoming source material.

### 2. Draft Workspace

`_drafts/` stores candidate notes before publication.

### 3. Canonical Knowledge

Canonical Knowledge is the logical layer composed of:

- `concepts/`
- `entities/`
- `skills/`
- `references/`
- `synthesis/`
- `projects/`

### 4. Review Layer

`_meta/review/` stores review state and decision metadata.

### 5. Quarantine Layer

`_quarantine/` stores weak or uncertain notes that should not enter canonical folders yet.

## Routing Rules

- single-source summary -> prefer `references/`
- reusable stable definition -> prefer `concepts/`
- reusable workflow or procedure -> prefer `skills/`
- cross-domain or multi-source summary -> prefer `synthesis/`
- project-specific durable knowledge -> prefer `projects/`
- uncertain output -> remain in `_drafts/`

## Quality Rules

- prefer one note per core question
- prefer bounded notes
- require sources for non-trivial claims
- review before promotion

