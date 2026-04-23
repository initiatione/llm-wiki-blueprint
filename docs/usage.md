# Usage

This document explains how the blueprint is intended to be used in practice.

## 1. Day-to-day usage model

The intended day-to-day pattern is:

1. capture material
2. place it in `_raw/`
3. let your execution agent generate `_drafts/`
4. review
5. promote only approved notes

## 2. User responsibilities

The user should mostly:

- choose what is worth capturing
- look at candidate drafts
- make the final publish decision
- occasionally correct category, scope, or risk

The user should not need to:

- manually organize every file
- handcraft all frontmatter
- manually maintain every link

## 3. Execution agent responsibilities

The execution agent should:

- read `_raw/`
- generate candidate drafts in `_drafts/`
- suggest target folders
- update review metadata
- revise drafts after feedback
- help promote approved notes

## 4. Recommended classification behavior

Use a conservative classification path:

- single-source summary -> `references/`
- reusable stable definition -> `concepts/`
- reusable method or workflow -> `skills/`
- cross-domain or multi-source summary -> `synthesis/`
- uncertain output -> remain in `_drafts/`

## 5. Review model

This blueprint assumes review-gated promotion.

Recommended decisions:

- `through`
- `rework`
- `hold`

## 6. Typical prompts

Example:

```text
Please process the latest item in _raw and generate one focused candidate draft in _drafts.
```

Example:

```text
This draft should be reworked. Keep it in _drafts and make the next version more conservative.
```

Example:

```text
This draft is approved. Promote it into the most appropriate canonical folder.
```

## 7. Example content

If you want to see the workflow in concrete form, inspect:

- `examples/sample-content/_raw/`
- `examples/sample-content/_drafts/`
- `examples/sample-content/_meta/review/`
- `examples/sample-content/references/`

