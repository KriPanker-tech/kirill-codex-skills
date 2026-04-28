# Commercialization Strategy Workflow

Use this workflow to create a board-level strategy for a commercialization center from source documents, project portfolio data, and user context.

## Roles

- Boris Borisyich: workflow orchestrator
- Egor: portfolio registry
- Roman: review gates
- Marina: strategic gap diagnostics
- Anton: strategic directions
- Olga: operating model
- Viktor: final strategy

## Run Structure

Create each run under:

```text
.runs/commercialization-strategy-YYYY-MM-DD-project-name/
  working-dossier.md
  final-strategy.md
  agent-run-manifest.md
  agent-runs/
  source-files/
```

Use `working-dossier.md` as the shared working file. Avoid creating many stage files unless a table or source extract is too large for the dossier.

Use `agent-runs/` as the execution log layer. Every specialist and reviewer stage must have a separate log file.

## Execution Modes

Use one of two modes:

- `subagent`: a separate subagent actually performed the stage.
- `single-agent simulated`: the main agent performed the stage while following the named role.

The manifest must state the execution mode honestly. Do not present a simulated stage as a real subagent run.

## Stage Order

1. Task intake
2. Source map
3. Context extract
4. Egor: portfolio registry
5. Roman: portfolio review
6. Marina: strategic gap diagnostics
7. Roman: gap review
8. Anton: strategic directions
9. Roman: directions review
10. Olga: operating model
11. Roman: operating model review
12. Viktor: final strategy draft
13. Roman: board review
14. Roman: red team review
15. Final revision and `final-strategy.md`

## Agent Run Files

Use these default file names:

```text
agent-runs/
  01-boris-intake.md
  02-egor-portfolio-registry.md
  03-roman-portfolio-review.md
  04-marina-gap-diagnostics.md
  05-roman-gap-review.md
  06-anton-strategic-directions.md
  07-roman-directions-review.md
  08-olga-operating-model.md
  09-roman-operating-model-review.md
  10-viktor-final-strategy-draft.md
  11-roman-board-review.md
  12-roman-red-team-review.md
  13-viktor-final-revision.md
```

For later evidence, market sizing, memo, or deck passes, continue numbering:

```text
14-marina-evidence-pass.md
15-egor-portfolio-cleanup.md
16-anton-mth-market-screen.md
17-olga-operating-model-v2.md
18-viktor-board-memo.md
19-viktor-board-deck.md
```

## Gate Logic

Use only these decisions:

- `approved`: next stage can proceed.
- `approved with caveats`: next stage can proceed, but caveats must stay visible.
- `needs revision`: send required fixes back to the responsible stage owner.
- `blocked`: ask the user for missing input or source material.

## Context Economy

Read wide once, then work narrow.

The source map and context extract should capture what later agents need. Reviewers should read the stage output and context extract, not the full source set by default.

## Handoff Rules

Each worker must end with a `Handoff` section.

Each reviewer must end with:

- decision
- required fixes
- caveats
- next owner

The next worker must explicitly read the prior handoff and review decision.

## Stop Conditions

Stop and ask the user when:

- source documents are missing for a fact-heavy stage
- EBITDA / EMV target is required but absent
- project ownership or authority assumptions would materially change the strategy
- the next stage would require inventing market data
