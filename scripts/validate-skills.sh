#!/usr/bin/env bash
set -euo pipefail

skill_root="${1:-.github/skills}"

python3 - "$skill_root" <<'PY'
import json
import re
import sys
from pathlib import Path

skill_root = Path(sys.argv[1])
name_pattern = re.compile(r"^[a-z0-9]+(?:-[a-z0-9]+)*$")
errors = []

if not skill_root.is_dir():
    errors.append(f"skill root not found: {skill_root}")
else:
    skill_dirs = sorted(path for path in skill_root.iterdir() if path.is_dir())
    if not skill_dirs:
        errors.append(f"no skill directories found under {skill_root}")

    seen_names = set()
    for skill_dir in skill_dirs:
        skill_name = skill_dir.name
        skill_file = skill_dir / "SKILL.md"
        eval_file = skill_dir / "evals" / "evals.json"

        if not name_pattern.fullmatch(skill_name):
            errors.append(f"{skill_dir}: directory name must be lowercase kebab-case")

        if not skill_file.is_file():
            errors.append(f"{skill_dir}: missing SKILL.md")
            continue

        text = skill_file.read_text(encoding="utf-8")
        lines = text.splitlines()
        marker_lines = [index for index, line in enumerate(lines) if line.strip() == "---"]
        if len(marker_lines) != 2 or marker_lines[0] != 0:
            errors.append(f"{skill_file}: expected exactly one YAML frontmatter block")
            continue

        frontmatter = {}
        for raw_line in lines[marker_lines[0] + 1:marker_lines[1]]:
            if not raw_line.strip() or raw_line.lstrip().startswith("#"):
                continue
            if ":" not in raw_line:
                errors.append(f"{skill_file}: invalid frontmatter line: {raw_line}")
                continue
            key, value = raw_line.split(":", 1)
            frontmatter[key.strip()] = value.strip().strip('"\'')

        declared_name = frontmatter.get("name", "")
        description = frontmatter.get("description", "")

        if declared_name != skill_name:
            errors.append(f"{skill_file}: name '{declared_name}' does not match directory '{skill_name}'")
        if declared_name in seen_names:
            errors.append(f"{skill_file}: duplicate skill name '{declared_name}'")
        seen_names.add(declared_name)
        if not name_pattern.fullmatch(declared_name):
            errors.append(f"{skill_file}: name must be lowercase kebab-case")
        if not description:
            errors.append(f"{skill_file}: description is required")
        if len(description) > 1024:
            errors.append(f"{skill_file}: description exceeds 1024 characters")

        if not eval_file.is_file():
            errors.append(f"{skill_dir}: missing evals/evals.json")
            continue

        try:
            eval_data = json.loads(eval_file.read_text(encoding="utf-8"))
        except json.JSONDecodeError as exc:
            errors.append(f"{eval_file}: invalid JSON: {exc}")
            continue

        if eval_data.get("skill_name") != skill_name:
            errors.append(f"{eval_file}: skill_name does not match directory '{skill_name}'")
        evals = eval_data.get("evals")
        if not isinstance(evals, list) or len(evals) < 2:
            errors.append(f"{eval_file}: expected at least 2 evals")
            continue

        eval_ids = set()
        for index, item in enumerate(evals, start=1):
            if not isinstance(item, dict):
                errors.append(f"{eval_file}: eval #{index} must be an object")
                continue
            eval_id = item.get("id")
            if not eval_id:
                errors.append(f"{eval_file}: eval #{index} missing id")
            elif eval_id in eval_ids:
                errors.append(f"{eval_file}: duplicate eval id '{eval_id}'")
            eval_ids.add(eval_id)
            if not item.get("prompt"):
                errors.append(f"{eval_file}: eval '{eval_id or index}' missing prompt")
            if not item.get("expected_output"):
                errors.append(f"{eval_file}: eval '{eval_id or index}' missing expected_output")

if errors:
    for error in errors:
        print(f"ERROR: {error}", file=sys.stderr)
    sys.exit(1)

print(f"Validated {len(skill_dirs)} skill(s) under {skill_root}")
PY
