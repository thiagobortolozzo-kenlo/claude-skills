# marketing-council

> Reúne um "conselho" simulado de grandes nomes do marketing para debater uma decisão sua, mostrar onde eles discordam e chegar a uma recomendação.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/marketing-council` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude (busca na web é opcional, para trazer citações recentes) |

## Para que serve

Em vez de uma opinião só, você recebe várias visões que conflitam de propósito. O Claude aplica os métodos publicados de 12 especialistas (Seth Godin, David Ogilvy, Eugene Schwartz, Claude Hopkins, Gary Halbert, Russell Brunson, Alex Hormozi, April Dunford, Rory Sutherland, Byron Sharp, Ann Handley e Gary Vaynerchuk) ao seu problema. O mais valioso é o mapa de discordâncias: qual é o verdadeiro dilema por trás de cada conflito e que evidência resolveria.

## Quando usar

- Você tem uma decisão importante (posicionamento, preço, lançamento, rebranding) e quer ver os prós e contras de vários ângulos.
- Quer uma segunda opinião sobre um título, uma página ou uma campanha.
- Quer saber "o que o Ogilvy diria" sobre um texto específico.

**Exemplos de pedido:**

- "Coloque o conselho para debater se a Kenlo deve focar em imobiliárias pequenas ou grandes redes."
- "O que o Hormozi e o Godin achariam da nossa oferta de teste grátis?"
- "Revise com o conselho este título da landing page para gestores de imobiliária."

## Como funciona

1. Lê o contexto de produto, se existir, e pergunta só o que faltar: a pergunta, o que está em jogo e o modo da sessão.
2. Escolhe o modo: visão rápida (1 conselheiro), sessão (3 a 5, padrão) ou conselho completo (12, só para decisões grandes).
3. Senta conselheiros que combinam com o tipo de pergunta e sempre pelo menos um "dissidente", alguém cuja visão contraria a direção que a pergunta já sugere.
4. Carrega o dossiê de cada conselheiro e, se fizer sentido, faz uma pesquisa na web pelas posições mais recentes.
5. Escreve a visão de cada um (2 a 4 parágrafos, com os métodos dele), o mapa de discordâncias e a síntese do presidente com próximos passos e qual alerta acompanhar.

## O que você recebe

- Aviso de que é uma simulação.
- A pergunta reformulada e quem foi sentado, com o motivo.
- A visão de cada conselheiro com uma conclusão em uma frase.
- O mapa de 2 a 4 discordâncias reais e o que resolveria cada uma.
- A recomendação final: o que fazer, o sinal de alerta e quais skills usar para executar.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais: modos, como escolher o conselho, protocolo da sessão e regras de fidelidade |
| `references/advisors/` | 12 dossiês, um por conselheiro: métodos, posições documentadas com fonte, perguntas típicas, pontos cegos, voz e obras principais |
| `references/advisor-template.md` | Modelo para criar um conselheiro próprio (por exemplo, um executivo interno) |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- É simulação, não a opinião real dessas pessoas. A skill proíbe citações inventadas e nunca atribui a eles opinião sobre a sua empresa.
- Conselheiros personalizados são salvos em `.agents/advisors/` no seu projeto; para pessoas reais não famosas, é você quem fornece as posições.
- O conselho decide direção, não executa. Para escrever a página ou a campanha, use a skill indicada na síntese.
- Os conselheiros são todos do mercado americano; adapte as conclusões ao contexto brasileiro e imobiliário.

## Relacionadas

- [`product-marketing`](../product-marketing/README.md) — executa o posicionamento quando a visão da April Dunford vence.
- [`offers`](../offers/README.md) — monta a oferta quando a direção é a de Hormozi ou Halbert.
- [`marketing-psychology`](../marketing-psychology/README.md) — aprofunda a mecânica comportamental de Sutherland.
- [`ab-testing`](../../04-anuncios-conversao-vendas/ab-testing/README.md) — quando a discordância só se resolve testando.
