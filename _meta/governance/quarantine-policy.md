---
id: systems-ops-quarantine-policy
title: Quarantine Policy
status: active
type: policy
primary_domain: systems-ops
scope:
  - scope/general
updated_at: 2026-04-23
---

# Problem

Some notes are too weak for Canonical Knowledge but too uncertain to delete immediately.

# Claim

Quarantine should function as an archive review zone, not as a trash bin.

# Evidence

Move notes to `quarantine/` when they are:

- weakly connected
- low reuse
- stale without clear canonical value
- too fragmented to justify promotion

Do not auto-delete notes carrying high-value retention signals such as:

- `retention/rare-but-important`
- `retention/hard-earned`
- `retention/failure-pattern`
- `retention/strategic-context`
- `retention/long-horizon`
- `retention/core-principle`

Before deletion, prefer:

1. merge
2. compress
3. extract reusable insight
4. record a tombstone

# Applicability

Use this policy whenever a note falls below the usefulness threshold of Canonical Knowledge.

# Non-goals

- Quarantine is not a hidden canonical layer.
- Quarantine is not meant for permanent storage of all weak notes.

# Links

- `wiki/domains/systems-ops/knowledge-lifecycle.md`
- `archive/tombstones/README.md`

