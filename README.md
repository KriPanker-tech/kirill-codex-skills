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
  product-marketer/
  skill-router/
  reels-scriptwriter/
  role-based-multi-agent-review/
docs/
```

## Source of Truth

- Edit skills in this repository.
- Treat `~/.codex/skills` as a deployment target.
- Keep Codex/OpenAI-specific runtime files in `agents/`.

## Local Deploy

Run:

```bash
scripts/sync-to-codex.sh
```

This copies the canonical skill folders into `~/.codex/skills`.
