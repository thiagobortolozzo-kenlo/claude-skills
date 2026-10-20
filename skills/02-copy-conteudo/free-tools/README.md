# free-tools

> Ajuda a escolher, avaliar e planejar ferramentas gratuitas (calculadoras, geradores, analisadores) que atraem leads e tráfego, para quem pensa em aquisição e conteúdo.

| | |
|---|---|
| **Área** | Copy e conteúdo |
| **Como chamar** | `/free-tools` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. Para construir a ferramenta, você vai precisar de desenvolvimento próprio ou de uma ferramenta no-code (Typeform, Tally, Outgrow etc.) |

## Para que serve

Uma ferramenta gratuita útil (ex.: uma calculadora de retorno) pode gerar leads, links de outros sites e lembrança de marca por anos. Esta skill ajuda a encontrar a ideia certa a partir das dores do público, validar se vale o investimento, decidir se e como pedir o e-mail do usuário e definir a versão mínima para lançar.

## Quando usar

- Você quer um novo canal de geração de leads além de e-books e webinars.
- Tem uma ideia de calculadora ou gerador e quer saber se vale construir.
- Precisa decidir entre construir do zero, usar no-code ou incorporar algo pronto.

**Exemplos de pedido:**

- "Vale a pena criarmos uma calculadora gratuita para gerar leads?"
- "Me dá 5 ideias de ferramentas gratuitas para atrair donos de imobiliária."
- "Avalia essa ideia: uma calculadora de comissão de corretor no site da Kenlo."

## Como funciona

1. Se existir o arquivo de contexto de produto (`.agents/product-marketing.md` ou `.claude/product-marketing.md`), o Claude lê primeiro. Depois entende o negócio, o objetivo (leads, SEO, marca, educação) e os recursos disponíveis (time técnico, manutenção, verba de divulgação).
2. Gera ideias a partir de dores: o que o público pesquisa no Google, que tarefas manuais são chatas, o que precisa saber antes de comprar.
3. Classifica por tipo: calculadoras, geradores, analisadores, testadores, bibliotecas ou ferramentas interativas.
4. Valida cada ideia: demanda de busca, diferencial, qualidade do lead e viabilidade.
5. Define como capturar o lead (totalmente fechado, parcial ou aberto), a estratégia de SEO e se é melhor construir, usar no-code ou incorporar algo pronto.
6. Pontua a ideia numa tabela de 8 critérios (25 ou mais = candidata forte) e define o escopo mínimo.

## O que você recebe

- Lista de ideias de ferramenta ligadas ao seu produto.
- Avaliação com nota por critério e recomendação.
- Estratégia de captura de lead, SEO e o escopo da primeira versão.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/tool-types.md` | Tipos de ferramenta com exemplos e ideias por setor |
| `references/tool-benchmarks.md` | Casos reais (Unsplash, HubSpot Website Grader, Moz, Buffer, Shopify) e números de conversão |
| `evals/evals.json` | Casos de teste para avaliar se a skill está funcionando bem |

## Cuidados

- Ferramentas que recebem dados do usuário ou chamam APIs precisam de manutenção e cuidado de segurança. Inclua isso no custo antes de construir.
- Se a ferramenta coletar dados pessoais (e-mail, telefone, dados da imobiliária), siga a LGPD: diga para que serve e peça só o necessário.
- Acompanhe leads e conversão, não só visitas.
- A skill planeja a estratégia; ela não constrói a ferramenta.

## Relacionadas

- [`lead-magnets`](../lead-magnets/README.md) — iscas para download (e-book, checklist), alternativa ou complemento
- [`emails`](../emails/README.md) — nutrir os leads que vierem da ferramenta
- [`seo-audit`](../../03-seo-busca/seo-audit/README.md) — otimizar a página da ferramenta para busca
- [`programmatic-seo`](../../03-seo-busca/programmatic-seo/README.md) — quando a ferramenta gera muitas páginas a partir de dados
