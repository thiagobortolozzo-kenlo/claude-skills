# market-content

> Agente que analisa o texto de um site: clareza do título, proposta de valor, persuasão, profundidade e chamadas para ação, com reescritas de antes e depois. Faz parte da auditoria `/market audit`.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | O Claude chama este agente sozinho quando você roda a skill `market-audit` (é um dos 5 agentes em paralelo). Também dá para usar sozinho: peça "roda o market-content em kenlo.com.br" |
| **Skills que usa** | Nenhuma skill própria. É lançado pela skill `market-audit` e usa a leitura de páginas da web do Claude |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Acesso à web (WebFetch) |

## Para que serve

Avalia a dimensão "Conteúdo e mensagem" do site. Lê as páginas principais e diz, com exemplos tirados do próprio site, o que está bom, o que precisa mudar e o que está faltando. Para os três maiores problemas, já entrega o texto reescrito.

## Quando usar

- Dentro de uma auditoria de marketing completa.
- Quando você quer uma revisão rápida do texto do site antes de um lançamento.
- Quando a página recebe visitas mas converte pouco e você suspeita da mensagem.

**Exemplos de pedido:**

- "/market audit kenlo.com.br"
- "Roda o market-content na página inicial da Kenlo."
- "Avalia a clareza da mensagem da nossa página de preços."

## Como funciona

1. Lê a página inicial, a página "Sobre", a de preços, uma página de produto e um post do blog (se existirem).
2. Dá nota de 0 a 10 em cinco pontos: clareza do título, força da proposta de valor, persuasão do texto, profundidade do conteúdo e eficácia das chamadas para ação.
3. Para cada página, lista acertos, correções (com sugestão concreta) e o que falta.
4. Escreve "antes e depois" dos três problemas mais importantes, explicando a mudança.

## O que você recebe

- Nota geral e tabela de notas por dimensão.
- Principais acertos e correções críticas.
- Reescritas com o texto atual, o texto sugerido e o porquê.
- Lista de elementos que faltam no site.

## Arquivos do agente

| Arquivo | O que tem |
|---|---|
| `AGENT.md` | Instruções que o agente segue: páginas a ler, critérios de nota, formato da resposta e regras |

## Cuidados

- As reescritas são sugestões; ajuste ao tom de voz da Kenlo antes de publicar.
- O agente avalia só as páginas que consegue ler; páginas atrás de login ficam de fora.
- Revise o resultado antes de compartilhar.

## Relacionadas

- [`market-audit`](../../../skills/01-marketing-estrategia/market-audit/README.md) — a skill que lança este agente.
- [`market-conversion`](../market-conversion/README.md) — agente irmão focado em conversão.
- [`copywriting`](../../../skills/02-copy-conteudo/copywriting/README.md) — para reescrever as páginas a fundo.
- [`market-copy`](../../../skills/02-copy-conteudo/market-copy/README.md) — sugestões de texto dentro da suíte `market-*`.
