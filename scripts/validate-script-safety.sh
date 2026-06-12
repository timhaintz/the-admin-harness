#!/usr/bin/env bash
set -euo pipefail

python3 - <<'PY'
import re
import sys
from pathlib import Path

root = Path(".")
script_suffixes = {".ps1", ".psm1", ".psd1", ".http", ".rest", ".sh", ".bash", ".zsh"}
excluded_paths = {Path("scripts/validate-script-safety.sh")}
errors = []

secret_patterns = [
    (re.compile(r"(?i)(client_secret|clientsecret|password|passwd|pwd|refresh_token|access_token|id_token|api[_-]?key|secret)\s*[:=]\s*['\"][^'\"<${][^'\"]{8,}"), "possible committed secret assignment"),
    (re.compile(r"(?i)^\s*Authorization:\s*Bearer\s+(?!\{\{|\$\{|<)[A-Za-z0-9._~+/=-]{20,}", re.MULTILINE), "literal bearer token"),
    (re.compile(r"(?i)Connect-MgGraph\b.*-(ClientSecret|AccessToken)\b"), "Connect-MgGraph with inline secret/token parameter"),
    (re.compile(r"(?i)ConvertTo-SecureString\b.*-AsPlainText\b"), "plain-text secure string conversion"),
]

guid_pattern = re.compile(r"\b[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}\b")
allowed_guids = {"00000000-0000-0000-0000-000000000000"}

graph_write_pattern = re.compile(
    r"(?im)^\s*(POST|PATCH|PUT|DELETE)\s+https://(?:graph\.microsoft\.(?:com|us)|microsoftgraph\.chinacloudapi\.cn)/"
)
graph_beta_pattern = re.compile(
    r"(?i)https://(?:graph\.microsoft\.(?:com|us)|microsoftgraph\.chinacloudapi\.cn)/beta/"
)
invoke_graph_write_pattern = re.compile(
    r"(?is)\bInvoke-MgGraphRequest\b[^\n]*\b-Method\s+['\"]?(POST|PATCH|PUT|DELETE)\b"
)
powershell_mutation_pattern = re.compile(
    r"(?i)\b(New|Set|Update|Remove|Clear|Disable|Enable|Grant|Revoke|Add)-Mg[A-Za-z0-9]+\b"
)
risky_powershell_pattern = re.compile(
    r"(?i)\b(Invoke-Expression|Invoke-Command|Start-Process|Set-ExecutionPolicy)\b"
)

risk_marker = re.compile(r"(?im)^\s*#?\s*admin-harness:risk\s+(read|diagnostic|plan|change|dangerous)\s*$")
approval_marker = re.compile(r"(?i)admin-harness:approval-required")
mutation_marker = re.compile(r"(?i)admin-harness:allow-mutation")
graph_write_marker = re.compile(r"(?i)admin-harness:allow-graph-write")
beta_marker = re.compile(r"(?i)admin-harness:allow-beta-graph")


def read_text(path: Path) -> str:
    try:
        return path.read_text(encoding="utf-8")
    except UnicodeDecodeError:
        return path.read_text(encoding="utf-8", errors="replace")


def has_change_approval(text: str, graph: bool = False) -> bool:
    match = risk_marker.search(text)
    if not match or match.group(1).lower() not in {"change", "dangerous"}:
        return False
    if not approval_marker.search(text):
        return False
    if graph:
        return bool(graph_write_marker.search(text) or mutation_marker.search(text))
    return bool(mutation_marker.search(text))


files = sorted(
    path for path in root.rglob("*")
    if path.is_file()
    and ".git" not in path.parts
    and path.suffix.lower() in script_suffixes
    and path not in excluded_paths
)

for path in files:
    text = read_text(path)
    suffix = path.suffix.lower()

    for pattern, message in secret_patterns:
        if pattern.search(text):
            errors.append(f"{path}: {message}")

    for guid in sorted(set(guid_pattern.findall(text)) - allowed_guids):
        errors.append(f"{path}: literal GUID '{guid}' found; use a placeholder unless this is an approved upstream placeholder")

    if suffix in {".http", ".rest"}:
        if graph_write_pattern.search(text) and not has_change_approval(text, graph=True):
            errors.append(f"{path}: Microsoft Graph write request requires risk, approval, and allow-graph-write markers")
        if graph_beta_pattern.search(text) and not beta_marker.search(text):
            errors.append(f"{path}: Microsoft Graph beta endpoint requires admin-harness:allow-beta-graph marker and documentation")

    if suffix in {".ps1", ".psm1"}:
        if not risk_marker.search(text):
            errors.append(f"{path}: PowerShell helper requires admin-harness:risk marker")
        mutates = powershell_mutation_pattern.search(text) or invoke_graph_write_pattern.search(text)
        if mutates and not has_change_approval(text):
            errors.append(f"{path}: PowerShell Graph mutation requires risk, approval, and allow-mutation markers")
        if risky_powershell_pattern.search(text) and not mutation_marker.search(text):
            errors.append(f"{path}: risky PowerShell construct requires admin-harness:allow-mutation marker and review")

    if suffix in {".sh", ".bash", ".zsh"} and path.parts and path.parts[0] == "scripts":
        if "set -euo pipefail" not in text:
            errors.append(f"{path}: repo shell scripts must use set -euo pipefail")

if errors:
    for error in errors:
        print(f"ERROR: {error}", file=sys.stderr)
    sys.exit(1)

print(f"Validated script safety for {len(files)} script/request file(s)")
PY