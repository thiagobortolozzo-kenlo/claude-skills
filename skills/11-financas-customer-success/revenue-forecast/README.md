# revenue-forecast

> Monta projeções de receita a partir do histórico e de premissas de negócio, com cenários otimista, realista e pessimista — para quem planeja metas, orçamento ou apresenta números para a diretoria.

| | |
|---|---|
| **Área** | Finanças SaaS e Customer Success |
| **Como chamar** | `/revenue-forecast` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude (os dados históricos vêm do ERP, CRM ou planilhas) |

## Para que serve

A skill ajuda a responder "quanto vamos faturar nos próximos 12 a 18 meses?". Parte do histórico de 24 a 36 meses, calcula a taxa de crescimento (inclusive CAGR, o crescimento anual composto), projeta uma linha base e depois ajusta com o que vai mudar: lançamentos, campanhas, preços. Por fim, cria cenários variando as premissas mais importantes (conversão, churn) para mostrar o intervalo de resultados possíveis.

## Quando usar

- Planejamento anual: definir metas de receita e orçamento.
- Avaliar o impacto de uma campanha, de um novo módulo ou de um reajuste de preço.
- Mostrar para a diretoria quanto a receita muda se o churn subir ou a conversão cair.

**Exemplos de pedido:**

- "Faz o forecast de receita dos próximos 12 meses com este histórico mensal."
- "Monta três cenários de receita variando churn em 2 pontos e conversão em 10%."
- "Qual o impacto na receita se lançarmos um módulo novo para 15% da base?"

## Como funciona

1. O Claude organiza os dados históricos de receita mensal.
2. Calcula a taxa de crescimento histórica.
3. Projeta a linha base para os próximos meses.
4. Incorpora premissas futuras (lançamentos, campanhas, preços, sazonalidade).
5. Identifica as variáveis que mais pesam e define cenários otimista, realista e pessimista.
6. Calcula cada cenário e mostra a sensibilidade: quais alavancas mudam mais o resultado.

## O que você recebe

- Projeção mensal de receita com premissas explícitas.
- Três cenários e análise de sensibilidade.
- Modelos de planilha de projeção e de análise de cenários.
- Checklist, métricas de referência e erros comuns (como ignorar a sazonalidade).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções, dois fluxos (projeção base e cenários), modelos de planilha e checklist |

## Cuidados

- Forecast é estimativa, não promessa. Sempre apresente as premissas junto com os números.
- Os exemplos da skill são de e-commerce; para SaaS, projete também por MRR e por cohort.
- Valide a base histórica com o financeiro antes de levar os números adiante.

## Relacionadas

- [`recurring-revenue-model`](../recurring-revenue-model/README.md) — MRR por fonte, base para a projeção
- [`saas-metrics`](../saas-metrics/README.md) — churn e NRR que entram nas premissas
- [`kpi-dashboard-design`](../../12-dados-engenharia/kpi-dashboard-design/README.md) — acompanhar real contra projetado
- [`marketing-plan`](../../01-marketing-estrategia/marketing-plan/README.md) — campanhas que viram premissas do forecast
