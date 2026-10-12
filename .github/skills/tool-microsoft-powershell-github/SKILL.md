---
name: tool-microsoft-powershell-github
description: Author or review PowerShell admin scripts/modules and GitHub CI or artifact-review workflows with scoped identities and injection-resistant inputs. Use for this toolchain's creation/tests or a configured official GitHub MCP, which does not provide PowerShell target execution.
---

# PowerShell and GitHub tool creation

This route groups Microsoft/GitHub source tooling and PowerShell artifact authoring. It does not imply access to Microsoft administration products. Sources checked 2 October 2026; runtime integration is unverified.

## Workflow

1. Capture PowerShell/runtime/module versions, host platforms, artifact and input/output contract, repository/job permissions, and separately any target API/remote-host authority.
2. Validate parameters and scope; pass imported values as data through structured arguments. Avoid evaluating imported expressions, constructing shell commands, or inserting untrusted GitHub expression values directly into inline `run` script code.
3. Use [PSScriptAnalyzer](https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/overview) for static rules, plus reviewed synthetic tests for valid/invalid parameters, target scope and errors. Static analysis does not establish target correctness or execution safety. Do not run imported scripts merely to inspect them.
4. Apply [GitHub Actions secure-use guidance](https://docs.github.com/en/actions/reference/security/secure-use): minimum token permissions, reviewed full commit SHAs for external actions, and scrutiny of privileged triggers checking out untrusted changes. Review workflows/dependencies before any CI run that executes them.
5. If cloud access is required, use official [OIDC guidance](https://docs.github.com/en/actions/concepts/security/openid-connect) for supported providers with an explicit target trust policy. Source authentication or an OIDC token does not establish permission to deploy.
6. For privileged target effects, route [admin-change-safety](../admin-change-safety/SKILL.md) with exact script/workflow versions, principal, target and fresh state. Publication, repository writes and CI triggering require scope that covers those actions.

## Reuse and official MCP route

Check the [upstream register](../../../docs/upstream-skill-register.md) first; route actual Agent Skill authoring to [skill-authoring](../skill-authoring/SKILL.md) and relevant Microsoft official skills where their scope matches. GitHub publishes an [official agent plugin](https://github.com/github/github-mcp-server/tree/main/agent-plugin) bundling its MCP connection; this is an integration reference, not evidence of a separate skill pack.

If **GitHub's official MCP** is already configured, record GitHub instance, identity, repository scope and toolset/read-only mode. Use authorised repository context tools; a write tool's presence is not approval. The server does not execute PowerShell or grant Windows/tenant privileges. Without it, use official docs and report the MCP gap; do not install/connect a server or request tokens in chat. See the [MCP record](../../../docs/mcp-domains/tool-creation.md).

## Deliver evidence

Return artifact/version, parameter contract, static versus execution test results, reviewed Actions/dependencies, repository/job versus target identities, and untested platforms/effects. Keep operational data and credentials outside source and review output.

## Sources

- [PSScriptAnalyzer overview](https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/overview)
- [GitHub Actions secure use](https://docs.github.com/en/actions/reference/security/secure-use)
- [GitHub Actions OIDC](https://docs.github.com/en/actions/concepts/security/openid-connect)
- [GitHub official MCP](https://github.com/github/github-mcp-server)
- [GitHub official agent plugin](https://github.com/github/github-mcp-server/tree/main/agent-plugin)
- [Microsoft official skills catalog](https://github.com/microsoft/skills)
