#!/bin/zsh

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$ROOT/skills"
DEST="/Users/kirpanfilov/.codex/skills"
ASSET_DEST="$DEST/_kirill-workflow-assets"

mkdir -p "$DEST"

for skill in content-editor product-marketer skill-router reels-scriptwriter role-based-multi-agent-review commercialization-strategy-orchestrator portfolio-registry-agent strategic-gap-diagnostics-agent strategic-directions-agent operating-model-agent final-strategy-agent commercialization-strategy-reviewer; do
  rm -rf "$DEST/$skill"
  cp -R "$SRC/$skill" "$DEST/$skill"
done

rm -rf "$ASSET_DEST"
mkdir -p "$ASSET_DEST"
cp -R "$ROOT/workflows" "$ASSET_DEST/workflows"
cp -R "$ROOT/references" "$ASSET_DEST/references"

echo "Synced skills to $DEST"
echo "Synced workflow assets to $ASSET_DEST"
