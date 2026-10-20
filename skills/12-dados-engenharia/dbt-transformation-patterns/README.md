# dbt-transformation-patterns

> Padrões para organizar projetos dbt (ferramenta que transforma dados com SQL dentro do data warehouse): camadas de modelos, testes, documentação e cargas incrementais — para analistas e engenheiros de dados.

| | |
|---|---|
| **Área** | Dados e engenharia |
| **Como chamar** | `/dbt-transformation-patterns` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude para escrever o código; para rodar, um projeto dbt ligado a um data warehouse |

## Para que serve

O dbt organiza as consultas SQL que transformam dados brutos em tabelas prontas para relatório. A skill ensina a separar o projeto em camadas (staging, que limpa os dados brutos; intermediate, que combina; e marts, as tabelas finais de dimensões e fatos), seguir convenções de nomes, testar, documentar e processar só o que mudou (modelos incrementais), para economizar tempo e custo.

## Quando usar

- Você vai começar um projeto dbt e quer a estrutura certa desde o início.
- Os modelos estão bagunçados e você quer reorganizar em camadas.
- Uma tabela grande demora demais para rodar e precisa virar incremental.

**Exemplos de pedido:**

- "Cria os modelos dbt de staging e mart para leads e visitas das imobiliárias."
- "Transforma este modelo de eventos em incremental."
- "Adiciona testes e documentação aos modelos da pasta marts."

## Como funciona

1. O Claude define as camadas, os nomes e os responsáveis pelos modelos.
2. Declara as fontes (sources) e escreve os modelos de staging.
3. Monta modelos intermediários e os marts (tabelas de dimensões e fatos).
4. Adiciona testes, documentação e checagem de atualização das fontes (freshness).
5. Escolhe a materialização (view, tabela, incremental) e a estratégia incremental.
6. Cria macros para evitar repetição e otimiza execuções com seletores e CI.

## O que você recebe

- Modelos SQL e arquivos YAML do dbt organizados por camada.
- Testes e documentação dos modelos.
- Lista de comandos dbt úteis e boas práticas.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Quando usar e passos principais |
| `resources/implementation-playbook.md` | Guia detalhado: camadas, convenções de nomes, 7 padrões com código e comandos dbt |

## Cuidados

- Mudanças em modelos usados por relatórios podem quebrar painéis; avise quem consome as tabelas.
- Rodar modelos grandes no warehouse tem custo; teste com amostras e em ambiente de desenvolvimento.
- Revise o código com o time de dados antes de levar para produção.

## Relacionadas

- [`data-quality-frameworks`](../data-quality-frameworks/README.md) — testes de qualidade mais avançados
- [`airflow-dag-patterns`](../airflow-dag-patterns/README.md) — agendar a execução do dbt
- [`postgres-best-practices`](../postgres-best-practices/README.md) — boas práticas de SQL e banco
- [`kpi-dashboard-design`](../kpi-dashboard-design/README.md) — os painéis que usam os marts
