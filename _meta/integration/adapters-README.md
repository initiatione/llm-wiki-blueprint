# Integration Layer Adapters

This directory contains transport-specific and vendor-specific adapters.

Rules:

- Adapters may wrap or expose `.llm/` contracts.
- Adapters may not redefine the source-of-truth contract.
- Vendor folders should stay thin and reference the canonical protocol files.

