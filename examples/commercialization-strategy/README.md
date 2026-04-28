# Commercialization Strategy Examples

These examples show how to start and inspect the commercialization strategy workflow without using private source files.

## Files

- `sample-brief.md` is a minimal user brief for a test run.
- `expected-run-structure.md` shows the local `.runs/` structure the orchestrator should create.
- `expected-agent-manifest.md` shows the expected stage manifest shape.

## Manual Test Instructions

1. Invoke `commercialization-strategy-orchestrator`.
2. Provide the contents of `sample-brief.md` or a real project brief.
3. Confirm that the orchestrator creates a run folder under `.runs/`.
4. Confirm that `working-dossier.md` contains `Workflow Status`, `Source Map`, `Context Extract`, and `03. Portfolio Registry`.
5. Confirm that Roman produces one review decision: `approved`, `approved with caveats`, `needs revision`, or `blocked`.
6. If Roman returns `needs revision`, confirm that the responsible agent revises only the relevant section.
7. Confirm that `final-strategy.md` is created only after stage gates are passed or caveats are explicit.
8. Confirm that `.runs/` is not committed to git.

Do not include private source documents in examples.
