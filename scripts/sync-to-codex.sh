#!/bin/zsh

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$ROOT/skills"
DEST="/Users/kirpanfilov/.codex/skills"

mkdir -p "$DEST"

for skill in content-editor product-marketer skill-router reels-scriptwriter role-based-multi-agent-review; do
  rm -rf "$DEST/$skill"
  cp -R "$SRC/$skill" "$DEST/$skill"
done

echo "Synced skills to $DEST"
