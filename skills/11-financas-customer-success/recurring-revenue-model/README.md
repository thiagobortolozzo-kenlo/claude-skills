# recurring-revenue-model

> Ajuda a montar e analisar o modelo de receita recorrente (MRR e ARR): de onde vem o crescimento, quanto se perde com cancelamentos e se a aquisição de clientes se paga — para quem acompanha os números de um negócio por assinatura.

| | |
|---|---|
| **Área** | Finanças SaaS e Customer Success |
| **Como chamar** | `/recurring-revenue-model` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude (os dados de assinaturas vêm do faturamento ou de planilhas) |

## Para que serve

Em um SaaS, a receita que importa é a que se repete todo mês (MRR, Monthly Recurring Revenue; ARR é o mesmo valor anualizado). A skill ensina a separar o MRR em partes: receita nova, expansão (upgrades, módulos extras), contração (downgrades) e churn (cancelamentos). Com isso dá para calcular o crescimento líquido, projetar os próximos meses, analisar grupos de clientes por mês de entrada (cohort) e comparar quanto um cliente vale (LTV) com quanto custa conquistá-lo (CAC).

## Quando usar

- Você quer entender por que o MRR cresceu pouco mesmo com muitas vendas novas.
- Você precisa projetar o MRR dos próximos meses para o planejamento.
- Você quer saber se o investimento em aquisição está valendo a pena (LTV:CAC).

**Exemplos de pedido:**

- "Separa o MRR do último mês em novo, expansão, contração e churn com estes dados."
- "Projeta o MRR da Kenlo para os próximos 6 meses com estas premissas."
- "Monta uma análise de cohort de retenção das imobiliárias por mês de entrada."

## Como funciona

1. O Claude orienta a organizar os dados de cada assinatura: entrada, cancelamento, upgrade e downgrade, com cliente e data.
2. Calcula o MRR inicial e separa as fontes de MRR.
3. Calcula o MRR líquido e a taxa de churn (de clientes e de receita).
4. Projeta o MRR para o próximo período.
5. Analisa cohorts para ver retenção e expansão ao longo do tempo.
6. Calcula CAC, LTV e a razão LTV:CAC para avaliar a rentabilidade do crescimento.

## O que você recebe

- Quebra do MRR por fonte e cálculo de crescimento líquido.
- Projeção de MRR/ARR.
- Análise de cohort e de LTV:CAC com interpretação.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções e dois fluxos (MRR/ARR e LTV/CAC) |

## Cuidados

- O resultado depende da qualidade dos dados: confira com o financeiro a definição oficial de MRR, churn e cliente ativo da empresa.
- Projeções são estimativas; deixe as premissas sempre escritas ao lado dos números.
- Use dados agregados ou por empresa; evite colar dados pessoais de contatos na conversa.

## Relacionadas

- [`saas-metrics`](../saas-metrics/README.md) — conjunto completo de métricas SaaS (NRR, payback, Quick Ratio)
- [`revenue-forecast`](../revenue-forecast/README.md) — projeção de receita com cenários
- [`unit-economics`](../unit-economics/README.md) — rentabilidade por cliente
- [`pricing`](../../01-marketing-estrategia/pricing/README.md) — preço e planos que alimentam o MRR
