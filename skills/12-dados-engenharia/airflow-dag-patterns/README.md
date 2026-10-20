# airflow-dag-patterns

> Padrões e boas práticas para criar DAGs (fluxos de tarefas agendadas) no Apache Airflow prontas para produção — para engenheiros e analistas de dados que montam pipelines.

| | |
|---|---|
| **Área** | Dados e engenharia |
| **Como chamar** | `/airflow-dag-patterns` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude para escrever o código; para rodar, um ambiente Apache Airflow (2.0 ou mais novo) e Python |

## Para que serve

O Airflow é a ferramenta que roda tarefas de dados em ordem e no horário certo (por exemplo: todo dia às 6h, buscar os leads, limpar e carregar no banco de análise). Cada fluxo é uma DAG. A skill ensina o Claude a escrever DAGs bem feitas: tarefas que podem ser repetidas sem duplicar dados, tentativas automáticas em caso de erro, alertas, testes e organização do projeto.

## Quando usar

- Você precisa criar um pipeline novo que roda todo dia ou toda hora.
- Uma DAG falhou e você quer entender o problema e deixá-la mais robusta.
- Você quer gerar várias DAGs parecidas a partir de uma configuração.
- Você quer testar DAGs localmente antes de subir.

**Exemplos de pedido:**

- "Cria uma DAG no Airflow que carrega os leads do dia para o data warehouse e avisa se falhar."
- "Revisa esta DAG e diz por que ela duplica dados quando reexecuta."
- "Monta testes unitários para as DAGs do nosso projeto."

## Como funciona

1. O Claude identifica fontes de dados, horários e dependências entre tarefas.
2. Desenha tarefas idempotentes (rodar duas vezes dá o mesmo resultado), com dono claro e tentativas automáticas.
3. Implementa a DAG com os padrões do guia: TaskFlow API, geração dinâmica de DAGs, ramificações condicionais, sensores para esperar dados externos.
4. Adiciona tratamento de erro, alertas e tempos-limite.
5. Escreve testes e sugere validar em ambiente de homologação (staging) e documentar como operar.

## O que você recebe

- Código Python de DAGs seguindo boas práticas.
- Estrutura de pastas sugerida para o projeto.
- Testes de DAG e lista do que fazer e não fazer.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Quando usar, passos e regras de segurança |
| `resources/implementation-playbook.md` | Guia detalhado: conceitos, 6 padrões com código, testes, estrutura de projeto e boas práticas |

## Cuidados

- A skill é marcada como de risco crítico: mexe em pipelines de produção. Não altere horários de DAGs em produção sem aprovação do time responsável.
- Teste reprocessamentos (backfill) e tentativas com cuidado para não duplicar dados.
- Senhas e conexões ficam nas Connections/Variables do Airflow ou num cofre de segredos, nunca no código.
- Revise o código com alguém do time de dados antes do deploy.

## Relacionadas

- [`dbt-transformation-patterns`](../dbt-transformation-patterns/README.md) — as transformações que a DAG costuma disparar
- [`data-quality-frameworks`](../data-quality-frameworks/README.md) — validar os dados dentro do pipeline
- [`gitlab-ci-patterns`](../gitlab-ci-patterns/README.md) — testar e publicar as DAGs automaticamente
- [`mermaid-expert`](../mermaid-expert/README.md) — desenhar o fluxo do pipeline
