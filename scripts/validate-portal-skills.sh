#!/usr/bin/env bash
set -euo pipefail

python3 - <<'PY'
import json
import re
import sys
from pathlib import Path

errors = []
template = Path("docs/portal-skill-template.md")
coverage = Path("docs/portal-skill-coverage.md")
skill_root = Path(".github/skills")
required_sections = [
    "Portal Source",
    "Microsoft Learn MCP Grounding",
    "Safety Boundaries",
    "Sources",
]

for required_file in (template, coverage):
    if not required_file.is_file():
        errors.append(f"missing {required_file}")

if coverage.is_file():
    coverage_text = coverage.read_text(encoding="utf-8")
    for portal in (
        "Microsoft 365 Admin Center",
        "Microsoft Intune Admin Center",
        "Microsoft Entra Admin Center",
        "Microsoft Azure Portal",
    ):
        if portal not in coverage_text:
            errors.append(f"{coverage}: missing high-value portal row for {portal}")

portal_skill_dirs = sorted(skill_root.glob("portal-*")) if skill_root.is_dir() else []
for skill_dir in portal_skill_dirs:
    skill_file = skill_dir / "SKILL.md"
    eval_file = skill_dir / "evals" / "evals.json"
    if not skill_file.is_file():
        errors.append(f"{skill_dir}: missing SKILL.md")
        continue

    text = skill_file.read_text(encoding="utf-8")
    for section in required_sections:
        if f"## {section}" not in text:
            errors.append(f"{skill_file}: missing section '## {section}'")
    if "Microsoft Learn MCP" not in text and "learn.microsoft.com" not in text:
        errors.append(f"{skill_file}: missing Microsoft Learn MCP or official Learn grounding")
    if "raw.githubusercontent.com/adamfowlerit/msportals.io" not in text and "portal-sources.md" not in text:
        errors.append(f"{skill_file}: missing upstream portal source link")

    if not eval_file.is_file():
        errors.append(f"{skill_dir}: missing evals/evals.json")
        continue
    try:
        data = json.loads(eval_file.read_text(encoding="utf-8"))
    except json.JSONDecodeError as exc:
        errors.append(f"{eval_file}: invalid JSON: {exc}")
        continue
    evals = data.get("evals")
    if not isinstance(evals, list) or len(evals) < 2:
        errors.append(f"{eval_file}: expected at least 2 evals")

if errors:
    for error in errors:
        print(f"ERROR: {error}", file=sys.stderr)
    sys.exit(1)

print(f"Validated portal skill scaffolding and {len(portal_skill_dirs)} portal skill(s)")
PY
