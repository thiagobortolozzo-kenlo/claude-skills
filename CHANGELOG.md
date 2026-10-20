# Changelog

Mudanças relevantes no repositório. Formato: data, o que mudou, quem.

## 2026-10-20

- Reorganização por área: os agentes agora ficam em `agents/<área>/<agente>/AGENT.md`, espelhando `skills/`.
- Cada skill e cada agente ganhou um `README.md` em português (para que serve, quando usar, como funciona, entregáveis, arquivos, cuidados).
- Adicionado frontmatter (`name` e `description`) às 15 skills `market-*` e aos 5 agentes `market-*`, para o Claude acioná-los corretamente.
- Novos documentos: `SECURITY.md`, `CHANGELOG.md`, `docs/COMO-USAR.md`, `docs/ESTRUTURA.md`, `docs/GOVERNANCA.md`, `docs/radar-kursku.md`.
- Novas proteções: validador (`scripts/validar.ps1`), CI com validação e varredura de segredos, CODEOWNERS, templates de PR e issue.
- Instaladores com `-Area`, `-Listar` e suporte à nova estrutura de agentes.
- Thiago Bortolozzo, com o Claude.

## 2026-10-19

- Criação do repositório com 149 skills em 12 áreas e 7 agentes.
- 78 skills importadas e auditadas de github.com/kursku/skills. O restante é o acervo de skills que o Thiago já usava.
- Thiago Bortolozzo, com o Claude.
