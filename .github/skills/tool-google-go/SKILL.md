---
name: tool-google-go
description: Author or review Go administrative CLIs and libraries with explicit input, output, dependency and platform contracts. Use for Go tool creation, Go test/build plans, or interpreting an already configured official gopls MCP during admin-tool development.
---

# Go administrative tool creation

Use Go's existing tooling and official guidance. This skill adds admin artifact/evidence boundaries; it does not create an agent framework. Sources checked 2 October 2026; runtime integration is unverified.

## Workflow

1. Record Go/toolchain and module versions, supported OS/architectures, artifact contract, target API and required identity. Start with synthetic data when target access is unnecessary.
2. Validate flags and inputs before operations; define bounded timeouts, structured output and meaningful nonzero errors. Use structured arguments rather than interpolating imported text into a shell. Keep diagnostic reads separate from mutation code paths.
3. Follow official [tests](https://go.dev/doc/tutorial/add-a-test) and [build guidance](https://go.dev/doc/tutorial/compile-install). Review tests and dependencies before executing them; module loading/builds can download code and write caches. Select a disposable boundary for untrusted imports.
4. Include valid/invalid inputs, target-scope rejection and failure/timeout cases. Record build/test results for each declared platform, including skips. A binary built for a platform is not proof it ran there.
5. Use [govulncheck guidance](https://go.dev/doc/security/) for known vulnerabilities when within scope; do not equate its result with correct permissions, safe recovery or operational health.
6. For privileged target execution, route [admin-change-safety](../admin-change-safety/SKILL.md). Bind review to the actual binary/source/dependency versions and exact target; a compilation result cannot approve effects.

## Official MCP route

If the official **gopls MCP** is already configured, record server version, project scope and advertised tools first. It is experimental; current docs require **gopls v0.20+**. Detached stdio sees saved files, while attached SSE shares the language-server buffer state. Do not use a saved-file result to validate unsaved code. Gopls can load Go packages, download modules and write caches/configuration; it is not an execution sandbox. Reuse the official model guidance exposed by `gopls mcp -instructions` when available through an authorised workflow. Without the server, use official docs and disclose the MCP gap. See the [MCP record](../../../docs/mcp-domains/tool-creation.md) for setup references; do not install or start it from this skill.

## Deliver evidence

Return artifact and argument/output contract, reviewed dependencies, version/platform matrix, checks performed versus proposed, and target authority/verification gaps. Redact private paths, data and credentials from shared evidence.

## Sources

- [Go project](https://go.dev/project)
- [Go tests](https://go.dev/doc/tutorial/add-a-test)
- [Go build and install](https://go.dev/doc/tutorial/compile-install)
- [Go security](https://go.dev/doc/security/)
- [Gopls official MCP modes, effects and model instructions](https://go.dev/gopls/features/mcp)
