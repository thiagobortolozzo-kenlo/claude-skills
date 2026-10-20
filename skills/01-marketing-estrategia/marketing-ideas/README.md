# marketing-ideas

> Banco de 139 ideias de marketing que o Claude filtra e adapta ao seu produto, estágio e orçamento, para quando você está sem saber o que tentar.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/marketing-ideas` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Funciona como um ponto de partida quando o time está travado. A skill tem uma biblioteca de 139 táticas organizadas em 17 categorias (conteúdo e SEO, ferramentas gratuitas, anúncios, comunidade, e-mail, parcerias, eventos, imprensa, lançamentos, crescimento pelo produto, formatos de conteúdo, ações não convencionais e outras). Em vez de despejar a lista, o Claude escolhe de 3 a 5 ideias que fazem sentido para o seu caso e explica como começar.

## Quando usar

- Você precisa de ideias novas para crescer e não sabe por onde começar.
- Quer saber o que faz sentido para o seu estágio (pré-lançamento, início, crescimento, escala).
- Tem pouco orçamento e quer táticas de baixo custo.
- Quer inspiração para uma ação de marketing de guerrilha.

**Exemplos de pedido:**

- "Me dê 5 ideias de marketing de baixo custo para a Kenlo atrair mais imobiliárias pequenas."
- "Que ferramenta gratuita a Kenlo poderia lançar para gerar leads de corretores?"
- "Quero uma ação de guerrilha para a convenção do setor imobiliário."

## Como funciona

1. Lê o contexto de produto, se existir, e pergunta o que faltar: estágio, objetivo, orçamento, tamanho do time, o que já foi tentado e táticas de concorrentes que você admira.
2. Consulta a biblioteca de 139 ideias e os atalhos por estágio, orçamento, prazo e caso de uso (leads rápidos, autoridade, pouco orçamento, crescimento pelo produto, venda enterprise).
3. Sugere de 3 a 5 ideias mais relevantes.
4. Detalha a implementação das ideias que você escolher, considerando tempo, verba e equipe.

## O que você recebe

Para cada ideia sugerida:

- Nome e descrição em uma linha.
- Por que combina com a sua situação.
- Os 2 ou 3 primeiros passos para começar.
- O que é sucesso.
- Recursos necessários (tempo, verba, habilidades).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais e tabela rápida das categorias |
| `references/ideas-by-category.md` | A lista completa das 139 ideias com descrição |
| `references/guerrilla-marketing.md` | Aprofundamento da ideia de marketing de guerrilha: regras para mala direta, disciplina de retorno e casos reais |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- As ideias foram pensadas para SaaS em geral e os casos são majoritariamente estrangeiros; peça ao Claude para adaptar ao público de imobiliárias.
- A skill sugere; para executar cada ideia, use a skill do canal correspondente.
- Ações de guerrilha e mala direta podem envolver dados pessoais e regras locais; confira com o jurídico.

## Relacionadas

- [`marketing-plan`](../marketing-plan/README.md) — quando você quer um plano completo em vez de ideias soltas.
- [`marketing-loops`](../marketing-loops/README.md) — transforma as ideias que funcionam em rotinas recorrentes.
- [`free-tools`](../../02-copy-conteudo/free-tools/README.md) — para a ideia de ferramenta gratuita como marketing.
- [`referrals`](../referrals/README.md) — para ideias de indicação e crescimento viral.
