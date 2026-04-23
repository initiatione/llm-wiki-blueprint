# Ingest Dashboard

## Raw Inbox

```dataview
TABLE file.mtime AS Updated
FROM "_raw"
SORT file.mtime DESC
```

## Source Summaries

```dataview
TABLE updated, sources
FROM "references"
SORT updated DESC
LIMIT 30
```

