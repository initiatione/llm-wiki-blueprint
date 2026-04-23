# Review Process

## Purpose

This note defines the human-readable review process for candidate knowledge.

## Flow

1. Candidate content lands in `_drafts/`
2. Review state is created or updated in `_meta/review/`
3. Reviewer decides:
   - `approved`
   - `rejected`
   - `blocked`
4. Rejected drafts receive actionable feedback
5. Recompile produces a new candidate
6. Approved drafts are promoted into canonical folders

## Risk Levels

- `low`: bounded, conservative, and usually single-source
- `medium`: useful but still needs a light human check
- `high`: may change important meaning, structure, or long-term factual anchors

## Review Modes

- `auto-pass`: reserved for a very small whitelist of low-risk draft types
- `human-lite`: the default lightweight review path
- `human-required`: explicit review before promotion

## Notes

- `_drafts/` is a publication buffer, not a trash area.
- `_meta/review/` tracks decision state, not canonical knowledge.
- `blocked` should always include a clear unblock condition.
- low-risk does not mean “good forever”; it means “safe enough for a lighter review path”
