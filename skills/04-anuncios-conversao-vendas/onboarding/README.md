# onboarding

> Melhora a experiência logo depois do cadastro para que novos usuários cheguem rápido ao valor do produto e não abandonem.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/onboarding` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Muitos usuários se cadastram e nunca usam o produto de verdade. A skill ajuda a definir o "momento aha" (quando o usuário percebe o valor), medir a ativação e desenhar o primeiro uso: checklist de primeiros passos, telas vazias que orientam, tutoriais, e-mails coordenados com o produto e ações para quem travou no meio.

## Quando usar

- A taxa de ativação está baixa: as pessoas criam conta e somem.
- Vai desenhar a primeira experiência de um produto ou recurso novo.
- Quer saber qual é o "momento aha" do seu produto e como medir.

**Exemplos de pedido:**

- "Os usuários criam conta e não configuram nada. Como melhoro o onboarding?"
- "Define o momento aha do CRM da Kenlo para um corretor novo."
- "Monta um checklist de primeiros passos e os e-mails dos 7 primeiros dias."

## Como funciona

1. Faz uma avaliação inicial: produto, o que é ativação hoje e onde as pessoas param.
2. Aplica princípios como "tempo até o valor é tudo", "um objetivo por sessão" e "fazer em vez de mostrar".
3. Ajuda a encontrar o momento aha e as métricas de ativação.
4. Desenha o fluxo: primeiros 30 segundos, checklist, telas vazias, dicas e tours guiados.
5. Coordena e-mail e produto e propõe ações para usuários parados.
6. Sugere métricas, análise de funil e experimentos.

## O que você recebe

- Auditoria do onboarding atual com problemas priorizados.
- Desenho do novo fluxo de onboarding.
- Definição de ativação e métricas.
- Lista de experimentos para testar.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/activation-models.md` | Modelos para definir ativação |
| `references/minimum-path-to-value.md` | Como achar o caminho mais curto até o valor |
| `references/experiments.md` | Banco de experimentos de onboarding |
| `evals/evals.json` | Casos de teste da skill |

## Cuidados

- O momento aha precisa ser confirmado com dados reais de uso, não só com opinião do time.
- Mudanças no produto dependem de design e desenvolvimento; use o resultado como especificação.

## Relacionadas

- [`signup`](../signup/README.md) — otimiza o cadastro que vem antes
- [`paywalls`](../paywalls/README.md) — conversão para pago durante ou depois do onboarding
- [`client-onboarding`](../../11-financas-customer-success/client-onboarding/README.md) — onboarding de clientes B2B com time de CS
- [`emails`](../../02-copy-conteudo/emails/README.md) — série de e-mails de boas-vindas
