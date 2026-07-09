#!/usr/bin/env bash

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
content_dir="$repo_root/lesson-content"

rm -rf "$content_dir/meine_dateien"
rm -rf "$content_dir/sandbox"
rm -rf "$content_dir/voller_ordner"
rm -f "$content_dir/backup.txt"
rm -f "$content_dir/geheim.txt"
chmod 0644 "$content_dir/zeit.sh" "$content_dir/begruessung.sh"
