# Administration Skill Coverage

Reviewed: 2 October 2026. The five domain routers cover all 25 organisation/domain entries in the [catalog](admin-domain-catalog.md). There are 29 new skills: five area routers and 24 specialist routes. Azure reuses and updates the existing `azure-admin-safe-operations` skill instead of adding a duplicate.

These are authored research, diagnostic guidance and planning skills. Each has evaluation fixtures; structure checks and model-only trials are recorded separately from actual target or desktop integration. No skill installs a server, supplies credentials or grants target authority. Read [the validation record](evals/admin-domain-validation.md) before interpreting a support claim.

## Area Routers

| Area | Discoverable skill | Official MCP inventory |
| --- | --- | --- |
| Systems and services | [admin-systems-services](../.github/skills/admin-systems-services/SKILL.md) | [Systems MCPs](mcp-domains/systems-and-services.md) |
| Networking | [admin-networking](../.github/skills/admin-networking/SKILL.md) | [Network MCPs](mcp-domains/networking.md) |
| Databases | [admin-databases](../.github/skills/admin-databases/SKILL.md) | [Database MCPs](mcp-domains/databases.md) |
| Cloud and infrastructure | [admin-cloud-infrastructure](../.github/skills/admin-cloud-infrastructure/SKILL.md) | [Cloud MCPs](mcp-domains/cloud-and-infrastructure.md) |
| Tool creation | [admin-tool-creation](../.github/skills/admin-tool-creation/SKILL.md) | [Tool MCPs](mcp-domains/tool-creation.md) |

## Organisation Routes

| Area | Organisation / product context | Local skill |
| --- | --- | --- |
| Systems | Broadcom / VMware | [system-broadcom-vmware](../.github/skills/system-broadcom-vmware/SKILL.md) |
| Systems | Canonical / Ubuntu | [system-canonical-ubuntu](../.github/skills/system-canonical-ubuntu/SKILL.md) |
| Systems | Microsoft / Windows Server | [system-microsoft-windows](../.github/skills/system-microsoft-windows/SKILL.md) |
| Systems | Red Hat / RHEL | [system-red-hat-rhel](../.github/skills/system-red-hat-rhel/SKILL.md) |
| Systems | SUSE / SLES and system management | [system-suse-sles](../.github/skills/system-suse-sles/SKILL.md) |
| Networking | Arista / EOS | [network-arista](../.github/skills/network-arista/SKILL.md) |
| Networking | Cisco | [network-cisco](../.github/skills/network-cisco/SKILL.md) |
| Networking | Fortinet | [network-fortinet](../.github/skills/network-fortinet/SKILL.md) |
| Networking | HPE / Aruba and Juniper | [network-hpe](../.github/skills/network-hpe/SKILL.md) |
| Networking | Palo Alto Networks | [network-palo-alto](../.github/skills/network-palo-alto/SKILL.md) |
| Databases | Microsoft / SQL Server | [database-microsoft-sql-server](../.github/skills/database-microsoft-sql-server/SKILL.md) |
| Databases | MongoDB | [database-mongodb](../.github/skills/database-mongodb/SKILL.md) |
| Databases | Oracle Database | [database-oracle](../.github/skills/database-oracle/SKILL.md) |
| Databases | PostgreSQL maintainers | [database-postgresql](../.github/skills/database-postgresql/SKILL.md) |
| Databases | Redis | [database-redis](../.github/skills/database-redis/SKILL.md) |
| Cloud | Amazon Web Services | [cloud-aws](../.github/skills/cloud-aws/SKILL.md) |
| Cloud | Google Cloud | [cloud-google](../.github/skills/cloud-google/SKILL.md) |
| Cloud | IBM Cloud | [cloud-ibm](../.github/skills/cloud-ibm/SKILL.md) |
| Cloud | Microsoft / Azure | [azure-admin-safe-operations](../.github/skills/azure-admin-safe-operations/SKILL.md) (updated existing skill) |
| Cloud | Oracle / OCI | [cloud-oracle](../.github/skills/cloud-oracle/SKILL.md) |
| Tool creation | Google / Go | [tool-google-go](../.github/skills/tool-google-go/SKILL.md) |
| Tool creation | Linux Foundation / OpenTofu | [tool-linux-foundation-opentofu](../.github/skills/tool-linux-foundation-opentofu/SKILL.md) |
| Tool creation | Microsoft / PowerShell and GitHub | [tool-microsoft-powershell-github](../.github/skills/tool-microsoft-powershell-github/SKILL.md) |
| Tool creation | Python Software Foundation | [tool-python](../.github/skills/tool-python/SKILL.md) |
| Tool creation | Red Hat / Ansible | [tool-red-hat-ansible](../.github/skills/tool-red-hat-ansible/SKILL.md) |

## Selection And Reuse

Choose the area router when the product or task is unclear; load only relevant specialist skills after establishing requirements. Combining areas does not imply installing every listed tool. Specialist skills route to configured official MCPs and official upstream skills when their documented product coverage matches; otherwise use the vendor's official documentation and report missing live observations.

All broader-domain external product and MCP sources must be official vendor/upstream material. The local skills add scope, source selection, review and evidence guidance; they do not vendor upstream skill packs or claim to be vendor-authored. [Overlap decisions](upstream-skill-register.md) explain that distinction. [Admin change safety](../.github/skills/admin-change-safety/SKILL.md) now applies across vendors; it remains a planning skill with no execution adapter.

## Sources

- [Official MCP catalog](official-mcp-catalog.md)
- [Source register](source-register.md)
- [Agent Skills specification](https://agentskills.io/specification)
- [Upstream reuse decisions](upstream-skill-register.md)
- [Domain catalog and official product references](admin-domain-catalog.md)
