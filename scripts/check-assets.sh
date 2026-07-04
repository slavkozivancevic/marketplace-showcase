#!/usr/bin/env bash
# Verify every local asset referenced by index.html exists on disk.
#
# This is a static site with no build step, so a renamed or deleted screenshot
# (or stylesheet) would otherwise ship as a broken image with no warning. Pure
# bash + grep, no dependencies - runs the same in CI and locally.
set -euo pipefail

cd "$(dirname "$0")/.."

html="index.html"
missing=0

# Pull every src="..."/href="..." value, keep only local relative paths
# (drop absolute URLs, mailto:, and pure #anchors).
refs=$(grep -oE '(src|href)="[^"]+"' "$html" \
  | sed -E 's/^(src|href)="//; s/"$//' \
  | grep -vE '^(https?:|mailto:|#)' \
  | sort -u)

for ref in $refs; do
  # Strip any #fragment or ?query suffix before resolving to a file.
  path="${ref%%#*}"
  path="${path%%\?*}"
  [ -z "$path" ] && continue
  if [ ! -e "$path" ]; then
    echo "BROKEN: $ref -> '$path' not found"
    missing=1
  fi
done

if [ "$missing" -ne 0 ]; then
  echo "Asset check FAILED: fix the broken local references above."
  exit 1
fi

echo "Asset check passed: all local references in $html resolve."