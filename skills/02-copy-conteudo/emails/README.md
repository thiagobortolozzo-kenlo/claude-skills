# emails

> Planeja e escreve sequências de e-mail automáticas (boas-vindas, nutrição, onboarding, reengajamento), para quem cuida do relacionamento por e-mail com leads e clientes.

| | |
|---|---|
| **Área** | Copy e conteúdo |
| **Como chamar** | `/emails` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. Para disparar os e-mails, use sua ferramenta de e-mail (Customer.io, Mailchimp, RD Station etc.), configurada fora do repo |

## Para que serve

Ajuda a desenhar a sequência inteira, e não só um e-mail solto: o que dispara a sequência, quantos e-mails, intervalo entre eles, o papel de cada um e quando a pessoa sai do fluxo. Depois escreve cada e-mail com assunto, texto de pré-visualização, corpo e botão, sem os vícios típicos de texto de IA.

## Quando usar

- Criar a sequência de boas-vindas para quem acabou de se cadastrar ou baixar um material.
- Montar o onboarding por e-mail de novos clientes ou a nutrição de leads até a venda.
- Reativar contatos que pararam de abrir os e-mails ou clientes que cancelaram.

**Exemplos de pedido:**

- "Cria uma sequência de boas-vindas de 5 e-mails para quem baixou nosso e-book."
- "Monta o onboarding por e-mail dos primeiros 14 dias de uma imobiliária que acabou de contratar a Kenlo."
- "Preciso de uma sequência de reengajamento para leads parados há 60 dias."

## Como funciona

1. Se existir o arquivo de contexto de produto (`.agents/product-marketing.md` ou `.claude/product-marketing.md`), o Claude lê primeiro. Depois entende o tipo de sequência, o público, o que disparou a entrada e o objetivo.
2. Aplica quatro princípios: um e-mail, uma função; valor antes do pedido; relevância antes de volume; caminho claro para o próximo passo.
3. Define tamanho e intervalo (ex.: boas-vindas de 5 a 7 e-mails em 12 a 14 dias; reengajamento de 3 a 4 e-mails após 30 a 60 dias de inatividade).
4. Escreve cada e-mail: gancho, contexto, conteúdo útil, CTA e assinatura humana, com parágrafos curtos e pensado para celular.
5. Revisa contra a lista de vícios de IA (assunto com "Re:" falso, "espero que esteja bem", "fique à vontade para entrar em contato").
6. Sugere o que medir.

## O que você recebe

- Visão geral da sequência: nome, gatilho, objetivo, quantidade, intervalo e condições de saída.
- Cada e-mail completo: momento de envio, assunto, pré-visualização, corpo, texto do botão e destino do link, segmentação.
- Plano de métricas com referências.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/sequence-templates.md` | Modelos completos das sequências de boas-vindas, nutrição, reengajamento e onboarding |
| `references/email-types.md` | Catálogo de tipos de e-mail (onboarding, retenção, cobrança, uso, win-back, campanhas) e checklist de auditoria |
| `references/copy-guidelines.md` | Estrutura, formatação, tom, tamanho, personalização, segmentação e testes |
| `evals/evals.json` | Casos de teste para avaliar se a skill está funcionando bem |

## Cuidados

- Envie e-mail de marketing só para quem deu consentimento ou tem relação com a empresa, e sempre com opção de descadastro (LGPD).
- Os prazos e tamanhos são referências gerais; ajuste ao ciclo de venda da Kenlo.
- A skill escreve e planeja; ela não configura a automação na sua ferramenta.
- Para prospecção fria, use a skill `cold-email`.

## Relacionadas

- [`lead-magnets`](../lead-magnets/README.md) — o material que dá origem à sequência de nutrição
- [`cold-email`](../cold-email/README.md) — e-mails para quem ainda não é lead
- [`onboarding`](../../04-anuncios-conversao-vendas/onboarding/README.md) — onboarding dentro do produto, que o e-mail complementa
- [`churn-prevention`](../../04-anuncios-conversao-vendas/churn-prevention/README.md) — e-mails de cancelamento e cobrança falha
