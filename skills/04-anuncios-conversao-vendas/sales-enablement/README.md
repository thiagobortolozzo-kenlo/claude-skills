# sales-enablement

> Cria materiais de apoio para o time comercial: apresentações, one-pagers, respostas a objeções, battle cards, roteiros de demo e propostas.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/sales-enablement` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Vendedor só usa material em que confia. A skill produz materiais curtos, específicos para cada situação e ligados a resultados de negócio: deck de vendas de 10 a 12 slides, folha de uma página para deixar com o cliente, guia de objeções, comparativo com concorrentes, análise de negócios ganhos e perdidos, calculadora de ROI, roteiro de demo, estudo de caso, proposta, playbook e cartões de persona.

## Quando usar

- O time de vendas precisa de um deck novo ou atualizado.
- Um cliente acabou de levantar uma objeção e o vendedor quer uma boa resposta.
- Vocês estão perdendo negócios para um concorrente e precisam entender por quê.

**Exemplos de pedido:**

- "Cria um deck de vendas do Kenlo Locação para donos de imobiliária."
- "O cliente disse que está caro comparado ao sistema atual. Como respondo?"
- "Monta um battle card contra o nosso principal concorrente."

## Como funciona

1. Pergunta o produto, o público, o estágio da venda e o material desejado.
2. Segue princípios: material específico por situação, fácil de escanear, ligado a resultados e com afirmações que o vendedor consiga sustentar.
3. Usa a estrutura própria de cada material (ex.: deck de 10 a 12 slides, one-pager, roteiro de demo).
4. Para objeções ao vivo, dá a resposta curta para usar na hora.
5. Para análise de ganhos e perdas, segue um fluxo de entrevistas e padrões.

## O que você recebe

- O material pedido, pronto para revisar: deck, one-pager, guia de objeções, battle card, roteiro, proposta ou playbook.
- Variações por tipo de comprador, quando fizer sentido.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/deck-frameworks.md` | Estruturas de apresentação de vendas |
| `references/one-pager-templates.md` | Modelos de one-pager |
| `references/objection-library.md` | Biblioteca de objeções e respostas |
| `references/demo-scripts.md` | Roteiros de demonstração |
| `references/cold-call-scripts.md` | Roteiros de ligação fria |
| `references/win-loss-analysis.md` | Como analisar negócios ganhos e perdidos |
| `evals/evals.json` | Casos de teste da skill |

## Cuidados

- Confira todos os números, preços e afirmações sobre concorrentes antes de entregar ao time; comparativos errados geram risco jurídico e de reputação.
- Use depoimentos e casos reais com autorização do cliente.

## Relacionadas

- [`competitor-profiling`](../../01-marketing-estrategia/competitor-profiling/README.md) — dossiês de concorrentes que alimentam os battle cards
- [`prospecting`](../prospecting/README.md) — pesquisa de contas antes do contato
- [`revops`](../revops/README.md) — processos e funil do time comercial
- [`market-proposal`](../../01-marketing-estrategia/market-proposal/README.md) — propostas comerciais
