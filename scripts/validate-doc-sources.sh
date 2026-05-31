#!/usr/bin/env bash
set -euo pipefail

python3 - <<'PY'
import re
import sys
from pathlib import Path

errors = []
markdown_files = sorted(
    path for path in Path(".").rglob("*.md")
    if ".git" not in path.parts
)

source_heading = re.compile(r"^#{1,6}\s+(?:\d+\.\s+)?(?:Validated\s+)?Sources\s*$", re.IGNORECASE | re.MULTILINE)

for path in markdown_files:
    text = path.read_text(encoding="utf-8")
    if not source_heading.search(text):
        errors.append(f"{path}: missing Sources section")
        continue
    if "http://" not in text and "https://" not in text and "source-register.md" not in text:
        errors.append(f"{path}: Sources section must include a URL or source-register.md link")

if errors:
    for error in errors:
        print(f"ERROR: {error}", file=sys.stderr)
    sys.exit(1)

print(f"Validated source sections in {len(markdown_files)} Markdown file(s)")
PY
