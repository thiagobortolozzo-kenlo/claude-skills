# copywriting

> Escreve ou reescreve a copy de páginas do site (home, landing page, preços, recursos, sobre), para quem precisa de texto que convença e leve à ação.

| | |
|---|---|
| **Área** | Copy e conteúdo |
| **Como chamar** | `/copywriting` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Ajuda a escrever textos de página claros, específicos e sem vícios de IA. O Claude entende o objetivo da página, o público e o produto, monta a estrutura (título, subtítulo, botão, seções) e entrega o texto organizado, com explicação das escolhas e alternativas de título e botão para testar.

## Quando usar

- Criar a copy de uma landing page para campanha ou lançamento.
- Reescrever a home ou a página de preços que não está convertendo.
- Encontrar um título, uma proposta de valor ou o texto de um botão.

**Exemplos de pedido:**

- "Escreve a copy da landing page do nosso novo recurso, com 3 opções de título."
- "Reescreve a seção principal da home, está genérica demais."
- "Cria a página de preços da Kenlo para imobiliárias pequenas, médias e grandes, deixando claro qual plano escolher."

## Como funciona

1. Se existir o arquivo de contexto de produto (`.agents/product-marketing.md` ou `.claude/product-marketing.md`), o Claude lê primeiro. Depois pergunta o que faltar: tipo de página e ação principal, público e suas objeções, o que diferencia o produto, provas disponíveis e de onde vem o tráfego.
2. Escreve seguindo princípios simples: clareza antes de criatividade, benefício antes de recurso, específico antes de vago, a linguagem do cliente, uma ideia por seção.
3. Monta a página: título, subtítulo e CTA na primeira dobra; depois prova social, problema, solução, como funciona, objeções e CTA final. Ajusta para o tipo de página (home, landing, preços, recurso, sobre).
4. Escreve CTAs fortes (verbo + o que a pessoa ganha, ex.: "Começar meu teste grátis").
5. Antes de entregar, roda uma autoverificação contra uma lista de vícios de IA e marca `[NEED: ...]` onde falta um dado real, em vez de inventar.

## O que você recebe

- Copy da página organizada por seção (título, subtítulo, CTA, títulos e textos de seção, CTAs secundárias).
- Anotações explicando por que cada escolha foi feita.
- 2 a 3 alternativas de título e CTA, com justificativa.
- Título e meta description para SEO, quando fizer sentido.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/ai-tells.md` | Lista completa de vícios de escrita de IA proibidos ou limitados, com exemplos e autoverificação |
| `references/copy-frameworks.md` | Fórmulas de título, tipos de seção, modelos de página e o teste "Agora você pode" |
| `references/natural-transitions.md` | Expressões de transição naturais e quais evitar (em inglês) |
| `evals/evals.json` | Casos de teste para avaliar se a skill está funcionando bem |

## Cuidados

- Nunca publique estatísticas ou depoimentos inventados: além de quebrar a confiança, pode gerar problema jurídico. A própria skill orienta isso.
- As listas de palavras e transições são em inglês. Para português, revise o tom com alguém do time.
- A skill cuida do texto; se o problema for a estrutura ou a oferta, use as skills relacionadas.

## Relacionadas

- [`copy-editing`](../copy-editing/README.md) — revisar e polir o rascunho depois
- [`cro`](../../04-anuncios-conversao-vendas/cro/README.md) — otimizar a página além do texto
- [`offers`](../../01-marketing-estrategia/offers/README.md) — construir a oferta por trás da copy
- [`market-landing`](../../04-anuncios-conversao-vendas/market-landing/README.md) — análise completa de landing pages
