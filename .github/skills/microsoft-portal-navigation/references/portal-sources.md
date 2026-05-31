# Portal Sources

Primary upstream repository: `adamfowlerit/msportals.io`.

Use these raw source files until this repo has an approved cache script:

- Admin portals: `https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/admin.json`
- End-user portals: `https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/user.json`
- Third-party helper portals: `https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/thirdparty.json`
- Education: `https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/edu.json`
- US government: `https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/us-govt.json`
- China / 21Vianet: `https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/china.json`
- Training: `https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/training.json`
- Licensing: `https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/licensing.json`
- Consumer: `https://raw.githubusercontent.com/adamfowlerit/msportals.io/master/_data/portals/consumer.json`

Upstream fields:

- `groupName`: portal group heading.
- `portals`: list of portal records.
- `portalName`: display name.
- `primaryURL`: main portal URL.
- `secondaryURLs`: optional links such as `aka.ms`, old portal, or B2B links.
- `note`: optional searchable old name or context.
- `iconUrl`: optional icon.

Tenant-aware notes:

- Upstream uses placeholder `00000000-0000-0000-0000-000000000000` in some B2B links.
- Warn that tenant IDs placed in URLs or bookmarks can appear in logs.
- Do not persist tenant IDs in repo files, skill outputs, or eval artifacts.
