# kpi-dashboard-design

> Ajuda a escolher os indicadores certos (KPIs) e a desenhar painéis que ajudam a decidir — para gestores, marketing, vendas, produto e quem monta dashboards.

| | |
|---|---|
| **Área** | Dados e engenharia |
| **Como chamar** | `/kpi-dashboard-design` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude para desenhar; os exemplos de código usam SQL e Python (Streamlit, pandas, Plotly), opcionais |

## Para que serve

Um bom painel mostra poucos números, os certos, para a pessoa certa. A skill organiza os KPIs em níveis (estratégico para a diretoria, tático para gestores, operacional para o dia a dia), aplica o critério SMART (específico, mensurável, alcançável, relevante e com prazo), sugere indicadores por área e traz modelos de layout: resumo executivo, painel de métricas SaaS e monitoramento em tempo real. Também mostra como calcular os KPIs em SQL e montar um painel simples em Python.

## Quando usar

- Você vai montar um painel novo e não sabe quais números colocar.
- O painel atual tem gráficos demais e ninguém usa.
- A diretoria pediu uma visão única de vendas, marketing, produto e finanças.

**Exemplos de pedido:**

- "Quais KPIs de marketing devem estar no painel mensal da diretoria da Kenlo?"
- "Desenha o layout de um painel de métricas SaaS com MRR, churn e NRR."
- "Escreve o SQL para calcular a taxa de conversão de lead em visita por mês."

## Como funciona

1. O Claude esclarece o objetivo, o público e a frequência de atualização do painel.
2. Classifica os indicadores por nível (estratégico, tático, operacional).
3. Seleciona KPIs por área (vendas, marketing, produto, finanças) e checa se são SMART.
4. Escolhe um modelo de layout e a hierarquia do painel.
5. Quando útil, escreve o SQL de cálculo e um exemplo de painel em Streamlit.
6. Revisa com a lista do que fazer e do que evitar.

## O que você recebe

- Lista de KPIs recomendados com definição e frequência.
- Esboço do layout do painel.
- SQL e código Python de exemplo, se pedido.
- Boas práticas de visualização.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Conceitos, KPIs por área, modelos de layout, exemplos de SQL e Streamlit e boas práticas |

## Cuidados

- Defina cada KPI por escrito (fórmula e fonte) e combine com o financeiro e o BI, para não haver dois números diferentes para a mesma coisa.
- Painéis com dados de clientes devem ter acesso restrito a quem precisa.
- O `SKILL.md` cita um arquivo `resources/implementation-playbook.md` que não existe neste repositório.

## Relacionadas

- [`saas-metrics`](../../11-financas-customer-success/saas-metrics/README.md) — definição e cálculo das métricas SaaS
- [`analytics`](../../04-anuncios-conversao-vendas/analytics/README.md) — rastrear os eventos que alimentam o painel
- [`data-quality-frameworks`](../data-quality-frameworks/README.md) — garantir que os números do painel estão certos
- [`dbt-transformation-patterns`](../dbt-transformation-patterns/README.md) — preparar as tabelas do painel
