# The Admin Harness PRD

## 1. Product Summary

The Admin Harness is a source-driven agentic resource for IT administrators. It packages Microsoft admin portal discovery, Microsoft Learn and Azure MCP configuration guidance, operational skills, safety guidance, and evaluation fixtures so an IT admin can use an assistant agent to research, navigate, and eventually perform administrative workflows with appropriate human approval.

The project must work across agent hosts, not only Claude. The canonical project skill location is `.github/skills/` because it is supported by VS Code, GitHub Copilot agent mode, GitHub Copilot CLI, and Copilot cloud agent. Claude Code has its own `.claude/` folder structure for project settings, skills, agents, hooks, and command-style workflows, so this repo should include a documented Claude adapter while keeping `.github/skills/` as the source of truth. Compatibility shims may include `CLAUDE.md` importing `AGENTS.md`, optional `.claude/skills` symlinks/mirrors, and `.agents/skills/` adapters when needed.

The repository is intended to be public open source. Everything committed here must be safe for public viewing: no tenant-specific values, secrets, credentials, generated auth caches, private browser profiles, customer data, or internal-only operational details. If secrets are ever required for automation, they belong in GitHub Actions secrets, local environment variables, OAuth/device-code flows, or platform credential stores, not in committed files.

The first implementation milestone is a documentation and skills harness, not an autonomous admin-action product. The harness should help an admin find authoritative portals and documentation, decide which MCP servers and credentials are needed, and follow safe workflows. Any login, tenant mutation, or privileged admin action must be handled through explicit configuration, least-privilege credentials, step-up approval, auditable logs, and eval coverage.

## 2. Problem

IT admins work across hundreds of Microsoft portals, product-specific admin centers, sovereign cloud endpoints, licensing pages, service health portals, and documentation surfaces. Assistant agents can help, but only if they are grounded in current sources and constrained by a safe operating model.

Current gaps:

- Portal URLs and names drift over time.
- Admin tasks span Microsoft 365, Entra, Azure, Defender, Purview, Intune, Power Platform, Teams, Exchange, SharePoint, Partner Center, service health, licensing, education, government clouds, and third-party helper sites.
- Generic prompts hard-code links and procedures that become stale.
- Admin credentials and browser sessions create high-risk boundaries.
- Different agent hosts use different conventions for instructions, skills, plugins, MCP config, and memory.
- There is no small, curated harness that an IT admin can install and evaluate before letting an agent touch production tenant surfaces.

## 3. Product Goals

1. Provide a cross-agent, source-driven skill library for IT admin workflows.
2. Keep portal data sourced from upstream catalogs, especially `msportals.io` JSON data, instead of hard-coding long portal lists in skill bodies.
3. Provide MCP configuration templates for Microsoft Learn MCP, Azure MCP, browser automation, GitHub, and future Microsoft Graph-oriented servers.
4. Define safe patterns for credential use, tenant selection, login handoff, and human approval.
5. Include evaluations for every skill from the first version, following the Agent Skills evaluation pattern.
6. Support VS Code and GitHub Copilot first, while remaining compatible with Claude Code, OpenAI/Codex-style skills, OpenClaw, Hermes Agent, and other Agent Skills-compatible hosts.
7. Provide a clear packaging path for a future shopping-cart experience where admins can choose skill bundles, MCP profiles, and policy packs.
8. Keep every committed artifact suitable for a public open-source repository.

## 4. Non-Goals

- Do not store admin credentials in this repository.
- Do not commit tenant-specific or customer-specific examples.
- Do not automate privileged admin changes without explicit human approval and auditability.
- Do not scrape, fork, or republish the full `msportals.io` catalog as static source unless licensing and refresh mechanics are reviewed.
- Do not build a full MCP server in milestone 1 unless it is needed to validate source retrieval.
- Do not claim support for a host unless there is a runnable install or verification path for that host.
- Do not make agent skills a substitute for Microsoft documentation, tenant-specific policy, or formal change management.

## 5. Primary Users

- Microsoft 365 administrators.
- Azure administrators.
- Security, compliance, and identity administrators.
- MSP and partner administrators managing multiple tenants.
- IT generalists who need guided discovery across Microsoft admin surfaces.
- Agent/harness builders who want reusable IT admin skills and MCP profiles.

