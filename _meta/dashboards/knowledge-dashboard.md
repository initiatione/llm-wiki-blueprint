# Knowledge Dashboard

## Recent Canonical Updates

```dataview
TABLE file.folder AS Folder, updated, primary_domain
FROM "concepts" OR "entities" OR "skills" OR "references" OR "synthesis" OR "projects"
SORT updated DESC
LIMIT 30
```

## Recent News

```dataview
TABLE as_of, file.mtime AS Updated
FROM "journal/news"
SORT file.mtime DESC
LIMIT 20
```

## Architecture Notes

```dataview
TABLE updated_at, type
FROM "_meta/architecture"
SORT updated_at DESC
```

