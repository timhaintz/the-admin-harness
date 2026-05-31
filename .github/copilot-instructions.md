# Copilot Instructions

This repository is The Admin Harness: a source-driven agentic resource for IT administrators.

Read [PRD.md](../PRD.md) before making product or structure changes. Read [AGENTS.md](../AGENTS.md) for cross-agent rules.

Use `.github/skills/` as the canonical project skill directory. Every skill should follow the Agent Skills standard and include `evals/evals.json` before it is treated as complete.

Do not hard-code long Microsoft portal lists into skills. Prefer upstream source references, especially `adamfowlerit/msportals.io` JSON files under `_data/portals/`, until this repo has an approved fetch/cache script.

Never commit secrets, tenant IDs, admin credentials, access tokens, `.env` files, browser profiles, or generated credential caches. Any workflow that could modify a Microsoft tenant must be planned first and require explicit human approval.

For documentation-only changes, validate that key files exist and skill/eval pairs are present. For code changes added later, run the narrowest relevant test, lint, typecheck, or validation script before broader checks.

## Sources

- [GitHub Copilot repository instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot)
- [VS Code custom instructions](https://code.visualstudio.com/docs/copilot/customization/custom-instructions)
- [VS Code Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
- [docs/source-register.md](../docs/source-register.md)
