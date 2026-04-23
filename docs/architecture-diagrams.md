# Architecture Diagrams

This document provides visual architecture diagrams for the current llm-wiki ecosystem.

These diagrams are intended to explain:

- the system layers
- the role of the base workflow repo
- the role of the live private vault
- the role of the enhancement layer
- the role of the execution agent
- the content movement from raw material to canonical knowledge

## 1. System Architecture

```mermaid
flowchart LR
    U["User"] --> O["Live Vault"]

    subgraph BASE["Base Workflow Repo"]
        B["workflow repo<br/>skills / workflow / bootstrap"]
    end

    subgraph VAULT["Live Vault"]
        O
        R["_raw<br/>intake lane"]
        D["_drafts<br/>candidate notes"]
        RV["_meta/review<br/>review state"]
        Q["_quarantine<br/>archive review zone"]
        C["Canonical Knowledge<br/>concepts / entities / skills / references / synthesis / projects"]
        M["_meta<br/>taxonomy / governance / architecture / dashboards"]
        H["Home.md<br/>daily control panel"]
    end

    subgraph EXEC["Execution Layer"]
        X["Execution agent<br/>chat-capable coding agent"]
    end

    subgraph EXT["Enhancement Layer"]
        E["wiki_ext<br/>review-flow / wrappers / governance"]
    end

    subgraph OBS["Obsidian + Plugins"]
        DV["Dataview"]
        TP["Templater"]
        LI["Linter"]
        OG["Git"]
        BR["BRAT"]
        WC["Web Clipper"]
    end

    B --> O
    E --> O
    WC --> R
    U --> X
    X --> R
    X --> D
    X --> RV
    X --> C
    X --> Q

    DV --> H
    TP --> D
    TP --> C
    LI --> O
    OG --> O
    BR --> O

    M --> H
    RV --> H
    D --> H
    Q --> H
    C --> H
```

## 2. Content Workflow

```mermaid
flowchart TD
    A["New source material"] --> B["_raw"]
    B --> C["Execution agent organizes content"]
    C --> D["_drafts"]
    D --> E["_meta/review<br/>risk / review state / suggested action"]
    E --> F{"Final decision"}

    F -->|"through / approve"| G["Canonical Knowledge"]
    F -->|"rework / reject"| H["Revise draft"]
    F -->|"hold"| D
    F -->|"quarantine"| Q["_quarantine"]

    H --> D
    G --> I["index / log / dashboards"]
    Q --> I
    D --> I
    E --> I
```

## 3. Responsibility Split

```mermaid
flowchart LR
    U["User"] -->|selects sources<br/>reviews critical outputs| V["Vault workflow"]
    A["Execution agent"] -->|organizes<br/>drafts<br/>revises<br/>promotes| V
    P["Management plugin (optional)"] -->|visualizes<br/>dispatches<br/>opens notes| V
    B["Base workflow repo"] -->|provides reusable skills and workflow logic| V
    E["Enhancement layer"] -->|adds sidecar review-flow and wrapper logic| V
```

## 4. Design Reading Notes

### Base workflow repo

Provides:

- reusable workflow logic
- skills
- bootstrap patterns

It should remain as clean and updatable as possible.

### Live vault

Stores:

- raw material
- drafts
- review state
- canonical knowledge
- governance and architecture docs

This is the real data layer.

### Enhancement layer

Stores:

- extra review-flow notes
- wrappers
- sidecar governance
- experimentation that should not pollute the base workflow repo

### Execution layer

Performs:

- ingest
- draft generation
- draft revision
- promotion after approval

### Optional plugin layer

Provides:

- visual queue management
- button-driven task dispatch
- direct note opening
- workflow visibility

It should not replace the vault as the source of truth.

