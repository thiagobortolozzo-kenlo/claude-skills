# revops

> Organiza a operação de receita: ciclo de vida do lead, pontuação, distribuição para vendas, etapas do funil e automações de CRM.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/revops` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. A implementação acontece no seu CRM (ex.: HubSpot, Salesforce, Pipedrive) |

## Para que serve

RevOps (operações de receita) é o conjunto de regras e sistemas que ligam marketing, vendas e CS. A skill ajuda a definir quando um lead vira MQL e SQL, como pontuar leads, como distribuí-los entre vendedores, quais etapas o funil deve ter, quais automações o CRM precisa, como aprovar descontos e como manter os dados limpos.

## Quando usar

- Marketing e vendas discordam sobre o que é um "lead bom".
- Leads demoram para chegar ao vendedor ou se perdem no caminho.
- O funil do CRM está bagunçado e os relatórios não são confiáveis.

**Exemplos de pedido:**

- "Define critérios de MQL e SQL para leads de imobiliárias da Kenlo."
- "Monta um modelo de lead scoring com dados de perfil e de comportamento."
- "Quais automações o CRM precisa para o lead chegar ao vendedor em menos de 5 minutos?"

## Como funciona

1. Pergunta o modelo de vendas, as ferramentas usadas e os principais problemas.
2. Parte de princípios como "uma fonte única de verdade" e "definir antes de automatizar".
3. Define as etapas do ciclo de vida do lead, o MQL e o prazo de atendimento entre marketing e vendas.
4. Monta o modelo de pontuação e as regras de distribuição (rodízio, território, conta).
5. Organiza etapas do funil, automações essenciais e aprovação de condições especiais.
6. Define regras de higiene de dados e o painel de métricas de receita.

## O que você recebe

- Documento com definições de ciclo de vida, MQL e SQL.
- Modelo de lead scoring.
- Regras de distribuição e prazos de atendimento.
- Lista de automações e painel de métricas.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/lifecycle-definitions.md` | Definições de etapas do ciclo de vida |
| `references/scoring-models.md` | Modelos de pontuação de leads |
| `references/routing-rules.md` | Regras de distribuição de leads |
| `references/automation-playbooks.md` | Automações prontas de CRM |
| `evals/evals.json` | Casos de teste da skill |

## Cuidados

- Combine as definições com os líderes de marketing e vendas antes de automatizar.
- Enriquecimento de dados envolve dados pessoais; siga a LGPD.
- A skill desenha as regras; quem configura o CRM é o time responsável.

## Relacionadas

- [`crm-automation`](../../06-whatsapp-crm-automacao/crm-automation/README.md) — monta as automações em Make, n8n ou Zapier
- [`prospecting`](../prospecting/README.md) — gera as listas que entram no CRM
- [`attribution`](../attribution/README.md) — leva a origem do lead para o registro
- [`sales-enablement`](../sales-enablement/README.md) — materiais para o time comercial
