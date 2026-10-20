# pricing

> Ajuda a decidir quanto cobrar, como montar os planos e como apresentar a página de preços, inclusive para que assistentes de IA consigam ler seus preços.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/pricing` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude (acesso à web ajuda na análise de páginas de preço) |

## Para que serve

Organiza a decisão de preço em três eixos: o que entra em cada plano (empacotamento), pelo que você cobra (métrica de valor, como por usuário, por imóvel ou por contato) e quanto cobra. Também cobre pesquisa de disposição a pagar, quando e como aumentar preços sem perder a base e uma auditoria da página de preços em duas frentes: o comprador humano e os assistentes de IA que hoje comparam ferramentas antes da visita ao site.

## Quando usar

- Você vai definir o preço de um produto ou módulo novo.
- Quer revisar a estrutura de planos (quantos planos, o que diferencia cada um, plano grátis ou teste grátis).
- Está pensando em aumentar preços e quer um plano de transição.
- Quer auditar a página de preços.

**Exemplos de pedido:**

- "Qual métrica de cobrança faz mais sentido para a Kenlo: por usuário, por imóvel ou por imobiliária?"
- "Monte uma estrutura de três planos para um módulo novo da Kenlo."
- "Faça uma auditoria da nossa página de preços, inclusive se o ChatGPT consegue ler os valores."

## Como funciona

1. Lê o contexto de produto, se existir, e pergunta: tipo de produto, preço atual, mercado-alvo, modelo de venda, valor entregue, concorrentes, conversão, ARPU, churn e objetivo.
2. Aplica os fundamentos: preço baseado em valor, entre a melhor alternativa do cliente e o valor percebido, nunca só em custo ou concorrente.
3. Para quem ainda não tem preço, sugere começar por ordem de grandeza e aprender com compradores reais.
4. Escolhe a métrica de valor e a estrutura de planos (bom, melhor, ótimo).
5. Indica métodos de pesquisa (Van Westendorp, MaxDiff, pesquisa de disposição a pagar).
6. Para aumento de preço, propõe um passo a passo: testar em clientes novos, migrar a base em ondas e comunicar com antecedência.
7. Na auditoria da página, dá nota em 10 dimensões e faz o "teste de colar" para ver se uma IA consegue dizer os planos e preços.

## O que você recebe

- Recomendação de métrica de valor e modelo de cobrança.
- Estrutura de planos com diferenciação clara.
- Plano de pesquisa de preço, quando necessário.
- Plano de aumento de preço com etapas e comunicação.
- Relatório de auditoria da página de preços com correções priorizadas.
- Checklist de preço.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/pricing-models.md` | Os oito modelos de cobrança, combinações e o risco do preço baixo demais |
| `references/tier-structure.md` | Quantos planos ter, como diferenciar, empacotamento por persona, plano grátis x teste grátis |
| `references/research-methods.md` | Como fazer Van Westendorp, MaxDiff e pesquisas de disposição a pagar |
| `references/pricing-page-teardown.md` | Critérios de nota e modelo de relatório para auditar a página de preços |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- Os exemplos e faixas estão em dólar e pensados para SaaS americano; ajuste para o mercado imobiliário brasileiro.
- Mudança de preço afeta contratos ativos; envolva financeiro, comercial e jurídico antes de anunciar.
- Pesquisas de preço com clientes coletam dados pessoais; siga a LGPD.

## Relacionadas

- [`offers`](../offers/README.md) — para pacotes, bônus e garantias em serviços e ofertas especiais.
- [`paywalls`](../../04-anuncios-conversao-vendas/paywalls/README.md) — telas de upgrade dentro do produto.
- [`unit-economics`](../../11-financas-customer-success/unit-economics/README.md) — a conta de margem e retorno por cliente.
- [`schema`](../../03-seo-busca/schema/README.md) — marcação de preços para buscadores e IAs.
