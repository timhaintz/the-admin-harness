# Model Best Practices

This repo uses model guidance as a design reference, not as a hard dependency. Skills should remain host-portable and should not require one provider-specific model to function.

## GPT-5.5-Oriented Guidance

- Start with the outcome and stopping condition.
- Keep durable instructions concise and specific.
- Use retrieval budgets so agents search only as much as needed before acting.
- Prefer structured data, validation commands, and eval traces over long prose prompts.
- Add explicit safety gates for tenant changes.

## Claude Opus 4.8-Oriented Guidance

- Define scope, boundaries, and source hierarchy clearly.
- Use higher effort for coding, research, or admin planning tasks that cross multiple systems.
- Keep tool-use guidance explicit, especially around credentials and browser automation.
- Spawn subagents only for clearly separable research or review tasks.
- Validate source claims before presenting admin procedures.

## Cross-Model Rules

- Put volatile facts in sources, not in prompts.
- Put reusable procedures in skills.
- Put execution behind MCP tools with clear auth boundaries.
- Put policy in shared instructions and skill-specific safety steps.
- Evaluate skills with realistic prompts before treating them as complete.
