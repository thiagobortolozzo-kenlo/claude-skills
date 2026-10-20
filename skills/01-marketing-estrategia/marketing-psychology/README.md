# marketing-psychology

> Explica os princípios de psicologia e comportamento por trás das decisões de compra e mostra como aplicá-los com ética em páginas, ofertas, preços e mensagens.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/marketing-psychology` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Reúne cerca de 70 modelos mentais e vieses de comportamento, como ancoragem, prova social, aversão à perda, efeito padrão, paradoxo da escolha e efeito IKEA, e traduz cada um em aplicação prática de marketing. O Claude identifica quais modelos se aplicam ao seu problema, explica a lógica por trás e sugere como usar sem manipular.

## Quando usar

- A conversão de uma página ou formulário está baixa e você quer entender o comportamento por trás.
- Clientes acham o preço caro e você quer mudar a forma de apresentar.
- Quer melhorar o onboarding para mais pessoas chegarem ao primeiro resultado.
- Quer entender por que clientes ficam ou cancelam.

**Exemplos de pedido:**

- "Que princípios de psicologia posso usar para aumentar os pedidos de demonstração da Kenlo?"
- "Como apresentar os planos da Kenlo para que o plano intermediário pareça a escolha natural?"
- "Por que os corretores param de usar o app depois da primeira semana? Que vieses explicam isso?"

## Como funciona

1. Lê o contexto de produto, se existir, para adaptar as recomendações.
2. Pergunta o que for preciso: qual comportamento você quer influenciar, o que o cliente acredita antes, em que etapa da jornada ele está e o que impede a ação.
3. Identifica os modelos que se aplicam, usando a tabela de referência rápida por desafio (conversão baixa, objeção de preço, confiança, urgência, retenção, crescimento parado, indecisão, onboarding).
4. Explica a psicologia de cada um, dá aplicações específicas e orienta como implementar com ética.

## O que você recebe

- Lista dos modelos mentais relevantes para o seu desafio, com explicação curta.
- Aplicações práticas para a sua página, oferta, preço ou mensagem.
- Recomendações de como testar cada hipótese.

Os modelos estão organizados em seis grupos: pensamento estratégico, como os compradores pensam, persuasão, psicologia de preço, desenho e entrega, crescimento e escala.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais e todos os modelos mentais com aplicação em marketing |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- Escassez e urgência só podem ser usadas se forem verdadeiras; urgência falsa queima a confiança e pode violar o Código de Defesa do Consumidor.
- Os princípios são hipóteses; confirme com teste A/B antes de concluir que funcionaram.
- A skill explica e sugere; não altera páginas nem publica nada.

## Relacionadas

- [`cro`](../../04-anuncios-conversao-vendas/cro/README.md) — aplica a psicologia na otimização de páginas.
- [`copywriting`](../../02-copy-conteudo/copywriting/README.md) — escreve textos usando esses princípios.
- [`pricing`](../pricing/README.md) — táticas de preço e apresentação de planos.
- [`ab-testing`](../../04-anuncios-conversao-vendas/ab-testing/README.md) — testa as hipóteses de comportamento.
