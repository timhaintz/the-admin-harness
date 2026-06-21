# Agent Host Compatibility

The Admin Harness uses the [Agent Skills](https://agentskills.io/home) `SKILL.md` standard as its portable capability format. The canonical skill source remains `.github/skills/`; host-specific install or discovery paths should point at, mirror, or import those folders without changing the source of truth.

## Current Host Model

| Host or surface | Current fit | Notes |
| --- | --- | --- |
| VS Code GitHub Copilot | First-class repository skill surface | Uses `.github/skills/` directly in this repo. |
| GitHub Copilot CLI and cloud agent | First-class repository skill surface where project skills are available | Keep skills under `.github/skills/` and follow repository instructions. |
| Claude Code | Adapter-compatible | Use `CLAUDE.md` importing `AGENTS.md`; mirror or symlink skills only when needed for Claude-specific discovery. |
| Microsoft Scout | Standards-compatible custom skill host | Scout can use custom `SKILL.md` skills. Point Scout at this repo or have Scout import selected `.github/skills/` folders into its custom skill locations as needed. |
| OpenClaw, Hermes, and other Agent Skills-compatible hosts | Candidate adapter targets | Do not claim first-class support until the host's public docs and a validation loop confirm the expected skill path and trust model. |

## Microsoft Scout Fit

Microsoft Scout is a desktop AI application that can act across files, shell, browser, Microsoft 365 data, Work IQ, custom skills, heartbeat, automations, and sub-agents. In this project, Scout should be treated as an execution surface that AI-augments the admin: it can use the Admin Harness skills to ground admin work in sources, route tasks to the right Microsoft portal or upstream skill, and keep tenant/resource changes behind explicit approval boundaries.

Scout does not replace the harness. The harness provides:

- source-backed portal discovery;
- Microsoft Learn MCP grounding for current admin procedure;
- Azure MCP and Work IQ routing where resource or work-context grounding is needed;
- safety tiers and approval boundaries;
- eval-backed `SKILL.md` files that can be consumed by standards-compatible hosts.

Scout provides:

- local workspace access;
- browser automation;
- shell execution with permissions;
- Microsoft 365 and Work IQ access;
- background modes and automations;
- custom skill loading.

That means the practical model is: **The Admin Harness is the admin skill and safety harness; Scout is one standards-compatible host that can run with it.**

## Scout Safety Posture

For Microsoft administration, use Scout conservatively:

- keep Microsoft Learn MCP as the primary grounding layer for admin guidance;
- treat portal output, web pages, Microsoft 365 messages, Work IQ results, and browser state as untrusted data until validated;
- avoid autonomous heartbeat or automation for tenant/resource mutations;
- require `admin-change-safety` before changes to identity, policy, data, devices, subscriptions, resources, security, or billing;
- do not store tenant IDs, subscription IDs, secrets, raw exports, logs, or customer identifiers in durable memories or committed examples.

## Sources

- [Agent Skills overview](https://agentskills.io/home)
- [VS Code Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
- [Microsoft Scout overview](https://learn.microsoft.com/en-us/microsoft-scout/overview)
- [Use Microsoft Scout](https://learn.microsoft.com/en-us/microsoft-scout/use-microsoft-scout)
- [Microsoft Scout common questions](https://learn.microsoft.com/en-us/microsoft-scout/faq)
- [Responsible AI FAQ for Microsoft Scout](https://learn.microsoft.com/en-us/microsoft-scout/microsoft-scout-responsible-ai-faq)
- [Microsoft Learn MCP get started](https://learn.microsoft.com/en-us/training/support/mcp-get-started)
- [Azure MCP Server documentation](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/)
- [Work IQ overview](https://learn.microsoft.com/en-us/microsoft-365/copilot/extensibility/work-iq/)
- [docs/source-register.md](source-register.md)