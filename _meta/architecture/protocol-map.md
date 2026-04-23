---
id: architecture-protocol-map
title: Protocol Map
status: active
type: architecture
primary_domain: systems-ops
updated_at: 2026-04-23
schema_version: 1
compat_version: 1
---

# Protocol Map

## Core Operations

- `wiki.ingest` -> `.llm/protocols/ingest.md`
- `wiki.query` -> `.llm/protocols/query.md`
- `wiki.lint` -> `.llm/protocols/lint.md`
- `wiki.promote` -> `.llm/protocols/publish.md`
- `wiki.architecture.apply` -> `.llm/protocols/architecture-update.md`

## Transport Surfaces

- Obsidian plugins and commands
- CLI wrappers
- MCP tools
- Vendor-specific skill adapters

All of them should map back to the same `.llm/` contracts.

