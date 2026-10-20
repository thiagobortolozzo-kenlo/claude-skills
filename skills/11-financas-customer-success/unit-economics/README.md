# unit-economics

> Analisa se cada cliente (ou cada venda) dá lucro: receita média, custos diretos, margem de contribuição, LTV, CAC, payback e ponto de equilíbrio — para quem avalia um produto novo ou uma mudança de preço.

| | |
|---|---|
| **Área** | Finanças SaaS e Customer Success |
| **Como chamar** | `/unit-economics` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude (os dados de receita e custo vêm de planilhas ou do financeiro) |

## Para que serve

"Unit economics" é olhar o negócio na menor unidade: um cliente, uma assinatura, uma venda. A skill calcula quanto cada unidade traz de receita, quanto custa diretamente, quanto sobra (margem de contribuição), quanto vale ao longo do tempo (LTV), quanto custa conquistar (CAC) e em quanto tempo esse custo volta (payback). Também simula cenários de preço e o impacto no ponto de equilíbrio.

## Quando usar

- Antes de lançar um novo módulo ou plano, para saber se ele se sustenta.
- Para avaliar um reajuste de preço e o efeito na margem e no volume.
- Para comparar a rentabilidade de segmentos de clientes (imobiliárias pequenas, médias, redes).

**Exemplos de pedido:**

- "Calcula a margem de contribuição e o LTV/CAC do novo plano da Kenlo para imobiliárias pequenas."
- "Simula o impacto de um aumento de 8% no preço no ponto de equilíbrio."
- "Qual segmento de cliente tem o melhor payback?"

## Como funciona

1. O Claude define a unidade de análise (cliente, assinatura, produto).
2. Calcula a receita média por unidade (ARPU).
3. Levanta os custos variáveis diretos por unidade.
4. Calcula a margem de contribuição unitária.
5. Projeta LTV, estima CAC e avalia a relação LTV/CAC e o payback.
6. Para preço, simula aumentos ou reduções, estima o efeito na demanda e recalcula o ponto de equilíbrio.
7. Fecha com uma recomendação de decisão.

## O que você recebe

- Análise de unit economics passo a passo, com os cálculos visíveis.
- Simulações de preço e ponto de equilíbrio.
- Modelo de análise de LTV/CAC mensal.
- Recomendação de decisão com base nos números.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções, dois fluxos (viabilidade de SaaS e precificação de produto físico) e modelo de análise |

## Cuidados

- Os produtos e números dos exemplos são fictícios; substitua pelos dados reais.
- A elasticidade de preço é uma estimativa; teste antes de mudar o preço de toda a base.
- Valide quais custos entram como "diretos" com o financeiro, para não inflar a margem.

## Relacionadas

- [`saas-metrics`](../saas-metrics/README.md) — métricas da base inteira (churn, NRR, Quick Ratio)
- [`pricing`](../../01-marketing-estrategia/pricing/README.md) — estratégia de preço e planos
- [`revenue-forecast`](../revenue-forecast/README.md) — projeção de receita com os novos preços
