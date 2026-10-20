# postgres-best-practices

> Guia de boas práticas e performance do banco de dados Postgres, mantido pela Supabase — para quem escreve consultas SQL, desenha tabelas ou investiga lentidão no banco.

| | |
|---|---|
| **Área** | Dados e engenharia |
| **Como chamar** | `/postgres-best-practices` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Supabase, via kursku/skills |
| **Requer** | Nada além do Claude (para aplicar as sugestões, acesso ao banco Postgres em questão) |

## Para que serve

A skill reúne regras práticas, organizadas por impacto, para deixar o Postgres rápido e seguro. Cada regra mostra um exemplo errado, o exemplo certo e por que faz diferença. Os temas vão do mais crítico ao menos urgente: performance de consultas (índices), gestão de conexões, segurança e RLS (regras de acesso por linha), desenho de tabelas, concorrência e travamentos, padrões de acesso a dados, monitoramento e recursos avançados (busca de texto e JSONB).

## Quando usar

- Uma consulta ou tela do sistema está lenta e você suspeita do banco.
- Você vai criar tabelas novas e quer acertar tipos de dados, chaves e índices.
- Você quer revisar permissões e regras de acesso (RLS) antes de liberar algo.

**Exemplos de pedido:**

- "Esta consulta de imóveis por bairro está lenta. Que índice falta?"
- "Revisa o desenho destas tabelas de leads e visitas."
- "Como paginar a lista de contratos sem ficar lento nas últimas páginas?"

## Como funciona

1. O Claude identifica o tema do problema (consulta, conexão, segurança, tabela, travamento, acesso a dados, monitoramento).
2. Lê as regras correspondentes na pasta `rules/` (ou o documento completo `AGENTS.md`).
3. Compara o seu SQL com os exemplos errado/certo de cada regra.
4. Sugere mudanças em ordem de impacto, com o SQL corrigido.
5. Quando útil, indica como medir o ganho (`EXPLAIN ANALYZE`, `pg_stat_statements`).

## O que você recebe

- Diagnóstico com as regras que se aplicam ao seu caso.
- SQL corrigido (índices, consultas, tabelas, permissões).
- Forma de medir se a mudança funcionou.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Categorias de regras por prioridade e como usar |
| `AGENTS.md` | Documento completo com todas as regras expandidas (gerado a partir de `rules/`) |
| `rules/` | 30 regras em arquivos separados, agrupadas por prefixo: `query-`, `conn-`, `security-`, `schema-`, `lock-`, `data-`, `monitor-`, `advanced-` |
| `rules/_sections.md`, `_template.md`, `_contributing.md` | Definição das seções, modelo de regra e guia para escrever novas regras |
| `metadata.json` | Versão, organização (Supabase) e links de referência |
| `README.md` | Este arquivo |

## Cuidados

- Algumas regras citam recursos específicos da Supabase; confira se valem para o Postgres que a empresa usa.
- Criar índices ou alterar tabelas em produção pode travar o banco; aplique em horário combinado e com o time de dados.
- Teste as sugestões em ambiente de desenvolvimento antes de produção.
- Este README substituiu o guia de contribuição original da Supabase (que explicava como montar o `AGENTS.md` com npm); esse conteúdo também está resumido em `rules/_contributing.md`.

## Relacionadas

- [`dbt-transformation-patterns`](../dbt-transformation-patterns/README.md) — transformações SQL organizadas
- [`data-quality-frameworks`](../data-quality-frameworks/README.md) — checagens de qualidade nas tabelas
- [`kpi-dashboard-design`](../kpi-dashboard-design/README.md) — consultas SQL de KPIs
