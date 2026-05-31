## Summary

-

## Tracking

- PRD checkbox or issue:
- Coverage tracker row, if applicable:

## Sources

- Updated [docs/source-register.md](../docs/source-register.md) or linked existing source:
- New/changed Markdown files include `Sources` sections: yes/no

## Validation

- [ ] `scripts/validate-skills.sh`
- [ ] `scripts/validate-doc-sources.sh`
- [ ] `scripts/validate-portal-skills.sh`
- [ ] MCP JSON templates parse, if touched
- [ ] CodeQL/code scanning green on PR

## Safety

- [ ] No secrets, tenant IDs, customer data, tokens, `.env` files, browser profiles, or credential caches committed
- [ ] No tenant or Azure mutation is performed by this PR
- [ ] Any future admin change workflow has an approval gate

## Merge Policy

- [ ] Merge using a full merge commit after checks are green
- [ ] Do not squash merge

## Sources

- [GitHub merge methods](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/about-merge-methods-on-github)
- [GitHub Actions workflow syntax](https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions)
- [docs/source-register.md](../docs/source-register.md)
