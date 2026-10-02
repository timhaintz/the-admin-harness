# Tool creation

Research checked: **2 October 2026**. Status: **domain guidance, skill routes and evaluation fixtures added; integrations and workflows not runtime-verified**.

This domain helps administrators author, test, review, package and maintain automation: scripts, command-line tools, configuration-management content and infrastructure modules. It can support any of the other administration domains. These five organisations are an editorial coverage shortlist based on those distinct authoring needs and available primary documentation. They are not a market-share ranking, and inclusion does not establish a supported integration.

## Five priority organisations

| Organisation / stewardship boundary | Representative tools and documented capability | Initial workflow to evaluate | Authority and packaging to record |
| --- | --- | --- | --- |
| **Google**, alongside Go's open-source contributors | The [Go project](https://go.dev/project) identifies a Google team and community contributors. Go documents [tests](https://go.dev/doc/tutorial/add-a-test), [build/install](https://go.dev/doc/tutorial/compile-install) and [govulncheck](https://go.dev/doc/security/) for known vulnerabilities affecting called code. | Build a small read-only diagnostic CLI with an explicit argument schema, machine-readable output and tests for invalid inputs. | Record toolchain/module versions and build artifacts for each supported OS/architecture. The compiled tool's OS and target API privileges remain its authority boundary; choosing Go does not grant target access. |
| **Linux Foundation**, as OpenTofu's steward; community maintainers own project implementation | [OpenTofu's official site](https://opentofu.org/) identifies Linux Foundation stewardship. Its CLI supports infrastructure plans and [module tests](https://opentofu.org/docs/cli/commands/test/), including provider mocks that skip real provider resource/data-source calls. | Build a reusable module, test configuration with mocked providers, then evaluate an explicitly authorised disposable environment separately. | Pin the CLI, providers and module sources. Record backend, workspace, provider identity and resource scope. Protect state and saved plans outside public source: [plans can contain sensitive values](https://opentofu.org/docs/cli/commands/plan/). Real-provider tests require a change/cost boundary. |
| **Microsoft**, including GitHub as one organisation group | PowerShell and [PSScriptAnalyzer](https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/overview) provide script/module authoring and static analysis. GitHub Actions supplies CI workflows with documented [security controls](https://docs.github.com/en/actions/reference/security/secure-use). Microsoft [completed the GitHub acquisition](https://blogs.microsoft.com/blog/2018/10/26/microsoft-completes-github-acquisition/). | Create a read-only inventory script, review its permissions, run static checks and tests, then submit the exact artifact for human review. Route overlapping skills through the [upstream register](../upstream-skill-register.md). | Pin runtime/module versions and external Actions to reviewed full commit SHAs. Define repository/job token permissions. For supported cloud providers, [OIDC](https://docs.github.com/en/actions/concepts/security/openid-connect) can exchange workflow identity for short-lived access; target trust policy still needs configuration. |
| **Python Software Foundation (PSF)** | The PSF [produces the core Python distribution](https://www.python.org/psf/mission/). Python supplies [virtual environments](https://docs.python.org/3/library/venv.html) and [unittest](https://docs.python.org/3/library/unittest.html); the [official packaging guide](https://packaging.python.org/en/latest/tutorials/packaging-projects/) describes `pyproject.toml`, wheels and source distributions. | Turn a synthetic log/inventory parser into a tested package with validated inputs, structured results and documented error handling. | Record interpreter and dependency versions plus the build backend. Start without target credentials; any later SDK/API access needs separately documented scopes. A virtual environment separates dependencies; this profile must provide a separate execution boundary for untrusted tests. |
| **Red Hat**, with community Ansible distinguished from its subscription platform | [Red Hat Ansible Automation Platform](https://docs.ansible.com/platform.html) packages automation management and execution environments. Community Ansible documents [collection sanity, unit and integration tests](https://docs.ansible.com/projects/ansible/latest/dev_guide/developing_collections_testing.html). | Author a small collection or playbook for a disposable Linux service; inspect check-mode output, run integration tests, then verify resulting service health independently. | Record `ansible-core`, collection versions and the execution environment. The [connection guide](https://docs.ansible.com/projects/ansible/latest/inventory_guide/connection_details.html) distinguishes the remote user, SSH authentication and privilege escalation. Inventory, target credentials and escalation authority are separate from source access. |

The workflow and packaging columns are **Admin Harness proposals** informed by the linked product capabilities. Exact product versions, roles, licenses, costs and host compatibility must be checked for the selected implementation before installation or execution. Foundation stewardship is not a claim that every ecosystem package is maintained or supported by that foundation.

## Source-backed workflow boundaries

- **Review generated code as executable input.** GitHub documents script-injection risks from untrusted workflow values, minimum token permissions, action pinning and risks from privileged triggers that check out untrusted code. This profile should accept structured arguments and review dependencies before executing generated artifacts. [GitHub secure use](https://docs.github.com/en/actions/reference/security/secure-use)
- **Make dry-run limitations visible.** Ansible check mode simulates supported tasks; unsupported modules and registered-variable dependencies can leave gaps. Tasks with `check_mode: false` can still change a target when `--check` is requested, so inspect the playbook before running it. Diff mode can disclose sensitive values. A successful preview is not independent proof of a successful change. [Ansible check/diff modes](https://docs.ansible.com/projects/ansible/latest/playbook_guide/playbooks_checkmode.html)
- **Separate mocked tests from target tests.** OpenTofu provider mocks skip real provider operations; unmocked test runs can plan/apply resources. Record the test configuration and credential/network boundary so a passing mock test is not presented as cloud integration evidence. [OpenTofu tests](https://opentofu.org/docs/cli/commands/test/)
- **Treat test code as executable.** Python test discovery imports modules; Ansible integration tests can install software and start/stop services. Run reviewed tests in a disposable environment with synthetic fixtures and narrowly scoped access. [Python unittest](https://docs.python.org/3/library/unittest.html), [Ansible collection testing](https://docs.ansible.com/projects/ansible/latest/dev_guide/developing_collections_testing.html)
- **Keep checks proportionate to their guarantees.** PSScriptAnalyzer checks static rules and govulncheck checks known Go vulnerabilities. Neither establishes that an admin tool has correct target scope, safe recovery or complete operational verification. Those require workflow evaluations and an actual disposable target. [PSScriptAnalyzer](https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/overview), [Go security](https://go.dev/doc/security/)

## Proposed profile preparation and evaluation

The chooser should ask for the required artifact (script, CLI, playbook/collection or infrastructure module), intended target platforms, chosen language/tools, and whether the task is read-only or changes state. Show the selected runtimes, dependencies, test environment and requested credentials before preparing them. Source-control authentication, CI execution identity and target administration authority must remain distinct.

Start with one authoring toolchain selected by the administrator. Reuse official skills and established host integrations after the [upstream overlap check](../upstream-skill-register.md). The new local routes add scope, review and evidence decisions around those tools; their evaluation fixtures do not certify runtime integration. This research adds no agent loop, MCP server, credentials or installed toolchain.

The [admin-tool-creation router](../../.github/skills/admin-tool-creation/SKILL.md) selects [Go](../../.github/skills/tool-google-go/SKILL.md), [OpenTofu](../../.github/skills/tool-linux-foundation-opentofu/SKILL.md), [PowerShell/GitHub](../../.github/skills/tool-microsoft-powershell-github/SKILL.md), [Python](../../.github/skills/tool-python/SKILL.md) or [Ansible](../../.github/skills/tool-red-hat-ansible/SKILL.md). The [official MCP record](../mcp-domains/tool-creation.md) distinguishes publisher, product, delivery and authority boundaries. A configured server is optional for authoring; source-backed documentation remains available when MCP is absent. GitHub MCP is not a PowerShell executor, registry MCP is not cloud execution, and Ansible development tooling is separate from AAP job execution.

Proposed acceptance cases:

1. A read-only tool handles valid and invalid synthetic inputs, produces usable structured output, and needs no production credential.
2. Imported text containing shell metacharacters is handled as data; requested scope outside the approved target is refused.
3. Editing code, dependencies or the planned target invalidates prior change approval. A human reviews the exact artifact before any privileged operation.
4. Tests record runtime/dependency versions and distinguish mocks, static checks and actual target verification. Failure, timeout and cleanup gaps remain visible.
5. A fresh installation can build/use the documented package. Cross-platform claims have results for each declared host/architecture; missing platforms stay explicitly unverified.

## Sources

Official sources checked on 2 October 2026; linked documentation may change. Product facts above are paraphrased; workflow choices and acceptance cases are proposals.

- [Microsoft completes GitHub acquisition](https://blogs.microsoft.com/blog/2018/10/26/microsoft-completes-github-acquisition/)
- [PSScriptAnalyzer overview](https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/overview)
- [GitHub Actions secure use](https://docs.github.com/en/actions/reference/security/secure-use)
- [GitHub Actions OpenID Connect](https://docs.github.com/en/actions/concepts/security/openid-connect)
- [Python Software Foundation mission](https://www.python.org/psf/mission/)
- [Python virtual environments](https://docs.python.org/3/library/venv.html)
- [Python unittest](https://docs.python.org/3/library/unittest.html)
- [Packaging Python projects](https://packaging.python.org/en/latest/tutorials/packaging-projects/)
- [Red Hat Ansible Automation Platform](https://docs.ansible.com/platform.html)
- [Ansible collection testing](https://docs.ansible.com/projects/ansible/latest/dev_guide/developing_collections_testing.html)
- [Ansible connection methods](https://docs.ansible.com/projects/ansible/latest/inventory_guide/connection_details.html)
- [Ansible check and diff modes](https://docs.ansible.com/projects/ansible/latest/playbook_guide/playbooks_checkmode.html)
- [OpenTofu project](https://opentofu.org/)
- [OpenTofu module tests](https://opentofu.org/docs/cli/commands/test/)
- [OpenTofu plans](https://opentofu.org/docs/cli/commands/plan/)
- [The Go project](https://go.dev/project)
- [Go tests](https://go.dev/doc/tutorial/add-a-test)
- [Go build and install](https://go.dev/doc/tutorial/compile-install)
- [Go security](https://go.dev/doc/security/)
- [Admin Harness script safety](../script-safety.md)
- [Admin Harness upstream skill register](../upstream-skill-register.md)
- [Admin Harness tool-creation MCP record](../mcp-domains/tool-creation.md)
