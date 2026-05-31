# Claude Adapter

This folder documents Claude Code-specific adapter structure for The Admin Harness.

The canonical project instructions live in [../AGENTS.md](../AGENTS.md), and the root [../CLAUDE.md](../CLAUDE.md) imports them. Keep shared rules there so Copilot, Claude, OpenClaw, Hermes, and other agents do not drift.

The canonical skill source lives in [../.github/skills](../.github/skills). Claude Code project skills normally live under `.claude/skills/`, but this repo should not maintain duplicate skill copies by hand. If Claude Code needs native skill discovery, create a symlink or generated mirror from `.github/skills` to `.claude/skills`.

Suggested local symlink when needed:

```bash
ln -s ../.github/skills .claude/skills
```

Use `.claude/agents/`, `.claude/commands/`, hooks, or settings only for Claude-specific behavior that cannot be expressed through cross-agent `AGENTS.md`, `.github/copilot-instructions.md`, or Agent Skills.
