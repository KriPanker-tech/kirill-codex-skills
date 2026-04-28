# kirill-codex-skills

Canonical Codex/OpenAI skill set structured with the same architectural ideas Anthropic recommends:

- small trigger-oriented `SKILL.md`
- detailed material in `references/`
- optional runtime adapters in `agents/`
- local deployment into `~/.codex/skills`

This repository is not an Anthropic plugin or Claude marketplace package.
It is the source of truth for custom skills used in Codex/OpenAI workflows on this Mac.

## Structure

```text
skills/
  content-editor/
  commercialization-strategy-orchestrator/
  commercialization-strategy-reviewer/
  final-strategy-agent/
  operating-model-agent/
  product-marketer/
  portfolio-registry-agent/
  skill-router/
  reels-scriptwriter/
  role-based-multi-agent-review/
  strategic-directions-agent/
  strategic-gap-diagnostics-agent/
workflows/
  commercialization-strategy/
references/
  commercialization/
docs/
```

## Architecture

- `skills/` contains executable Codex skills and role behavior.
- `workflows/` contains process definitions, stage order, run structure, templates, and gates.
- `references/` contains evidence rules, review criteria, output standards, and reusable knowledge rules.
- `.runs/` is the local execution layer for concrete workflow runs and should not be committed when it contains private or source material.
- `scripts/sync-to-codex.sh` deploys skills and mirrors workflows/references into `_kirill-workflow-assets`.

Skills define who does the work.
Workflows define how the work moves through stages.
References define quality, evidence, and review standards.
Runs store execution artifacts for a specific task.

## Commercialization Strategy Workflow

The commercialization strategy system is a workflow, not a plugin in v1.

It uses named specialist roles:

- Semyon: workflow orchestrator
- Egor: portfolio registry
- Marina: strategic gap diagnostics
- Anton: strategic directions
- Olga: operating model
- Viktor: final strategy
- Roman: review gates

Runs should use:

```text
.runs/commercialization-strategy-YYYY-MM-DD-project-name/
  working-dossier.md
  final-strategy.md
  agent-run-manifest.md
  agent-runs/
  source-files/
```

Keep `.runs/` out of git. Durable instructions live in `skills/`, `workflows/`, and `references/`.

For true multi-agent work, every stage must have an `agent-runs/` log and must mark execution mode as `subagent`. If the main agent performs the role itself, mark the stage as `single-agent simulated`.

## Source of Truth

- GitHub is the canonical source of truth for these custom skills.
- Edit skills in this repository, then commit and push them to GitHub.
- Treat `~/.codex/skills` as a local runtime deployment target, not as canon.
- Keep Codex/OpenAI-specific runtime files in `agents/`.

## Local Deploy

Run:

```bash
scripts/sync-to-codex.sh
```

This copies the canonical skill folders into `~/.codex/skills` and workflow assets into `~/.codex/skills/_kirill-workflow-assets`.
