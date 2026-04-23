---
id: architecture-overview
title: Architecture Overview
status: active
type: architecture
primary_domain: systems-ops
updated_at: 2026-04-23
schema_version: 1
compat_version: 1
---

# Architecture Overview

This vault is organized as a governed private knowledge base with seven major parts:

1. Source Layer
2. Draft Workspace
3. Canonical Knowledge
4. Time-sensitive Layer
5. Quarantine
6. Integration Layer
7. Architecture Governance

The Integration Layer is vendor-neutral and lives in `.llm/`.

Inside Canonical Knowledge, `wiki/concepts/` acts as a logical concept layer for stable definitions and reusable primitives.

The current design principle is:

**Classify by primary context, connect by typed relations, and constrain expansion by explicit scope.**