## 6. Use Cases

### 6.1 Portal Discovery

An admin asks: "Where do I manage Intune device compliance policies?" The agent should use the portal catalog source, return the relevant portal URL, mention any old/new names, and avoid inventing links.

### 6.2 Documentation-Grounded Task Guidance

An admin asks: "How do I check if Conditional Access is blocking a user?" The agent should use Microsoft Learn MCP or Learn references before giving steps, distinguish read-only investigation from changes, and cite the documentation path it used.

### 6.3 Tenant-Aware Navigation

An MSP admin asks for the B2B tenant-specific version of a portal. The harness should document the tenant ID substitution pattern and warn that tenant IDs in bookmarks or URLs may be logged.

### 6.4 MCP Setup

An admin asks: "Set up this repo so Copilot can use Microsoft Learn and Azure MCP." The agent should choose a supported MCP config target and produce a safe config template with placeholder env vars and setup instructions.

### 6.5 Safe Admin Action Planning

An admin asks: "Disable external sharing for a SharePoint site." The skill should create a plan with prerequisites, required permissions, read-only verification, approval gate, execution path, and rollback/validation steps. It should not execute unless the environment and authorization path are explicitly configured.

### 6.6 Cross-Harness Portability

An admin switches between VS Code Copilot, Copilot CLI, Claude Code, OpenClaw, and Hermes. The same skills and core instructions should remain usable with minimal adapters.

## 7. Source Strategy

Source-driven content is a product requirement.

### 7.1 Portal Catalog

Primary source: `msportals.io`, backed by `adamfowlerit/msportals.io`.

Relevant upstream facts discovered during research:

- The public site lists more than 600 Microsoft and related portals.
- Upstream portal data is stored under `_data/portals/*.json`.
- Upstream fields include `portalName`, `primaryURL`, optional `iconUrl`, optional `secondaryURLs`, and optional `note`.
- Current page-to-source mappings include `admin.json`, `user.json`, `thirdparty.json`, `us-govt.json`, `training.json`, `licensing.json`, `consumer.json`, `edu.json`, and `china.json`.
- Upstream supports B2B tenant ID replacement with placeholder `00000000-0000-0000-0000-000000000000` and warns that tenant IDs in URLs/bookmarks may be logged.

Milestone 1 must reference upstream source URLs and schemas. Milestone 2 may add a fetch/cache script with provenance metadata and update timestamps.

### 7.2 Microsoft Documentation

Use Microsoft Learn MCP as the preferred documentation source when available. Skills should instruct the agent to prefer Microsoft Learn and official Microsoft docs for task procedure details, service limits, product names, and role requirements.

### 7.3 Azure Operations

Use Azure MCP for Azure resource inspection and operations. Any mutation must be separated from discovery and require approval.

### 7.4 Model and Agent Guidance

Use current model-specific best practices as references, not as hard dependencies:

- GPT-5.5: outcome-first prompts, concise behavior/personality blocks, explicit stopping conditions, retrieval budgets, validation commands, and trace/dataset evals.
- Claude Opus 4.8: explicit scope, `high` or `xhigh` effort for coding/agentic work, clear tool-use guidance, carefully controlled subagent spawning, source verification, and eval-tuned review prompts.

## 8. Agent and Packaging Standards

### 8.1 AGENTS.md

`AGENTS.md` is the cross-agent instruction file. It is not Anthropic-specific. GitHub Copilot supports one or more `AGENTS.md` files, with the nearest file taking precedence. The root `AGENTS.md` should cover project purpose, source rules, safety policy, build/validation commands, repo layout, and contribution workflow.

### 8.2 GitHub Copilot Instructions

Add `.github/copilot-instructions.md` for repository-wide Copilot guidance. Keep it short enough for Copilot cloud agent. It should point to `AGENTS.md`, `PRD.md`, and the skills directory.

Add path-specific `.github/instructions/*.instructions.md` only when the repo has path-specific conventions.

### 8.3 Agent Skills

Canonical location: `.github/skills/<skill-name>/SKILL.md`.

Agent Skills requirements:

