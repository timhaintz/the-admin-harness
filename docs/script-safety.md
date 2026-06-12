# Script Safety Standards

The Admin Harness can eventually include PowerShell helpers, shell scripts, Microsoft Graph request examples, and skill-local helper scripts. Because this repository is public and the target workflows can affect Microsoft tenants, executable or executable-adjacent files must be treated as admin change surfaces from the start.

This document defines the baseline for those files before the repo adds read-only helpers or tenant posture checks.

## Scope

These rules apply to:

- repo validation and generation scripts under `scripts/`;
- skill-local helper scripts under `.github/skills/*/scripts/`;
- PowerShell files such as `.ps1`, `.psm1`, and `.psd1`;
- shell files such as `.sh`, `.bash`, and `.zsh`;
- Microsoft Graph request examples such as `.http` and `.rest` files;
- Markdown examples that are intended to be copied into PowerShell, shell, or Graph request tooling.

Documentation-only examples should still follow these rules when they show commands, scopes, permissions, HTTP methods, or authentication patterns.

## Risk Markers

PowerShell helper scripts and Graph request files should declare their intended risk tier near the top of the file:

```text
admin-harness:risk read
```

Allowed values match the repository safety model: `read`, `diagnostic`, `plan`, `change`, and `dangerous`.

Any file that contains a Microsoft tenant, Azure, or Microsoft Graph mutation must also include explicit review markers:

```text
admin-harness:risk change
admin-harness:approval-required
admin-harness:allow-mutation
```

Graph `.http` or `.rest` files may use `admin-harness:allow-graph-write` instead of `admin-harness:allow-mutation`. These markers do not authorize execution. They make the risk visible so reviewers can verify that the file routes through planning, approval, and rollback guidance.

## Public-Safe Placeholders

Committed files must not include real tenant IDs, customer IDs, app IDs, client secrets, access tokens, refresh tokens, API keys, certificates, private keys, or generated credential caches.

Use placeholders instead:

- `<tenant-id>`
- `<client-id>`
- `<subscription-id>`
- `<resource-group-name>`
- `<user-principal-name>`
- `<scope-or-permission>`

The all-zero GUID `00000000-0000-0000-0000-000000000000` is allowed only where an upstream source uses it as a placeholder. Prefer angle-bracket placeholders in new project-authored examples.

## PowerShell Rules

- Prefer Microsoft Graph PowerShell SDK cmdlets and Microsoft-supported modules for Microsoft Graph automation.
- Use platform-native authentication such as `Connect-MgGraph` interactive, device code, managed identity, workload identity federation, or certificate-based app-only auth. Do not commit client secrets or tokens.
- Request least-privileged scopes. Verify scopes against Microsoft Graph permissions documentation before adding them to examples.
- Treat `New-*`, `Set-*`, `Update-*`, `Remove-*`, `Add-*`, `Grant-*`, `Revoke-*`, `Enable-*`, `Disable-*`, and Graph write calls as mutations unless the command is clearly a local formatting or validation command.
- Avoid `Invoke-Expression`, inline secrets, plain-text secure string conversion, and dynamic code execution.
- Run PSScriptAnalyzer where available for PowerShell modules and scripts. The repo validator does not replace PSScriptAnalyzer; it catches public-repo and tenant-safety patterns that should fail before deeper linting.

## Microsoft Graph Request Rules

- Use `GET` for read-only examples wherever possible.
- Treat `POST`, `PATCH`, `PUT`, and `DELETE` as change operations. A Graph write request must include the risk and approval markers described above.
- Prefer `v1.0` endpoints for production examples. If `beta` is required, mark the file and explain the source-backed reason in adjacent documentation.
- Include required permissions as placeholders or names, not GUIDs copied from a tenant.
- Use the Microsoft Graph permissions reference as the authoritative permission source. Community tools are useful for exploration, but official Microsoft documentation remains the source for committed guidance.

## Shell Script Rules

- Repo-maintenance shell scripts under `scripts/` must use `set -euo pipefail`.
- Shell scripts must not pipe remote content directly into a shell.
- Prefer local validation scripts that use the standard macOS/Linux toolchain already available to contributors and GitHub Actions.
- Use ShellCheck where available for shell scripts. The repo validator enforces only baseline public-safety checks.

## Merill Fernando Tool Research

Merill Fernando's public tools are relevant to this project, but they serve different roles:

- Maester is an open-source Microsoft 365 security test automation framework built around PowerShell, Pester, Microsoft Graph, and security-as-code. Use it as a strong reference for future tenant posture tests and continuous monitoring patterns.
- Graph X-Ray is an open-source browser extension that inspects Microsoft admin portal Graph calls and generates code. Use it for discovery and prototyping, then verify generated calls against official Microsoft Graph documentation before committing examples.
- Graph Permissions Explorer helps explore what data Microsoft Graph permissions expose. Use it to understand permission impact, with Microsoft Graph permissions reference as the authoritative source.
- `cmd.ms` and Yako provide Microsoft cloud navigation shortcuts. Use them as helpful community tools, while keeping committed portal data grounded in upstream `msportals.io` sources.
- Entra Exporter, MSIdentityTools, Zero Trust Assessment, idPowerToys, and Entra sign-in URL tooling are useful research leads for later Entra and security-admin workflows. Evaluate each tool's license, source, permissions, and execution model before adding dependencies or examples.

## Validation

Run the script-safety validator before opening a PR that adds or changes executable-adjacent content:

```bash
bash scripts/validate-script-safety.sh
```

The validator is deliberately conservative. It blocks likely committed secrets, literal GUIDs in script/request files, unmarked Microsoft Graph write requests, unmarked PowerShell mutation patterns, and missing shell safety settings for repo scripts. If it blocks a legitimate example, add the proper risk markers and explain the source-backed reason in documentation instead of bypassing the check.

## Sources

- [Microsoft Graph: Use the API](https://learn.microsoft.com/en-us/graph/use-the-api)
- [Microsoft Graph authentication and authorization overview](https://learn.microsoft.com/en-us/graph/auth/)
- [Microsoft Graph permissions reference](https://learn.microsoft.com/en-us/graph/permissions-reference)
- [Microsoft Graph PowerShell overview](https://learn.microsoft.com/en-us/powershell/microsoftgraph/overview)
- [PSScriptAnalyzer overview](https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/overview)
- [PowerShell/PSScriptAnalyzer](https://github.com/PowerShell/PSScriptAnalyzer)
- [ShellCheck](https://www.shellcheck.net/)
- [koalaman/shellcheck](https://github.com/koalaman/shellcheck)
- [Merill Fernando](https://merill.net/)
- [Maester](https://maester.dev/)
- [maester365/maester](https://github.com/maester365/maester)
- [Graph X-Ray](https://graphxray.merill.net/)
- [cmd.ms](https://cmd.ms/)