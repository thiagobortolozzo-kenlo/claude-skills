# analytics

> Monta, melhora e audita o rastreamento de dados (GA4, Google Tag Manager, eventos e UTMs) para quem precisa saber se o marketing está funcionando.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/analytics` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. A implementação em si acontece no GA4, GTM ou ferramenta de produto (Mixpanel, Amplitude, PostHog, Segment) |

## Para que serve

Transforma perguntas de negócio ("de onde vêm os cadastros?") em um plano de rastreamento claro: quais eventos medir, como nomeá-los, que propriedades enviar e como validar. Ajuda também a diagnosticar quando os números "não batem" ou os eventos não disparam.

## Quando usar

- Vai lançar um site ou landing page e precisa definir o que medir.
- Os eventos do GA4 pararam de aparecer e você não sabe por quê.
- Quer padronizar UTMs entre o time de mídia e o de conteúdo.

**Exemplos de pedido:**

- "Cria um plano de tracking para a landing de demonstração da Kenlo."
- "Como configuro conversão de formulário no GA4 via Tag Manager?"
- "Monta uma convenção de UTMs para nossas campanhas de LinkedIn e Meta."

## Como funciona

1. Pergunta quais decisões os dados vão apoiar, o que já existe e qual a tecnologia do site.
2. Parte das perguntas de negócio para chegar aos eventos (não o contrário).
3. Propõe nomes no padrão objeto_ação (ex.: `form_submitted`) e propriedades padrão.
4. Dá o passo a passo de implementação no GA4 e no GTM, com exemplos de código e data layer.
5. Sugere a estratégia de UTMs e um checklist de validação e debug.
6. Lembra os pontos de privacidade e consentimento.

## O que você recebe

- Documento de plano de rastreamento (eventos, propriedades, gatilhos, conversões).
- Convenção de UTMs.
- Instruções de implementação no GA4 e GTM.
- Checklist de validação e lista de problemas comuns.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/event-library.md` | Biblioteca de eventos por tipo de negócio |
| `references/ga4-implementation.md` | Implementação detalhada do GA4 |
| `references/gtm-implementation.md` | Implementação detalhada do Google Tag Manager |
| `evals/evals.json` | Casos de teste da skill |

## Cuidados

- Nunca envie dados pessoais (nome, e-mail, telefone) como propriedade de evento: isso fere a LGPD e as regras do GA4.
- Respeite o banner de consentimento antes de disparar tags de marketing.
- Peça ao time de desenvolvimento para revisar o código antes de publicar.

## Relacionadas

- [`attribution`](../attribution/README.md) — usa esses dados para dizer qual canal gera receita
- [`ab-testing`](../ab-testing/README.md) — depende do tracking para medir experimentos
- [`kpi-dashboard-design`](../../12-dados-engenharia/kpi-dashboard-design/README.md) — transforma os eventos em painéis
- [`lgpd-compliance-check`](../../10-juridico-lgpd/lgpd-compliance-check/README.md) — confere a parte de privacidade