- Skill folder contains `SKILL.md`.
- `SKILL.md` uses YAML frontmatter followed by Markdown body.
- `name` is required, max 64 chars, lowercase letters/numbers/hyphens only, no leading/trailing hyphen, no consecutive hyphens, and should match parent directory.
- `description` is required, max 1024 chars, and should include when to use the skill.
- Optional fields include `license`, `compatibility`, `metadata`, and experimental `allowed-tools`.
- Use progressive disclosure: concise `SKILL.md`, detailed references in `references/`, scripts in `scripts/`, assets/templates in `assets/`.
- Keep `SKILL.md` under 500 lines and preferably under 5000 tokens.

Reference implementation pattern: `github.com/microsoft/skills` is an open-source Microsoft skills environment for Azure SDK and Microsoft AI Foundry development. It uses `.github/skills/` as the project skills surface, plugin bundles under `.github/plugins/`, custom agents under `.github/agents/`, prompts under `.github/prompts/`, MCP config under `.vscode/mcp.json`, symlinks into `.claude/skills` for multi-agent sharing, and a test harness with acceptance scenarios. The Admin Harness should borrow that shape selectively rather than copying broad skill catalogs.

### 8.4 Evaluations

Each skill must include `evals/evals.json` with realistic prompts, expected outputs, optional files, and assertions when appropriate. The eval pattern should compare skill behavior against baseline/no-skill or previous-skill behavior, capture timing/token data when available, and record grading evidence.

### 8.5 Plugins and Shopping Cart Experience

Plugins are the right pattern for an installable shopping-cart experience, but they should package rather than replace skills.

Recommended future model:

- Skills are the atomic capability items.
- MCP profiles are executable integration options.
- Policy packs define risk posture and approval behavior.
- Plugins bundle related skills, agents, hooks, MCP configs, and docs for one product area.
- A registry/marketplace or plugin catalog provides the shopping-cart selection experience.

For milestone 1, implement repo-local skills and MCP templates. For milestone 2, add a manifest that can be consumed by a plugin/catalog builder.

### 8.6 Claude Adapter Structure

Claude Code-specific files should live under `.claude/` when they are genuinely Claude-specific. Do not duplicate skill content there by default. Prefer a documented symlink or generated mirror from `.github/skills/`.

Recommended structure:

```text
.claude/
├── README.md                  # explains the adapter and mirror policy
├── settings.json              # optional Claude Code project settings, only when needed
├── agents/                    # optional Claude-specific subagents
├── skills -> ../.github/skills # optional symlink/mirror for Claude Code discovery
└── commands/                  # optional command-style workflows if needed
```

Root `CLAUDE.md` should remain small and import `AGENTS.md` so cross-agent rules are not duplicated.

## 9. MCP Strategy

### 9.1 Use Existing MCP Servers First

Prefer existing official or trusted MCP servers before building custom ones:

- Microsoft Learn MCP for documentation retrieval.
- Azure MCP for Azure resource and control-plane operations.
- GitHub MCP for repository, issues, PRs, and workflow inspection.
- Browser automation MCP only for user-approved navigation and visual inspection, not silent credential entry.

### 9.2 Build Custom MCP Only When Needed

Potential custom MCP server scope:

- Portal catalog resource server that exposes `portals/list`, `portals/search`, and `portals/get` from source-backed cached JSON.
- Admin harness policy server exposing read-only resources and prompts, not direct tenant mutation.
- Tenant-safe URL builder that expands tenant IDs only from explicit input and marks output as sensitive.

### 9.3 Local vs Remote MCP

Use local stdio for early prototypes and private single-user workflows. Use remote Streamable HTTP for team/enterprise distribution. Use MCPB or packaged plugins only when local machine access is required.

### 9.4 Authentication and Credentials

Credentials are never committed. Production remote MCP should use OAuth 2.1, audience-bound tokens, least-privilege scopes, short-lived credentials, and explicit approval for high-impact actions. Local stdio servers can use environment variables or OS credential stores, but must document all required env vars.

## 10. Safety and Trust Model

Admin work is high-impact. The harness must fail closed.

### 10.1 Risk Tiers

