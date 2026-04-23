#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: ./scripts/bootstrap-sample-vault.sh <VAULT_PATH>"
  exit 1
fi

VAULT_PATH="$1"
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

mkdir -p "$VAULT_PATH"

copy_paths=(
  "AGENTS.md"
  "WIKI.md"
  "Home.md"
  "index.md"
  "log.md"
  ".manifest.json"
  "templates"
  "_raw"
  "_drafts"
  "_review"
  "_quarantine"
  "_archives"
  "_meta"
  "concepts"
  "entities"
  "references"
  "skills"
  "synthesis"
  "projects"
  "journal"
  ".obsidian"
)

for rel in "${copy_paths[@]}"; do
  src="$REPO_ROOT/$rel"
  dst="$VAULT_PATH/$rel"
  if [ -e "$src" ]; then
    if [ -e "$dst" ]; then
      echo "Skipping existing path: $rel"
    else
      cp -R "$src" "$dst"
      echo "Copied: $rel"
    fi
  fi
done

echo
echo "Bootstrap complete."
echo "Open the vault in Obsidian and start by placing source material into _raw/."

