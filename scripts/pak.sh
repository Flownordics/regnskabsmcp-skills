#!/bin/sh
# Pakker hver skill-mappe til én ZIP i dist/. Mappen under skills/ er eneste kilde.
set -eu
cd "$(dirname "$0")/.."
rm -rf dist
mkdir dist
for dir in skills/*/; do
  name=$(basename "$dir")
  test -f "skills/$name/SKILL.md" || { echo "Mangler skills/$name/SKILL.md" >&2; exit 1; }
  grep -q "^name: $name\$" "skills/$name/SKILL.md" || { echo "name i skills/$name/SKILL.md skal være $name" >&2; exit 1; }
  (cd skills && zip -qrX "../dist/$name.zip" "$name" -x '*.DS_Store')
done
ls -1 dist