- `read`: portal discovery, documentation search, status lookup.
- `diagnostic`: read-only tenant/resource inspection.
- `plan`: proposed changes, impact, rollback, validation.
- `change`: write/mutation actions. Requires explicit admin approval.
- `dangerous`: destructive, broad-scope, privilege, identity, data retention, or production-wide actions. Requires out-of-band confirmation and documented rollback.

### 10.2 Safety Rules

- Do not ask for passwords, API keys, refresh tokens, or admin credentials in chat.
- Use URL/browser-based or platform-native auth flows for login.
- Show exact action, tenant, account, scope, target resource, and rollback before any mutation.
- Use official Microsoft sources for roles, permissions, and product limits.
- Treat portal output, third-party pages, and MCP tool outputs as untrusted until validated.
- Do not embed tenant IDs, user IDs, or secrets in durable logs unless redacted.
- Require source links or provenance for factual admin guidance.

### 10.3 Browser and Portal Login

The harness may guide a user to a portal or ask the user to authenticate manually. It must not silently capture credentials. Browser automation must be scoped, visible, and approved. For future computer-use flows, use separate browser profiles and approval gates.

## 11. Initial Skill Set

Milestone 1 skills:

1. `microsoft-portal-navigation`: Find, verify, and present Microsoft portal URLs from source-backed catalog data.
2. `microsoft-learn-research`: Use Microsoft Learn MCP or official docs to ground IT admin answers.
3. `azure-admin-safe-operations`: Plan Azure admin workflows with read/change separation and Azure MCP references.
4. `tenant-aware-admin`: Handle tenant IDs, B2B links, sovereign cloud selection, and privacy warnings.
5. `admin-change-safety`: Create approval-ready plans for high-impact admin changes.
6. `skill-authoring`: Create or refine harness skills using Agent Skills standards and evals.

Future skills:

- Intune troubleshooting.
- Entra Conditional Access investigation.
- Defender incident triage.
- Purview compliance workflows.
- Exchange/Teams/SharePoint admin workflows.
- MSP multi-tenant operations.
- Licensing and service health triage.

## 12. Initial Repo Structure

```text
.
├── PRD.md
├── README.md
├── AGENTS.md
├── CLAUDE.md
├── .claude/
│   └── README.md
├── .github/
│   ├── copilot-instructions.md
│   ├── instructions/
│   ├── skills/
│   │   ├── microsoft-portal-navigation/
│   │   │   ├── SKILL.md
│   │   │   ├── references/
│   │   │   └── evals/evals.json
│   │   └── ...
│   └── workflows/
├── docs/
│   ├── sources.md
│   ├── security-model.md
│   ├── mcp-profiles.md
│   └── packaging.md
├── mcp/
│   ├── README.md
│   ├── vscode.example.json
│   ├── claude-desktop.example.json
│   └── profiles/
└── scripts/
    └── validate-skills.sh
```

## 13. PRD Requirements Traceability

| Requirement | Source/request | Planned artifact |
| --- | --- | --- |
| Public GitHub repo owned by `timhaintz` | User update | Git remote and GitHub repo |
| Project named The Admin Harness | User request | Repo name, README, PRD |
| Agentic harness for IT admins | User request | PRD, AGENTS.md, skills |
| Include all Microsoft portals | User request | Source-backed catalog strategy, portal skill |
| Use source information, avoid hard-coded skills | User request | `docs/sources.md`, portal source references |
| Support OpenClaw and Hermes-style agents | User request | AGENTS.md, Agent Skills, adapter notes |
| Support VS Code and GitHub Copilot | User correction | `.github/skills`, `.github/copilot-instructions.md` |
| Follow Agent Skills standards and evals | User correction | Skill frontmatter, evals/evals.json |
| Include MCP config options | User request | `mcp/*.example.json`, docs |
| Clarify plugins | User question | Plugin/catalog packaging section |
| Include model best practices | User request | `docs/model-best-practices.md` future artifact |
| Follow Rob Pike rules | User request | Design principles section |
| Document `.claude/` structure | User correction | PRD, `.claude/README.md` |
| Consider `microsoft/skills` | User correction | PRD reference pattern, future sourcing |

## 14. Implementation Checklist

