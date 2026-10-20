# Governança

## Papéis

| Papel | Quem | O que faz |
|---|---|---|
| **Mantenedor** | Thiago Bortolozzo (`@thiagobortolozzo-kenlo`) | Aprova PRs, cuida da segurança, gerencia acessos e áreas |
| **Responsável de área** | a definir, uma pessoa por área | Revisa skills da sua área e mantém a qualidade |
| **Contribuidor** | qualquer pessoa do time com acesso | Propõe skills, melhorias e correções por PR |

Quando houver responsáveis de área, eles entram no `.github/CODEOWNERS` na linha da pasta deles.

## O que precisa de aprovação

| Mudança | Aprovação |
|---|---|
| Skill ou agente novo | 1 revisor + CI verde |
| Skill importada de fora | Mantenedor + CI verde + origem registrada no NOTICE |
| Skill que executa código, publica ou envia algo | Mantenedor |
| Scripts, instaladores, CI, `SECURITY.md` | Mantenedor |
| Nova área ou mudança de estrutura | Issue discutida antes + mantenedor |
| Correção de texto ou README | 1 revisor |

## Ciclo de vida de uma skill

1. **Proposta**: issue "Nova skill" ou "Sugerir skill".
2. **Entrada**: PR com `SKILL.md`, `README.md` e linha no `resumos.tsv`.
3. **Em uso**: melhorias por PR. Registre mudanças grandes no `CHANGELOG.md`.
4. **Descontinuada**: se ninguém usa, se está duplicada ou ficou obsoleta, abra um PR removendo a pasta e registre no `CHANGELOG.md` o motivo e qual skill a substitui.

## Revisão periódica (a cada trimestre)

- Revisar quem tem acesso ao repositório.
- Rodar `scripts/validar.ps1` e resolver os avisos.
- Ver se há skills duplicadas ou sem uso e propor a limpeza.
- Revisar o [radar](radar-kursku.md) e as issues de sugestão.
