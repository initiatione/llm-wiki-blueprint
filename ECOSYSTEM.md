# Ecosystem

This repository is easiest to understand as one layer in a larger system.

## 1. Base workflow repo

Role:

- skills
- execution workflow
- agent integration
- reusable task logic

This blueprint does not replace that layer.

## 2. Live private vault

Role:

- real notes
- raw material
- drafts
- review state
- canonical knowledge

This blueprint is designed to be copied or adapted into that vault.

## 3. Enhancement layer

Role:

- external wrappers
- review-flow extras
- UI or management experiments
- plugin-layer work

This is optional, but useful when you do not want to pollute the base workflow repo.

## 4. Optional management plugin

A future management plugin can sit on top of the live vault and:

- visualize `_raw`, `_drafts`, review, and quarantine
- send actions to an execution agent
- reduce user cognitive load

That plugin should still treat vault files as the source of truth.

## 5. Why not merge everything into one repo

Because these layers evolve at different speeds:

- base workflow repo may track upstream
- private vault stores personal or team knowledge
- enhancement layer changes quickly
- a plugin layer has a different release rhythm

Keeping them conceptually separated improves long-term maintainability.