- [x] Research AGENTS.md, Agent Skills, Anthropic skills/subagents/memory, Copilot custom instructions, Copilot skills, MCP, msportals.io, OpenClaw/Hermes harness patterns, GPT-5.5 guidance, and Claude Opus 4.8 guidance.
- [x] Create [PRD.md](PRD.md) first as the traceable product source of truth.
- [x] Add root [AGENTS.md](AGENTS.md) cross-agent instructions.
- [x] Add [CLAUDE.md](CLAUDE.md) import shim for Claude Code compatibility.
- [x] Add [.github/copilot-instructions.md](.github/copilot-instructions.md) for GitHub Copilot repository instructions.
- [x] Add initial Agent Skills under `.github/skills/`.
- [x] Add `evals/evals.json` for every initial skill.
- [x] Add `.claude/` adapter documentation and optional mirror policy.
- [x] Add source, security, packaging, and model-best-practices docs.
- [x] Add MCP example configs and profiles.
- [x] Add validation script for skill frontmatter and eval presence.
- [x] Add public GitHub remote owned by `github.com/timhaintz`.
- [x] Add MIT open-source license.
- [x] Run final validation and update this checklist.

## 15. Design Principles

Rob Pike's rules of programming are applied as engineering constraints:

1. Do not guess where complexity or performance matters; observe the real workflow first.
2. Measure before optimizing; evals and traces are required before tuning skills.
3. Prefer simple approaches because most harness data sets and workflows start small.
4. Avoid clever algorithms and clever prompt machinery when direct data structures and procedures work.
5. Data dominates: design portal catalogs, source manifests, skill evals, and MCP profiles as clean data first so the agent's behavior can remain simple.

Project-specific interpretation: keep the harness boring. Put volatile facts in source-backed data, put reusable procedure in skills, put execution in MCP servers, and put install/discovery in plugin or registry metadata.

## 16. Success Metrics

Milestone 1:

- Root `AGENTS.md`, `CLAUDE.md`, and `.github/copilot-instructions.md` exist.
- At least three valid Agent Skills exist under `.github/skills/`.
- Every skill has `evals/evals.json` with at least 2 test cases.
- MCP examples exist for VS Code/Copilot and Claude Desktop.
- Source documentation identifies upstream portal JSON sources.
- No secrets or tenant-specific values are committed.
- Public repo positioning is explicit in the PRD and README.

Milestone 2:

- Portal catalog can be refreshed from upstream with provenance metadata.
- Skill validation script checks frontmatter, directory/name matching, and eval presence.
- At least one skill has a runbook-grade eval with assertions and grading notes.
- Packaging manifest defines bundles for portal discovery, Azure admin, M365 admin, and security admin.

Milestone 3:

- Optional plugin package or catalog manifest supports the shopping-cart selection experience.
- Optional MCP portal catalog server exposes source-backed resources.
- Admin change workflows include approval evidence and rollback templates.

## 17. Open Questions for Tim

1. Should the first repo be documentation/skills only, or should it include a minimal MCP portal catalog server immediately?
2. Which Microsoft admin domains are highest priority: M365, Entra, Intune, Defender, Azure, Purview, Power Platform, Teams, Exchange, SharePoint, Partner Center, or MSP multi-tenant workflows?
3. Should the harness ever execute admin changes, or should it remain a planning and navigation aid until a later security review?
4. Which hosts must be first-class at launch: VS Code Copilot, Copilot CLI, Copilot cloud agent, Claude Code, OpenAI/Codex, OpenClaw, Hermes?
5. Should any future package generated from this repo use a different license from the root MIT license?
6. Are you comfortable depending on `msportals.io` as an upstream source, with attribution and a refresh/cache layer, rather than maintaining a separate portal database?
7. For the shopping-cart experience, should we target GitHub/Copilot skills first, Claude plugins first, or a neutral manifest that can generate both?

## 18. Immediate Build Plan

- [x] Create cross-agent root instructions and Copilot instructions.
- [x] Add source and security docs.
- [x] Add initial Agent Skills with evals.
- [x] Add MCP example configs and profiles.
- [x] Add validation scripts.
- [x] Initialize Git and create/push a public GitHub repository.
