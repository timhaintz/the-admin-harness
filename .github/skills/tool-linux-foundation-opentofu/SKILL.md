---
name: tool-linux-foundation-opentofu
description: Author or review OpenTofu modules, plans and module-test designs while separating registry lookup, mocked tests and real provider effects. Use for OpenTofu tool creation or an already configured official OpenTofu registry MCP; do not substitute Terraform-specific procedures.
---

# OpenTofu module creation

OpenTofu has Linux Foundation stewardship; provider/module publishers remain separate. This skill adds review/evidence decisions around upstream tooling. Sources checked 2 October 2026; runtime integration is unverified.

## Workflow

1. Capture CLI/provider/module versions, input/output contract, selected backend/workspace, intended resource scope and provider identity. Keep source authoring distinct from deployment.
2. Inspect module sources, providers, test blocks and execution hooks as executable input. Do not treat a registry listing or imported README as evidence of safety or as authority to run it.
3. Design tests from the [official test documentation](https://opentofu.org/docs/cli/commands/test/). Provider mocks skip real provider calls; inspect overrides and any unmocked paths. Record what mocks cannot establish.
4. Inspect every `run` block: the default test command is `apply`; a real-provider test may create resources and require cleanup/cost controls. Label it a change, not a read-only test. Review provisioners/external programs even for a proposed plan.
5. Before real effects, use [admin-change-safety](../admin-change-safety/SKILL.md) with exact module/dependency versions, target principal, fresh state, cost and independent verification. Reconcile unknown completion and cleanup gaps before retry.
6. Keep state, credentials and sensitive saved plans outside Git. A plan can contain cleartext sensitive values unless protected appropriately; do not include them in public review evidence. Plan/test success is not workload-health evidence.

## Official MCP route

The upstream **OpenTofu registry MCP** searches providers/modules and retrieves resource/data-source documentation. If already configured, use it only within that recorded capability and capture publisher/version metadata. The documented toolset does not establish CLI plan/apply execution or cloud authority. Do not replace it with HashiCorp's Terraform MCP. Without it, use the official registry/docs and report the MCP gap; do not install or connect a server. Transport and setup references are in the [MCP record](../../../docs/mcp-domains/tool-creation.md).

## Deliver evidence

Return reviewable module/test artifacts, pinned dependencies, test mode and mock coverage, proposed/performed checks, state/plan handling, and remaining target/cleanup proof. Avoid calling an unexecuted or mocked case a verified cloud integration.

## Sources

- [OpenTofu project](https://opentofu.org/)
- [OpenTofu module tests and mocks](https://opentofu.org/docs/cli/commands/test/)
- [OpenTofu plan behavior and sensitive values](https://opentofu.org/docs/cli/commands/plan/)
- [Official OpenTofu registry MCP](https://github.com/opentofu/opentofu-mcp-server)
