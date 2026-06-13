---
name: skill-authoring
description: Create, review, or improve The Admin Harness skills using the Agent Skills specification, progressive disclosure, source-backed references, and evals. Use when adding a new skill, editing SKILL.md frontmatter, writing evals/evals.json, or preparing skills for Copilot, VS Code, Claude, or another validated Agent Skills-compatible host.
compatibility: Requires access to the repository files. Optional validation can use skills-ref when installed.
---

# Skill Authoring

Use this skill to create or improve skills in `.github/skills/`.

## Workflow

1. Check existing local skills and [docs/upstream-skill-register.md](../../../docs/upstream-skill-register.md) before adding a new skill.
2. Check official Microsoft skill sources, especially `microsoft/skills`, `microsoft/azure-skills`, and product-specific Microsoft-owned repos for the domain.
3. Decide whether the local skill should reference, route to, wrap, vendor, or create a local alternative to upstream guidance. Prefer reference or route when upstream already covers the workflow.
4. Create `.github/skills/<skill-name>/SKILL.md` where `<skill-name>` matches the frontmatter `name`.
5. Use lowercase letters, numbers, and hyphens only. Do not use slashes, dots, colons, underscores, leading/trailing hyphens, or consecutive hyphens.
6. Write a description that covers both capability and trigger conditions.
7. Keep `SKILL.md` concise. Move detailed source maps, templates, and advanced guidance into `references/`, `examples/`, `scripts/`, or `assets/`.
8. Add `evals/evals.json` with at least two realistic prompts and expected outputs.
9. Include assertions for objective checks where possible.
10. Validate the skill structure before calling it complete.

## Evaluation Pattern

Use this `evals/evals.json` shape:

```json
{
  "skill_name": "skill-name",
  "evals": [
    {
      "id": "example-case",
      "prompt": "Realistic user request",
      "expected_output": "Human-readable success criteria",
      "files": [],
      "assertions": ["Observable pass/fail statement"]
    }
  ]
}
```

## Guardrails

- Prefer official Microsoft skills, plugins, MCP servers, and Microsoft-owned domain repos when they already cover a workflow.
- Do not copy upstream skill bodies into this repo by default; route to the upstream source and add only Admin Harness-specific portal, tenant, source, or safety guidance.
- Do not add broad `allowed-tools` unless the script and workflow are reviewed.
- Do not duplicate source data across multiple skills.
- Do not write skills that request secrets in chat.
- Do not create a skill without evals.

## Sources

- [Agent Skills overview](https://agentskills.io/home)
- [VS Code Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
- [Claude Code skills](https://code.claude.com/docs/en/skills)
- [microsoft/skills README](https://raw.githubusercontent.com/microsoft/skills/main/README.md)
- [microsoft/azure-skills](https://github.com/microsoft/azure-skills)
- [microsoft/GitHub-Copilot-for-Azure](https://github.com/microsoft/GitHub-Copilot-for-Azure)
- [docs/upstream-skill-register.md](../../../docs/upstream-skill-register.md)
- [docs/source-register.md](../../../docs/source-register.md)
