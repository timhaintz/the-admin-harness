# Administration Domain Catalog

Source review date: 2 October 2026. Status: research and proposed workflow coverage; no new tools, skills, MCP servers, or workstation profiles are installed by this catalog.

Administrators should be able to select relevant use cases, identify their products and requirements, and find the appropriate authoritative sources and available capabilities. This catalog extends the existing Microsoft portal research across five administration areas. It supports later selectable bundles without assuming that choosing a domain provisions components or grants permission to change a target.

## Five Organisations Per Domain

The project's requested "top five" is recorded here as an editorial shortlist of five relevant vendors or upstream maintainers per domain. The selection balances administrative scope, representative product families, and available official documentation. It is not a market-share, popularity, revenue, or recommendation ranking; no independent adoption dataset or ranking metric has been established. Entries are listed alphabetically and are not exhaustive. The same organisation may appear in more than one domain; related product brands do not count as separate organisations within one shortlist.

| Domain | Five selected organisations or maintainers | Detailed research |
| --- | --- | --- |
| Systems and services | Broadcom; Canonical; Microsoft; Red Hat; SUSE | [Systems and services](admin-domains/systems-and-services.md) |
| Networking | Arista Networks; Cisco; Fortinet; HPE; Palo Alto Networks | [Networking](admin-domains/networking.md) |
| Databases | Microsoft; MongoDB; Oracle; PostgreSQL Global Development Group; Redis | [Databases](admin-domains/databases.md) |
| Cloud and infrastructure | Amazon Web Services; Google Cloud; IBM; Microsoft; Oracle | [Cloud and infrastructure](admin-domains/cloud-and-infrastructure.md) |
| Tool creation | Google; Linux Foundation; Microsoft; Python Software Foundation; Red Hat | [Tool creation](admin-domains/tool-creation.md) |

Each detailed guide provides product examples, claim-level official references, proposed administration workflows, and implementation or evidence gaps. Product brands and community maintainers are named explicitly; a maintained product's documentation does not establish that its organisation is a market leader.

## How To Use The Research

1. Choose one or more domains and record the actual vendor/product, version, target environment, intended task, and allowed scope.
2. Use the relevant guide to locate official documentation. Resolve version, edition, region, support, and licensing differences before giving procedural instructions.
3. Check [the upstream skill register](upstream-skill-register.md) and the product maintainer's current tools or integrations before creating a local skill. Keep existing Microsoft Learn and Azure routing where applicable.
4. Separate documentation lookup and read-only observation from a proposed change. Establish the target principal and documented permissions through the user's native authentication; no passwords, tokens, or credential caches belong in the repository or chat.
5. Propose prerequisites, exact scope, effects, success checks, and recovery limits. A profile choice, vendor reference, or model-generated plan is not mutation approval.
6. Evaluate a chosen workflow in a disposable environment before marking a skill, integration, or profile supported. Retain native evidence and record skipped, unavailable, partial, or unknown results honestly.

The same discovery and review concepts can be shared across Mac and Windows, but each tool's supported host/guest architecture and authentication path still needs verification. Source links alone do not establish desktop parity, binary portability, package availability, or a protected execution boundary.

## Research Versus Implementation

| Layer | Current status for this catalog |
| --- | --- |
| Five-domain organisation and source discovery | Documented in the linked guides |
| Existing Microsoft portal skills | Unchanged; see [portal skill coverage](portal-skill-coverage.md) |
| New broader-domain Agent Skills and evals | Not added by this update |
| New executable MCP profiles or adapters | Not added by this update |
| Tool installation, service provisioning, or profile selection UI | Proposed; not implemented or tested here |
| Cross-platform ready-to-use desktop | Proposed deployment concern; not certified by this research |
| Production or customer target actions | None performed by this update |

Future profile manifests should bind supported product versions and per-architecture artifacts to dependencies, resource budgets, authentication prerequisites, ports/mounts/network access, state locations, health checks, and owned cleanup. Repeated activation, interrupted preparation, profile switching, and removal need separate lifecycle tests. Removing a tool or disposable service must not silently remove case evidence or unrelated user state.

## Refresh And Source Gaps

- Recheck official version-specific documentation when using a guide for an actual task; the review date is not a perpetual compatibility claim.
- Vendor documentation supports product capabilities and procedures, not comparative adoption or independent security assurance.
- A genuine ranked top-five list needs a defined metric, population, measurement date, and independently sourced evidence.
- Upstream skill/MCP overlap, redistribution rights, package provenance, authentication behaviour, and practical workflow evaluations remain to be checked for each new integration.
- Category membership is editorial. Administrators can require products outside these shortlists; coverage should expand from their requirements and authoritative sources.

## Sources

- [Systems and services research and official sources](admin-domains/systems-and-services.md)
- [Networking research and official sources](admin-domains/networking.md)
- [Database research and official sources](admin-domains/databases.md)
- [Cloud and infrastructure research and official sources](admin-domains/cloud-and-infrastructure.md)
- [Tool creation research and official sources](admin-domains/tool-creation.md)
- [Source register](source-register.md)
- [PRD domain research requirements](../PRD.md#77-broader-domain-research)
- [Existing upstream skill reuse guidance](upstream-skill-register.md)
- [Script safety](script-safety.md)
- [Agent Skills specification](https://agentskills.io/specification)
