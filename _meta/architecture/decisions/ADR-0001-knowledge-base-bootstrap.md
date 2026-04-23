---
id: adr-0001
title: Bootstrap the governed LLM wiki architecture
status: active
type: architecture
primary_domain: systems-ops
updated_at: 2026-04-23
schema_version: 1
compat_version: 1
---

# ADR-0001: Bootstrap the governed LLM wiki architecture

## Status

Accepted

## Context

The vault needed a starting architecture that supports:

- long-term knowledge accumulation
- multiple agent entry points
- controlled promotion into Canonical Knowledge
- time-sensitive note separation
- retention review through Quarantine

## Decision

Adopt a layered structure with:

- `sources/`
- `drafts/`
- `wiki/`
- `news/`
- `quarantine/`
- `.llm/`
- `wiki/architecture/`

Use `Cross-domain Synthesis` instead of copying cross-domain explanations across multiple canonical domains.

## Consequences

- Agents have a stable write target and a stable read target.
- The vault is ready for MCP, skills, CLI wrappers, and future adapters.
- Architecture changes are expected to be documented, not improvised.

