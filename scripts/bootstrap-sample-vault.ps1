param(
  [Parameter(Mandatory = $true)]
  [string]$VaultPath
)

$ErrorActionPreference = "Stop"

$vault = (Resolve-Path -LiteralPath $VaultPath -ErrorAction SilentlyContinue)
if (-not $vault) {
  New-Item -ItemType Directory -Force -Path $VaultPath | Out-Null
  $vault = Resolve-Path -LiteralPath $VaultPath
}

$repoRoot = Split-Path -Parent $PSScriptRoot

$copyPaths = @(
  "AGENTS.md",
  "WIKI.md",
  "Home.md",
  "index.md",
  "log.md",
  ".manifest.json",
  "templates",
  "_raw",
  "_drafts",
  "_review",
  "_quarantine",
  "_archives",
  "_meta",
  "concepts",
  "entities",
  "references",
  "skills",
  "synthesis",
  "projects",
  "journal",
  ".obsidian"
)

foreach ($rel in $copyPaths) {
  $src = Join-Path $repoRoot $rel
  $dst = Join-Path $vault $rel
  if (Test-Path $src) {
    if (Test-Path $dst) {
      Write-Host "Skipping existing path: $rel"
    } else {
      Copy-Item -LiteralPath $src -Destination $dst -Recurse -Force
      Write-Host "Copied: $rel"
    }
  }
}

Write-Host ""
Write-Host "Bootstrap complete."
Write-Host "Open the vault in Obsidian and start by placing source material into _raw/."

