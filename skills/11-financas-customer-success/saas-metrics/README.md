# saas-metrics

> Calcula e interpreta as principais métricas de um SaaS (MRR, churn, CAC, LTV, payback, NRR) e mostra o que fazer com elas — para quem precisa decidir onde investir e como reter clientes.

| | |
|---|---|
| **Área** | Finanças SaaS e Customer Success |
| **Como chamar** | `/saas-metrics` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude (os dados vêm do CRM, do faturamento ou de planilhas) |

## Para que serve

A skill traduz dados de assinatura e de custos em métricas que ajudam a decidir: quanto custa conquistar um cliente por canal (CAC), quanto ele gera ao longo da vida (LTV), em quantos meses o custo de aquisição se paga (payback), quanto da receita se perde por mês (churn de receita) e quanto a base cresce sozinha com expansões (NRR, Net Revenue Retention). Também traz o SaaS Quick Ratio para medir a qualidade do crescimento.

## Quando usar

- Você quer saber qual canal de marketing traz clientes mais rentáveis.
- O churn subiu e você quer entender onde e por quê.
- Você vai apresentar a saúde do negócio para a diretoria ou investidores.

**Exemplos de pedido:**

- "Calcula CAC, LTV e payback por canal com estes dados de marketing e vendas."
- "Qual foi o NRR da base de imobiliárias no último ano?"
- "Separa o churn voluntário do involuntário (falha de pagamento) e sugere ações."

## Como funciona

1. O Claude orienta a coletar os dados: clientes, início de assinatura, valor mensal, cancelamentos e motivos, custos por canal.
2. Calcula MRR e churn de receita.
3. Calcula CAC por canal, LTV (considerando margem bruta) e payback.
4. Analisa a razão LTV:CAC para decidir se aumenta ou reduz o investimento em cada canal.
5. Calcula o NRR e segmenta o churn (por plano, porte, canal, motivo).
6. Sugere ações para reduzir churn e aumentar expansão.

## O que você recebe

- Tabela de métricas calculadas com interpretação.
- Modelos de planilha de MRR e churn e de LTV/CAC por canal.
- Checklist, métricas de referência e erros comuns (ex.: esquecer o churn por falha de pagamento, calcular LTV sem margem).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções, dois fluxos (LTV/CAC e churn/NRR), modelos de planilha e checklist |

## Cuidados

- Use as mesmas definições de métrica que o financeiro usa, senão os números não batem com os relatórios oficiais.
- Benchmarks de mercado da skill são genéricos; compare principalmente com o histórico da própria empresa.
- Prefira dados agregados; não cole listas com dados pessoais de clientes na conversa.

## Relacionadas

- [`unit-economics`](../unit-economics/README.md) — margem de contribuição e ponto de equilíbrio por cliente
- [`recurring-revenue-model`](../recurring-revenue-model/README.md) — MRR por fonte e cohorts
- [`churn-prevention`](../../04-anuncios-conversao-vendas/churn-prevention/README.md) — ações práticas para reduzir cancelamentos
- [`kpi-dashboard-design`](../../12-dados-engenharia/kpi-dashboard-design/README.md) — painel com essas métricas
