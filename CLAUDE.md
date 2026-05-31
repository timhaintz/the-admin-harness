@AGENTS.md

## Claude Code Compatibility

Claude Code reads `CLAUDE.md`, while this project keeps cross-agent instructions in `AGENTS.md`. Follow the imported instructions above. Project skills are canonical under `.github/skills/`; do not create `.claude/skills/` duplicates unless an adapter or user request requires a mirror.

## Sources

This compatibility shim follows [Claude Code memory](https://code.claude.com/docs/en/memory), which documents importing `AGENTS.md` from `CLAUDE.md`, and [VS Code custom instructions](https://code.visualstudio.com/docs/copilot/customization/custom-instructions), which documents `CLAUDE.md` compatibility in VS Code. The broader source register is [docs/source-register.md](docs/source-register.md).
