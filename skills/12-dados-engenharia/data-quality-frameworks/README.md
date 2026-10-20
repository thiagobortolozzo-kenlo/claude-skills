# data-quality-frameworks

> Ajuda a criar verificações automáticas de qualidade de dados (Great Expectations, testes do dbt e contratos de dados) — para times que dependem de números confiáveis em relatórios e pipelines.

| | |
|---|---|
| **Área** | Dados e engenharia |
| **Como chamar** | `/data-quality-frameworks` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude para escrever as regras; para rodar, Python com Great Expectations e/ou um projeto dbt |

## Para que serve

Dado ruim gera decisão ruim. A skill ajuda a definir e automatizar checagens: não pode haver campo vazio onde é obrigatório, não pode haver duplicado, os valores precisam estar dentro do esperado, os números de uma tabela precisam bater com outra, e o dado precisa estar atualizado. Também ajuda a criar "contratos de dados", acordos escritos entre quem produz e quem consome uma tabela sobre o formato e a qualidade esperados.

## Quando usar

- Um relatório mostrou números estranhos e você quer evitar que aconteça de novo.
- Você vai criar um pipeline novo e quer testes de qualidade desde o início.
- Dois times dependem da mesma tabela e precisam combinar regras claras (contrato de dados).

**Exemplos de pedido:**

- "Cria testes de qualidade para a tabela de leads: e-mail único, data não nula e origem válida."
- "Monta uma suíte do Great Expectations para validar o arquivo diário de contratos."
- "Escreve um contrato de dados entre o time de produto e o de BI para a tabela de imóveis."

## Como funciona

1. O Claude identifica as tabelas críticas e as dimensões de qualidade importantes: completude, unicidade, validade, precisão, consistência e atualidade.
2. Define as regras (expectations) e os testes: de estrutura, de coluna e entre tabelas.
3. Escreve suítes e checkpoints do Great Expectations, testes do dbt (prontos e personalizados) e contratos de dados.
4. Automatiza as validações no CI/CD e em horários agendados.
5. Define alertas, responsáveis e o que fazer quando um teste falha.

## O que você recebe

- Regras de qualidade escritas em código (Great Expectations, YAML/SQL do dbt).
- Modelo de contrato de dados.
- Pipeline automatizado de qualidade e lista de boas práticas.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Quando usar, passos e regras de segurança |
| `resources/implementation-playbook.md` | Guia detalhado: dimensões de qualidade, pirâmide de testes e 6 padrões com código |

## Cuidados

- Não bloqueie pipelines críticos com testes novos sem ter um plano B (por exemplo, começar só com alerta).
- Relatórios de validação podem mostrar exemplos de linhas com problema; cuide para não expor dados pessoais (LGPD) nesses relatórios.
- Revise as regras com quem conhece o negócio: o que é "valor válido" depende do contexto.

## Relacionadas

- [`dbt-transformation-patterns`](../dbt-transformation-patterns/README.md) — onde muitos desses testes vivem
- [`airflow-dag-patterns`](../airflow-dag-patterns/README.md) — rodar as validações dentro do pipeline
- [`kpi-dashboard-design`](../kpi-dashboard-design/README.md) — painéis que dependem de dados confiáveis
