---
id: architecture-invariants
title: Architecture Invariants
status: active
type: architecture
primary_domain: systems-ops
updated_at: 2026-04-23
schema_version: 1
compat_version: 1
---

# Architecture Invariants

The following rules should not be broken casually:

1. Vendor-specific directories are not the source of truth.
2. Canonical Knowledge is the default factual source for agents.
3. Drafts are staging artifacts, not default facts.
4. Time-sensitive information stays in `news/` unless intentionally distilled.
5. Cross-domain overlap is handled through Cross-domain Synthesis, not duplicated canonical prose.
6. Every canonical note has one `primary_domain`.
7. Any architecture change must update `.llm/`, architecture docs, and evolution logs together.

