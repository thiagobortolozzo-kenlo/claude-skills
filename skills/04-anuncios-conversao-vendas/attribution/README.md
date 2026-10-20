# attribution

> Ajuda a descobrir qual marketing realmente gera vendas e receita, e a conciliar números que não batem entre ferramentas.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/attribution` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude para a parte de interpretação. Para montar atribuição própria, ferramentas como PostHog, GA4, Segment ou o CRM (HubSpot, Salesforce) |

## Para que serve

Quando o Google diz uma coisa, o Meta diz outra e o CRM diz uma terceira, esta skill explica por que cada fonte "erra" e como chegar a uma leitura confiável. Ensina os modelos de atribuição (primeiro toque, último toque, multitoque), quando usar MMM ou testes de incrementalidade, e como montar uma atribuição própria que liga cada venda à sua origem.

## Quando usar

- Os painéis de mídia e o CRM mostram números de conversão muito diferentes.
- A diretoria pergunta "qual canal traz mais receita?" e você não sabe responder com segurança.
- Quer adicionar a pergunta "como você nos conheceu?" e usá-la nas análises.
- Precisa ligar agendamentos de demo (ex.: Calendly) à campanha que gerou o lead.

**Exemplos de pedido:**

- "O Meta diz que gerou 200 leads, mas o CRM mostra 90. Em quem eu confio?"
- "Qual modelo de atribuição faz sentido para a Kenlo, com ciclo de venda de 30 a 60 dias?"
- "Como ligo o agendamento de demo à origem do visitante?"

## Como funciona

1. Lê o contexto do produto (tipo de negócio, ciclo de venda, conversão principal).
2. Pilar A, interpretação: explica o que a atribuição consegue e não consegue dizer, compara modelos e os três paradigmas de medição (multitoque, MMM e incrementalidade).
3. Mostra como conciliar fontes: escolher uma fonte de verdade (geralmente o CRM), nunca somar plataformas e usar a resposta do cliente como desempate.
4. Pilar B, atribuição própria: como juntar a identidade do visitante, fechar lacunas de identificação e levar a origem até o registro no CRM.
5. Entrega uma leitura final com nível de confiança e recomendação.

## O que você recebe

- Relatório de atribuição (pergunta, fonte de verdade, o que cada fonte diz, lacunas, recomendação).
- Comparação de modelos para o seu ciclo de venda.
- Passos e exemplos de código para atribuição própria.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/attribution-models.md` | Explicação dos modelos de atribuição |
| `references/measurement-paradigms.md` | Multitoque, MMM e incrementalidade em detalhe |
| `references/by-business-type.md` | Recomendações por tipo de negócio |
| `references/first-party-tracking.md` | Exemplos de código para atribuição própria (PostHog e similares) |
| `evals/evals.json` | Casos de teste da skill |

## Cuidados

- Atribuição envolve dados pessoais (e-mail, identificadores). Garanta base legal e consentimento conforme a LGPD.
- Chaves de ferramentas (ex.: PostHog) ficam em variáveis de ambiente, nunca no código publicado.
- Nenhum modelo é a verdade absoluta; use as conclusões como direção, não como número exato.

## Relacionadas

- [`analytics`](../analytics/README.md) — configure o rastreamento antes da atribuição
- [`ads`](../ads/README.md) — pixels e conversões das plataformas de anúncio
- [`revops`](../revops/README.md) — usa a origem do lead no pipeline e no CRM
- [`ai-seo`](../../03-seo-busca/ai-seo/README.md) — o ponto cego das buscas por IA
