---
title: Home
category: dashboard
tags: [dashboard, llm-wiki, workflow]
sources: []
created: 2026-04-23
updated: 2026-04-23
primary_domain: ops
context: learning
status: canonical
---

# LLM Wiki Home

## Daily Loop

1. Put new material into `_raw/`
2. Ask your execution agent to organize the latest raw content
3. Review medium/high-risk drafts
4. Approve only what should become Canonical Knowledge

## Quick Prompts

- 新内容整理：`请按 llm-wiki 流程整理 _raw 里最新导入的内容。`
- 带图整理：`请按 llm-wiki 流程整理 _raw 里最新导入的内容，优先结合图片内容。`
- 重做：`这版先 reject，请按反馈重做一版 draft。`
- 通过：`这版可以 approve，请按合适目录归档。`
- 保守：`先保守处理，不要直接写正式知识区。`

## Raw Inbox

```dataview
TABLE file.mtime AS Updated
FROM "_raw"
SORT file.mtime DESC
LIMIT 20
```

## Draft Queue

```dataview
TABLE recommended_archive_dir AS Target, recommended_note_type AS Type, risk_level AS Risk, review_state AS Review, file.mtime AS Updated
FROM "_drafts"
SORT file.mtime DESC
LIMIT 20
```

## Medium/High Review Needed

```dataview
TABLE risk_level AS Risk, review_mode AS ReviewMode, updated_at
FROM "_meta/review"
WHERE review_state = "pending" AND (risk_level = "medium" OR risk_level = "high")
SORT updated_at DESC
```

## Low-risk Candidates

```dataview
TABLE risk_level AS Risk, review_mode AS ReviewMode, updated_at
FROM "_meta/review"
WHERE review_state = "pending" AND risk_level = "low"
SORT updated_at DESC
```

## Quarantine

```dataview
TABLE file.mtime AS Updated
FROM "_quarantine"
SORT file.mtime DESC
LIMIT 20
```

## Recent Canonical Updates

```dataview
TABLE file.folder AS Folder, updated, primary_domain
FROM "concepts" OR "entities" OR "skills" OR "references" OR "synthesis" OR "projects"
SORT updated DESC
LIMIT 20
```

## Guides

- [[_meta/guides/minimal-user-loop]]
- [[_meta/guides/review-quick-decisions]]
- [[_meta/guides/claudian-short-prompts]]
- [[_meta/governance/default-routing]]
- [[_meta/governance/low-risk-default-pass]]
