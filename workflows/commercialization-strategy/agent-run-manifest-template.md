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
| 03 | Roman | Portfolio Reviewer |  |  | `04. Portfolio Review` |  | Marina / Egor revision |
| 04 | Marina | Strategic Gap Analyst |  |  | `05. Strategic Gap Diagnostics` |  | Roman |
| 05 | Roman | Gap Reviewer |  |  | `06. Gap Review` |  | Anton / Marina revision |
| 06 | Anton | Strategic Directions Architect |  |  | `07. Strategic Directions` |  | Roman |
| 07 | Roman | Directions Reviewer |  |  | `08. Directions Review` |  | Olga / Anton revision |
| 08 | Olga | Operating Model Designer |  |  | `09. Operating Model` |  | Roman |
| 09 | Roman | Operating Model Reviewer |  |  | `10. Operating Model Review` |  | Viktor / Olga revision |
| 10 | Viktor | Board Strategy Writer |  |  | `11. Final Strategy Draft` |  | Roman |
| 11 | Roman | Board Reviewer |  |  | `12. Board Review` |  | Viktor revision |
| 12 | Roman | Red Team Reviewer |  |  | `13. Red Team Review` |  | Viktor final |
| 13 | Viktor | Final Revision |  |  | `final-strategy.md` |  | Done |

## Notes

- A stage is not complete until its log exists in `agent-runs/`.
- If `Execution Mode` is `single-agent simulated`, do not describe it as an actual subagent run.
- If using real subagents, include the subagent final response or a concise transcript summary in the matching stage log.
