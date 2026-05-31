# Claude Adapter

This folder documents Claude Code-specific adapter structure for The Admin Harness.

The canonical project instructions live in [../AGENTS.md](../AGENTS.md), and the root [../CLAUDE.md](../CLAUDE.md) imports them. Keep shared rules there so Copilot, Claude, and other validated Agent Skills-compatible hosts do not drift.

The canonical skill source lives in [../.github/skills](../.github/skills). Claude Code project skills normally live under `.claude/skills/`, but this repo should not maintain duplicate skill copies by hand. If Claude Code needs native skill discovery, create a symlink or generated mirror from `.github/skills` to `.claude/skills`.

Suggested local symlink when needed:

```bash
ln -s ../.github/skills .claude/skills
```

Use `.claude/agents/`, `.claude/commands/`, hooks, or settings only for Claude-specific behavior that cannot be expressed through cross-agent `AGENTS.md`, `.github/copilot-instructions.md`, or Agent Skills.

## Sources

- [Claude Code settings](https://code.claude.com/docs/en/settings) for `.claude/settings.json`, project/local/user scopes, plugins, MCP, and sensitive-file denial.
- [Claude Code memory](https://code.claude.com/docs/en/memory) for `CLAUDE.md`, `.claude/CLAUDE.md`, `@AGENTS.md` imports, `.claude/rules/`, and local-only memory.
- [Claude Code skills](https://code.claude.com/docs/en/skills) for `.claude/skills/` behavior and supporting files.
- [Claude Code subagents](https://code.claude.com/docs/en/sub-agents) for `.claude/agents/` behavior.
- [Claude Code plugins](https://code.claude.com/docs/en/plugins) for plugin packaging.
