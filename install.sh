#!/usr/bin/env bash
# journal-trip-map skill installer (macOS / Linux / Windows Git-Bash)
# Usage:
#   bash install.sh                     # install to ~/.codebuddy/skills/journal-trip-map
#   bash install.sh /path/to/skills     # custom skills directory
set -e

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/skills/journal-trip-map"
TARGET="${1:-$HOME/.codebuddy/skills/journal-trip-map}"

if [ ! -d "$SRC" ]; then
  echo "ERROR: cannot find $SRC"; exit 1
fi

if [ -d "$TARGET" ]; then
  STAMP=$(date +%Y%m%d-%H%M%S)
  mv "$TARGET" "${TARGET}.bak-${STAMP}"
  echo "Existing install backed up to ${TARGET}.bak-${STAMP}"
fi

mkdir -p "$(dirname "$TARGET")"
cp -R "$SRC" "$TARGET"

echo "✅ Installed: $TARGET"
echo "   Restart your WorkBuddy/CodeBuddy session (or start a new chat) so the skill is picked up."
