# Contributing

Thanks for helping improve The Admin Harness. This repo is public and source-driven, so contributions need to be safe for public reuse and traceable to validated sources.

## Development Workflow

- Create a branch for every coherent change.
- Open a pull request for every branch before merging.
- Keep PRs focused and traceable to [PRD.md](PRD.md) requirements or a linked issue.
- Do not push directly to `main` except for emergency repository repair.
- Do not squash merge. Preserve full merge commits so research, source additions, and review history stay visible.
- Wait for required checks, including validation and GitHub CodeQL/code scanning, before merging.
- Merge with a full merge commit after checks are green and review is complete.

## Required Local Checks

Run these before opening or updating a PR:

```bash
scripts/validate-skills.sh
scripts/validate-doc-sources.sh
scripts/validate-portal-skills.sh
bash scripts/validate-script-safety.sh
python3 -m json.tool mcp/vscode.example.json >/dev/null
python3 -m json.tool mcp/claude-desktop.example.json >/dev/null
```

## Source Rules

- Add or update [docs/source-register.md](docs/source-register.md) for new public source claims.
- Every Markdown file must include a `Sources` section.
- Prefer official Microsoft sources for admin procedure, role, permission, product limit, and tenant-impacting guidance.
- Prefer upstream `msportals.io` JSON files for portal entries.
- Mark source gaps explicitly instead of filling them with guesses.

## Skill Rules

- Keep canonical skills under `.github/skills/<skill-name>/SKILL.md`.
- Before adding a skill, check [docs/upstream-skill-register.md](docs/upstream-skill-register.md) and official Microsoft skill sources for overlap.
- If an upstream skill exists, explain whether the local change references, routes to, wraps, vendors, or intentionally creates an alternative to it.
- Every skill must include `evals/evals.json` with at least two realistic evals.
- Portal-specific skills must follow [docs/portal-skill-template.md](docs/portal-skill-template.md) and be tracked in [docs/portal-skill-coverage.md](docs/portal-skill-coverage.md).
- Do not hard-code long portal lists into skill bodies.

## Safety Rules

- Do not commit tenant IDs, customer data, admin credentials, access tokens, `.env` files, browser profiles, generated credential caches, or logs containing sensitive values.
- Do not ask users to paste passwords, API keys, refresh tokens, or admin credentials into chat or examples.
- Any Microsoft tenant or Azure mutation must be planned first and require explicit human approval.
- PowerShell, shell, and Microsoft Graph request examples must follow [docs/script-safety.md](docs/script-safety.md), including risk markers and approval markers for any mutation.

## Sources

- [GitHub Actions workflow syntax](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions)
- [About code scanning with CodeQL](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning-with-codeql)
- [Configuring default setup for code scanning](https://docs.github.com/en/code-security/code-scanning/enabling-code-scanning/configuring-default-setup-for-code-scanning)
- [microsoft/skills](https://github.com/microsoft/skills)
- [microsoft/azure-skills](https://github.com/microsoft/azure-skills)
- [PSScriptAnalyzer overview](https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/overview)
- [ShellCheck](https://www.shellcheck.net/)
- [Microsoft Graph permissions reference](https://learn.microsoft.com/en-us/graph/permissions-reference)
- [GitHub merge methods](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/about-merge-methods-on-github)
- [docs/source-register.md](docs/source-register.md)
