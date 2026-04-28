# Source Prompt Map

This file maps the original prompt package into the new workflow. Do not paste the original prompts into skills. Use this map to preserve intent while keeping skills compact.

Original source folder:

```text
/Users/kirpanfilov/Downloads/prompts_strategy_commercialization_center/
```

## Prompt 1: Portfolio Registry

Mapped to:

- `skills/portfolio-registry-agent/SKILL.md`
- dossier section `03. Portfolio Registry`
- review mode `portfolio-review`

Core intent:

- extract all projects
- normalize fields
- separate facts from hypotheses
- identify missing business-case data

## Prompt 2: Strategic Gap Diagnostics

Mapped to:

- `skills/strategic-gap-diagnostics-agent/SKILL.md`
- dossier section `05. Strategic Gap Diagnostics`
- review mode `gap-review`

Core intent:

- test whether the current R&D portfolio is enough for fast commercial effect
- identify gaps between R&D logic and commercial logic
- justify why the center needs a fast commercial contour

## Prompt 3: Strategic Directions

Mapped to:

- `skills/strategic-directions-agent/SKILL.md`
- dossier section `07. Strategic Directions`
- review mode `directions-review`

Core intent:

- create 4-6 strategic directions
- include R&D portfolio, small-tonnage chemistry, Business Case Factory, market-back R&D, implementation, and portfolio management

## Prompt 4: Operating Model

Mapped to:

- `skills/operating-model-agent/SKILL.md`
- dossier section `09. Operating Model`
- review mode `operating-model-review`

Core intent:

- define mission, role, zones of responsibility, stage-gate process, artifacts, and RACI

## Prompt 5: Final Strategy

Mapped to:

- `skills/final-strategy-agent/SKILL.md`
- dossier section `11. Final Strategy Draft`
- `workflows/commercialization-strategy/final-strategy-template.md`
- review mode `board-review`

Core intent:

- create board-level strategy document from approved workflow materials

## Prompt 6: Red Team Review

Mapped to:

- `skills/commercialization-strategy-reviewer/SKILL.md`
- dossier section `13. Red Team Review`
- review mode `red-team-review`

Core intent:

- challenge optimism, unsupported EBITDA, missing authority, weak market data, missing customer proof, and unclear management decisions
