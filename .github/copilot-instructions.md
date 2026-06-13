# Copilot Instructions

This repository is The Admin Harness: a source-driven agentic resource for IT administrators.

Read [PRD.md](../PRD.md) before making product or structure changes. Read [AGENTS.md](../AGENTS.md) for cross-agent rules.

Use `.github/skills/` as the canonical project skill directory. Every skill should follow the Agent Skills standard and include `evals/evals.json` before it is treated as complete.

Before adding a new skill, check [docs/upstream-skill-register.md](../docs/upstream-skill-register.md). Prefer official Microsoft skills, plugins, MCP servers, and Microsoft-owned domain repos when they already cover a workflow; local skills should add portal, tenant, source, and safety routing rather than duplicate upstream skill bodies.

Do not hard-code long Microsoft portal lists into skills. Prefer upstream source references, especially `adamfowlerit/msportals.io` JSON files under `_data/portals/`, until this repo has an approved fetch/cache script.

Never commit secrets, tenant IDs, admin credentials, access tokens, `.env` files, browser profiles, or generated credential caches. Any workflow that could modify a Microsoft tenant must be planned first and require explicit human approval.

PowerShell helpers, shell scripts, and Microsoft Graph request examples must follow [docs/script-safety.md](../docs/script-safety.md). Mutation examples require explicit risk, approval, and allow markers before they can pass validation.

For documentation-only changes, validate that key files exist and skill/eval pairs are present. For code changes added later, run the narrowest relevant test, lint, typecheck, or validation script before broader checks.

Open pull requests for branch work, wait for validation and GitHub CodeQL/code scanning to be green, and use full merge commits. Do not squash merge.

## Sources

- [GitHub Copilot repository instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot)
- [VS Code custom instructions](https://code.visualstudio.com/docs/copilot/customization/custom-instructions)
- [VS Code Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
- [microsoft/skills](https://github.com/microsoft/skills)
- [microsoft/azure-skills](https://github.com/microsoft/azure-skills)
- [GitHub Actions workflow syntax](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions)
- [CodeQL code scanning](https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning-with-codeql)
- [Microsoft Graph permissions reference](https://learn.microsoft.com/en-us/graph/permissions-reference)
- [PSScriptAnalyzer overview](https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/overview)
- [ShellCheck](https://www.shellcheck.net/)
- [GitHub merge methods](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/about-merge-methods-on-github)
- [docs/source-register.md](../docs/source-register.md)
