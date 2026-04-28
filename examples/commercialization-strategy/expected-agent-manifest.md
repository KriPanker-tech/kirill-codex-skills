# Expected Agent Manifest

```markdown
# Agent Run Manifest

## Run Metadata

Project:
Run folder:
Overall execution mode: true multi-agent | single-agent simulated | mixed
Created:
Updated:

## Stage Manifest

| Stage | Agent | Role | Execution Mode | Status | Output | Review Decision | Next |
|---|---|---|---|---|---|---|---|
| 01 | Boris | Orchestrator |  |  | `working-dossier.md` intake | n/a | Egor |
| 02 | Egor | Portfolio Registry Lead |  |  | `03. Portfolio Registry` |  | Roman |
| 03 | Roman | Portfolio Reviewer |  |  | `04. Portfolio Review` | approved | Marina |
| 04 | Marina | Strategic Gap Analyst |  |  | `05. Strategic Gap Diagnostics` |  | Roman |
| 05 | Roman | Gap Reviewer |  |  | `06. Gap Review` | approved with caveats | Anton |
| 06 | Anton | Strategic Directions Architect |  |  | `07. Strategic Directions` |  | Roman |
| 07 | Roman | Directions Reviewer |  |  | `08. Directions Review` | needs revision | Anton revision |
| 08 | Anton | Strategic Directions Architect |  |  | `07. Strategic Directions` revision |  | Roman |
| 09 | Roman | Directions Reviewer |  |  | `08. Directions Review` revision | approved | Olga |
| 10 | Olga | Operating Model Designer |  |  | `09. Operating Model` |  | Roman |
| 11 | Roman | Operating Model Reviewer |  |  | `10. Operating Model Review` | approved | Viktor |
| 12 | Viktor | Board Strategy Writer |  |  | `11. Final Strategy Draft` |  | Roman |
| 13 | Roman | Board Reviewer |  |  | `12. Board Review` | approved with caveats | Roman red team |
| 14 | Roman | Red Team Reviewer |  |  | `13. Red Team Review` | approved | Viktor final |
| 15 | Viktor | Final Revision |  |  | `14. Final Revision Notes`, `final-strategy.md` |  | Done |
```

The actual manifest may have different decisions. It must preserve the decision vocabulary:

- `approved`
- `approved with caveats`
- `needs revision`
- `blocked`
