# RegnskabsMCP Skills

Fire opskrifter, der lærer din AI-assistent at hente de mest brugte regnskabsoplysninger gennem [RegnskabsMCP](https://regnskabsmcp.dk). Hver skill er en mappe med én `SKILL.md` i [Agent Skills-formatet](https://agentskills.io/specification).

| Opgave | Skriv for eksempel | Skill |
| --- | --- | --- |
| Resultatopgørelse | Vis min resultatopgørelse for oktober. | [resultatopgoerelse](skills/resultatopgoerelse/SKILL.md) |
| Saldobalance | Vis primo, bevægelser og ultimo fra regnskabsårets start til i dag. | [saldobalance](skills/saldobalance/SKILL.md) |
| Posteringer bag et kontotal | Vis de bogførte posteringer bag konto 3600 i oktober. | [posteringer-bag-kontotal](skills/posteringer-bag-kontotal/SKILL.md) |
| Åbne salgsfakturaer | Hvilke salgsfakturaer mangler betaling, og hvilke er forfaldne? | [aabne-salgsfakturaer](skills/aabne-salgsfakturaer/SKILL.md) |

Alle fire læser kun. De bogfører ikke, sender ikke noget og ændrer ikke dit regnskab.

## Før du går i gang

Forbind RegnskabsMCP i den klient, du bruger. Vejledningen ligger i portalens hjælpecenter. En skill giver ikke adgang til noget i sig selv: RegnskabsMCP afgør, hvilke regnskaber og oplysninger du må se, og leverer tallene.

Installér kun de skills, du har brug for.

## Installation

Hent ZIP-filen for den ønskede skill under [Releases](../../releases/latest). Der er én ZIP pr. skill.

### ChatGPT

Skills i ChatGPT findes i de workspaces, der understøtter dem. Upload ZIP-filen under Skills, som beskrevet i [OpenAI's vejledning](https://help.openai.com/en/articles/20001066-skills-in-chatgpt).

### Claude

Upload ZIP-filen som en skill i Claudes indstillinger, som beskrevet i [Anthropics vejledning](https://support.claude.com/en/articles/12512198-how-to-create-custom-skills).

### Claude Code

Pak ZIP-filen ud, og læg mappen i `.claude/skills/` i dit projekt eller i `~/.claude/skills/` for at bruge den i alle projekter:

```bash
unzip resultatopgoerelse.zip -d ~/.claude/skills/
```

Se [Skills i Claude Code](https://code.claude.com/docs/en/skills).

## Uden skills

Du kan også skrive de fire eksempler fra tabellen direkte i chatten, når RegnskabsMCP er forbundet. Assistenten finder selv det rigtige værktøj; en skill gør blot fremgangsmåden ens fra gang til gang.

## Tilpasning

Kontomapping, egne nøgletal og andre opsætninger, der er særlige for din virksomhed, hører hjemme i dit eget miljø. Kopiér en skill, og ret den til dér. Dette bibliotek indeholder kun generelle opskrifter og opdigtede eksempler.

## Udvikling

Mappen under `skills/` er eneste kilde til pakkernes indhold. `scripts/pak.sh` bygger én ZIP pr. skill i `dist/`.

## Licens

[MIT](LICENSE).
