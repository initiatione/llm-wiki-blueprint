---
title: Default Routing
category: policy
tags: [routing, workflow, llm-wiki]
sources: []
created: 2026-04-23
updated: 2026-04-23
primary_domain: ops
context: learning
status: canonical
---

# Default Routing

When classification is uncertain, prefer the most conservative useful destination.

## Default Routing Rules

- single-source summary -> `references/`
- reusable stable definition -> `concepts/`
- reusable workflow or procedure -> `skills/`
- multi-source or cross-domain explanation -> `synthesis/`
- project-specific durable knowledge -> `projects/`
- dated news or recency-bound content -> `journal/news/`
- weak or uncertain content -> stay in `_drafts/` or move to `_quarantine/`

## Priority Rule

When a note could fit multiple folders:

1. choose the less abstract folder first
2. keep the first promoted note conservative
3. only create a more abstract note after enough evidence accumulates

## Example

A single forum post describing one person's workflow:

- first landing: `references/`
- later distilled, reusable method: `skills/`
- later compared across many sources: `synthesis/`

