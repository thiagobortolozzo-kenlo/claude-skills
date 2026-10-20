# influencer-marketing

> Planeja parcerias com influenciadores, criadores e embaixadores: escolher, negociar, briefar, cumprir regras de divulgação e medir retorno.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/influencer-marketing` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Ajuda a montar campanhas com criadores de conteúdo em redes de consumo (Instagram, TikTok, YouTube) e B2B (LinkedIn, newsletters, podcasts de nicho). O foco é escolher pelo encaixe do público, e não pelo número de seguidores, fechar acordos justos, proteger a marca com divulgação clara de publicidade e medir custo por resultado real.

## Quando usar

- Você quer encontrar e avaliar criadores que falam com corretores e donos de imobiliária.
- Precisa saber quanto pagar e o que negociar (direito de uso do conteúdo em anúncios, exclusividade).
- Quer um briefing para o criador que não engesse a fala dele.
- Quer criar um programa de embaixadores ou uma rede de criadores de UGC.

**Exemplos de pedido:**

- "Monte uma campanha com microinfluenciadores do mercado imobiliário para divulgar a Kenlo."
- "Escreva o briefing para um criador do LinkedIn falar sobre nosso CRM."
- "Desenhe um programa de embaixadores com clientes que já recomendam a Kenlo."

## Como funciona

1. Lê o contexto de produto, se existir, e pergunta o objetivo, orçamento (dinheiro ou produto), plataformas e limites de marca.
2. Escolhe o modelo no espectro: influenciador pago, afiliado, envio de produto, programa de embaixadores ou defensor orgânico.
3. Avalia criadores por nível (nano, micro, médio, macro, líder de opinião B2B) e por checklist: engajamento, seguidores falsos, histórico de publis, segurança de marca.
4. Estrutura o acordo: modelo de pagamento, faixas de preço para negociar, entregáveis, direitos de uso e exclusividade.
5. Inclui as regras de divulgação de publicidade no briefing e no contrato.
6. Monta o briefing (por quê, 2 ou 3 mensagens, chamada para ação, limites) e o plano de medição (cupom, UTM, página exclusiva, pergunta "como nos conheceu").

## O que você recebe

- Lista de critérios e plano de seleção de criadores.
- Estrutura de acordo com o que negociar.
- Briefing criativo pronto para enviar.
- Plano de medição e checklist completo da campanha.
- Desenho de programa de embaixadores, quando pedido.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/ugc-creator-program.md` | Como montar uma rede própria de criadores de UGC em volume, com regras de conformidade, formatos, contratação e ciclo de revisão |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- As regras de divulgação citadas são da FTC (Estados Unidos). No Brasil, siga o Guia de Publicidade por Influenciadores do CONAR e confirme com o jurídico.
- As faixas de preço estão em dólar e são pontos de partida para negociação, não tabela.
- A marca também responde pelo que o criador publica: confira se a identificação de publicidade foi feita.
- A skill cita ferramentas como `social-fetch` e `watch-video`, que não fazem parte desta biblioteca.

## Relacionadas

- [`referrals`](../referrals/README.md) — rastreio e pagamento de comissão para criadores afiliados.
- [`community-marketing`](../community-marketing/README.md) — defensores orgânicos e comunidade.
- [`ad-creative`](../../04-anuncios-conversao-vendas/ad-creative/README.md) — transforma o conteúdo do criador em anúncio.
- [`attribution`](../../04-anuncios-conversao-vendas/attribution/README.md) — mede o impacto que cupom e link não pegam.
