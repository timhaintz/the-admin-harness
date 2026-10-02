# Databases: organisation and workflow research

Checked: 2026-10-02. Status: research and proposed coverage; this page does not implement a database skill, connector, provisioner, or ready-to-use lab.

This is an editorial shortlist of five organisations or maintainer groups for the database profile. It covers relational databases, document databases, and an in-memory data store. It is not a market-share ranking, an exhaustive catalog, or a recommendation to install every product. Organisations are listed alphabetically; the PostgreSQL Global Development Group is a community maintainer group rather than a commercial vendor.

## Five priority organisations

| Organisation / maintainer | Representative system | Source-backed administration coverage | Version and preparation notes |
| --- | --- | --- | --- |
| Microsoft | SQL Server | Authentication and database access; full, differential, and transaction-log backup/restore strategy. Use the official [permissions overview](https://learn.microsoft.com/en-us/sql/relational-databases/security/authentication-access/getting-started-with-database-engine-permissions?view=sql-server-ver17) and [backup/restore overview](https://learn.microsoft.com/en-us/sql/relational-databases/backup-restore/back-up-and-restore-of-sql-server-databases?view=sql-server-ver17). | These references select SQL Server 2025 documentation. Match the actual server, edition, OS, and client before planning an operation. [Edition and feature differences](https://learn.microsoft.com/en-us/sql/sql-server/editions-and-components-of-sql-server-2025?view=sql-server-ver17) affect deployment choices; lab rights must not be assumed to cover production. |
| MongoDB, Inc. | MongoDB, including self-managed deployments | Authentication, role-based access control, transport encryption, performance observation, and multiple backup approaches. [Security](https://www.mongodb.com/docs/manual/security/), [performance](https://www.mongodb.com/docs/manual/administration/analyzing-mongodb-performance/), and [backup methods](https://www.mongodb.com/docs/manual/core/backups/) provide the starting sources. | The manual's default version is a moving selector. Pin the deployed version and distinguish self-managed, Atlas, and enterprise management tools. Backup methods have topology and consistency tradeoffs; a dump is not a universal substitute for a tested recovery plan. |
| Oracle | Oracle AI Database | Database administration, separate administrative privileges, and backup/recovery. Oracle documents the `SYSBACKUP` administrative privilege in [administration fundamentals](https://docs.oracle.com/en/database/oracle/oracle-database/26/admin/getting-started-with-database-administration.html); use the [backup and recovery guide](https://docs.oracle.com/en/database/oracle/oracle-database/26/bradv/) for recovery planning. | These references select 26ai; they do not establish the installed version or entitlement. Resolve release, edition, multitenant scope, platform support, and permitted lab use before selecting binaries or features. |
| PostgreSQL Global Development Group | PostgreSQL | Role-based database access, monitoring, and SQL dump, filesystem backup, and continuous-archiving recovery approaches. [Project identity](https://www.postgresql.org/about/), [roles](https://www.postgresql.org/docs/18/user-manag.html), [monitoring](https://www.postgresql.org/docs/18/monitoring.html), and [backup/restore](https://www.postgresql.org/docs/18/backup.html) ground this coverage. | Operational references are pinned to major version 18, rather than the moving `current` alias. Select matching server, client, extension, and backup documentation for the target deployment. |
| Redis Ltd. (Redis) | Redis Open Source; separately consider Redis Cloud or Redis Software | User/command/key access through ACLs; persistence through RDB snapshots, AOF, or both. [ACLs](https://redis.io/docs/latest/operate/oss_and_stack/management/security/acl/), [network security](https://redis.io/docs/latest/operate/oss_and_stack/management/security/), and [persistence](https://redis.io/docs/latest/operate/oss_and_stack/management/persistence/) describe distinct controls and durability tradeoffs. | The referenced docs use `latest`; resolve the exact product and release. Redis recommends restricting direct access to trusted clients. Check the [release-specific license information](https://redis.io/legal/licenses/) before selecting or redistributing a package; this page makes no legal or cost determination. |

## Proposed chooser requirements

The database chooser should ask for the system and deployment mode, exact release/edition, architecture, intended task, database/topology scope, network route, permitted identity, and recovery objective. Preparing an administration client is a separate choice from creating a database server or paid managed service. Show downloads, disk/memory requirements, dependencies, edition constraints, and any proposed billable resources before preparation.

Workstation or agent login does not grant database authority. Resolve the target's actual authentication and privileges through its native mechanism; do not collect passwords, connection strings containing credentials, or access tokens in chat. Inspection should use the narrowest suitable privileges. Expensive queries and diagnostic capture still require workload and data-sensitivity review even when they do not change rows.

The proposed agentic workflow is: identify the authorised target → inspect → produce a sourced plan → human review → execute only an approved, supported operation → independently verify state and application health → retain redacted evidence. Changes to roles, schemas, replication, retention, or recovery targets need a reviewed impact and recovery plan. A successful backup job alone does not prove a successful restore; verify a separate recovery target and application-level data expectations.

## Proposed first proof per organisation

All examples below are design candidates, not completed tests or executable procedures. Use synthetic data and a disposable deployment; creating or restoring it is a change that needs approval.

| Organisation | Read-only entry task | Disposable proof and independent verification |
| --- | --- | --- |
| Microsoft | Review recovery model and available backup history against a stated recovery objective. | Restore a synthetic database to a separate target; compare expected records and an application read before recording recovery success. |
| MongoDB | Review deployment topology, access-control posture, and the suitability of a documented backup method. | Back up and restore a synthetic collection to a separate deployment; verify documents and permissions, including a denied unauthorised read. |
| Oracle | Review the database/container scope and authorised backup/recovery privileges. | Exercise a version-matched recovery plan in a disposable database; verify synthetic records and the chosen recovery point. |
| PostgreSQL | Observe synthetic session activity and role privileges with a limited monitoring identity. | Restore a synthetic database into a separate cluster; verify expected objects, records, and access boundaries. |
| Redis | Review authorised ACL and persistence configuration without changing either. | Restart a disposable store with a declared persistence mode; verify the expected retained synthetic keys and denied disallowed operations. Record the tested durability boundary. |

## Limits and source gaps

No connectors, package versions, architecture compatibility, costs, or end-to-end recovery guarantees have been validated by this research. Edition rights, support lifecycle, managed-service features, extension compatibility, and account-specific permissions require fresh target-specific sources before execution. Other systems remain candidates for later coverage; the five-row limit is a prioritisation choice, not an exclusion policy.

For Microsoft-related work, check the [upstream skill register](../upstream-skill-register.md) and route to official upstream capabilities when applicable. This page does not introduce local skills or claim that upstream tools cover every SQL Server administration task.

## Sources

All product references below were checked on 2026-10-02. Moving documentation selectors must be resolved to the actual deployment version during a task.

- [Microsoft: Database Engine permissions](https://learn.microsoft.com/en-us/sql/relational-databases/security/authentication-access/getting-started-with-database-engine-permissions?view=sql-server-ver17)
- [Microsoft: Back up and restore SQL Server databases](https://learn.microsoft.com/en-us/sql/relational-databases/backup-restore/back-up-and-restore-of-sql-server-databases?view=sql-server-ver17)
- [Microsoft: SQL Server 2025 editions and supported features](https://learn.microsoft.com/en-us/sql/sql-server/editions-and-components-of-sql-server-2025?view=sql-server-ver17)
- [MongoDB: Security](https://www.mongodb.com/docs/manual/security/)
- [MongoDB: Performance](https://www.mongodb.com/docs/manual/administration/analyzing-mongodb-performance/)
- [MongoDB: Backup methods](https://www.mongodb.com/docs/manual/core/backups/)
- [Oracle: Getting started with database administration, 26ai](https://docs.oracle.com/en/database/oracle/oracle-database/26/admin/getting-started-with-database-administration.html)
- [Oracle: Backup and recovery user's guide, 26ai](https://docs.oracle.com/en/database/oracle/oracle-database/26/bradv/)
- [PostgreSQL: About the project](https://www.postgresql.org/about/)
- [PostgreSQL 18: Database roles](https://www.postgresql.org/docs/18/user-manag.html)
- [PostgreSQL 18: Monitoring database activity](https://www.postgresql.org/docs/18/monitoring.html)
- [PostgreSQL 18: Backup and restore](https://www.postgresql.org/docs/18/backup.html)
- [Redis: ACLs](https://redis.io/docs/latest/operate/oss_and_stack/management/security/acl/)
- [Redis: Security](https://redis.io/docs/latest/operate/oss_and_stack/management/security/)
- [Redis: Persistence](https://redis.io/docs/latest/operate/oss_and_stack/management/persistence/)
- [Redis: Licenses](https://redis.io/legal/licenses/)
- [Admin Harness: Upstream skill register](../upstream-skill-register.md)
