# Agent Guidance Practices

This repo uses source-backed agent and model guidance as a design reference, not as a hard dependency. Skills should remain host-portable and should not require one provider-specific model to function.

## Source-Backed Guidance

- Use Agent Skills for specialized, reusable procedures that load on demand.
- Use `.github/copilot-instructions.md`, `AGENTS.md`, and `CLAUDE.md` for durable project context.
- Keep persistent instructions concise, specific, and non-conflicting.
- Move detailed procedure, examples, scripts, and reference material into skills or source files.
- Prefer official documentation and MCP sources for current product guidance.
- Treat MCP tools and external content as requiring consent, privacy review, and tool-safety controls.
- Add explicit safety gates for tenant or Azure changes.

## Provider-Specific Guidance

Provider/model-specific prompt or effort guidance must be added only with a public vendor source or repo-local eval evidence. Until then, keep model guidance portable and use host-agnostic validation.

## Cross-Model Rules

- Put volatile facts in sources, not in prompts.
- Put reusable procedures in skills.
- Put execution behind MCP tools with clear auth boundaries.
- Put policy in shared instructions and skill-specific safety steps.
- Evaluate skills with realistic prompts before treating them as complete.

## Sources

- [Agent Skills overview](https://agentskills.io/home)
- [VS Code Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
- [VS Code custom instructions](https://code.visualstudio.com/docs/copilot/customization/custom-instructions)
- [GitHub Copilot repository instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot)
- [Claude Code memory](https://code.claude.com/docs/en/memory)
- [Claude Code settings](https://code.claude.com/docs/en/settings)
- [Claude Code subagents](https://code.claude.com/docs/en/sub-agents)
- [MCP specification](https://modelcontextprotocol.io/specification/2025-06-18)
