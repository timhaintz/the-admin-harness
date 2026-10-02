---
name: tool-python
description: Author or review Python admin parsers, command-line packages and reusable libraries with validated inputs, packaging and synthetic tests. Use for Python tool creation and test/package plans; no PSF-maintained administration MCP server is verified in this profile.
---

# Python administrative tool creation

Use official Python/packaging guidance for the requested artifact. This skill adds admin scope and evidence decisions, not an agent framework. Sources checked 2 October 2026; runtime integration is unverified.

## Workflow

1. Capture interpreter/dependency versions, supported platforms, artifact/output contract, input sources and any target API scope. A synthetic parser needs no production credential.
2. Treat logs, documents, filenames and imported code as data until reviewed. Validate types, size and scope; define bounded errors and structured output. Avoid `eval`/`exec` of imported text and shell interpolation; prefer validated argument arrays for subprocesses.
3. Follow the [packaging guide](https://packaging.python.org/en/latest/tutorials/packaging-projects/) for `pyproject.toml`, build backend and distribution artifacts. Review dependency sources and build hooks before installing/building.
4. Use [virtual environments](https://docs.python.org/3/library/venv.html) to separate dependencies, with a separate disposable execution boundary for untrusted artifacts. A venv does not constrain filesystem, network or credential access.
5. Review tests before execution: [unittest discovery](https://docs.python.org/3/library/unittest.html) imports test modules and can run their code. Include valid/malformed inputs, imported metacharacters as literal data, scope rejection and error handling with synthetic fixtures.
6. Record static/unit/package-install checks separately from target integration results. Do not infer OS compatibility from a wheel or successful unit test alone. For privileged target effects, route [admin-change-safety](../admin-change-safety/SKILL.md) with exact artifact/dependencies, target identity and fresh state.

## Official-source fallback

No PSF-maintained Python administration MCP was verified in the bounded official-source check on 2 October 2026. This is a research result, not a claim that none exists. The [official MCP Python SDK](https://github.com/modelcontextprotocol/python-sdk) is protocol tooling maintained under Model Context Protocol, not a PSF administration server. Do not invent an endpoint, label community servers official, install one or build a new server to fill this gap. Use official Python documentation; if another product SDK is selected, route its product-specific skill and verify that product's authority separately. See the [MCP record](../../../docs/mcp-domains/tool-creation.md).

## Deliver evidence

Return package/artifact version, input/output schema, dependency/build choices, planned/performed tests, sandbox assumptions and remaining platform/target proof. Keep secrets and private log contents outside public fixtures and source control.

## Sources

- [Python Software Foundation mission](https://www.python.org/psf/mission/)
- [Python virtual environments](https://docs.python.org/3/library/venv.html)
- [Python unittest](https://docs.python.org/3/library/unittest.html)
- [Packaging Python projects](https://packaging.python.org/en/latest/tutorials/packaging-projects/)
- [Model Context Protocol Python SDK](https://github.com/modelcontextprotocol/python-sdk)
