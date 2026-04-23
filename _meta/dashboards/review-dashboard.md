# Review Dashboard

## Draft Queue

```dataview
TABLE suggested_action AS Action, recommended_archive_dir AS Target, recommended_note_type AS Type, risk_level AS Risk, review_state AS Review, file.mtime AS Updated
FROM "_drafts"
SORT file.mtime DESC
```

## Review State Files

```dataview
TABLE review_state, suggested_action, risk_level, review_mode, recompile_count, updated_at
FROM "_meta/review"
WHERE file.name != "README" AND file.name != "review-process"
SORT updated_at DESC
```

## High-risk Review Queue

```dataview
TABLE review_state, suggested_action, risk_level, review_mode, updated_at
FROM "_meta/review"
WHERE risk_level = "high"
SORT updated_at DESC
```

## Medium-risk Review Queue

```dataview
TABLE review_state, suggested_action, risk_level, review_mode, updated_at
FROM "_meta/review"
WHERE risk_level = "medium"
SORT updated_at DESC
```

## Low-risk Queue

```dataview
TABLE review_state, suggested_action, risk_level, review_mode, updated_at
FROM "_meta/review"
WHERE risk_level = "low"
SORT updated_at DESC
```

## Quarantine Queue

```dataview
TABLE file.mtime AS Updated
FROM "_quarantine"
SORT file.mtime DESC
```
