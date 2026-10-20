# image

> Ajuda a criar, editar e otimizar imagens de marketing (capa de blog, post social, banner, mockup, imagem de compartilhamento) — para quem produz conteúdo e não sabe qual ferramenta usar.

| | |
|---|---|
| **Área** | Imagem e foto |
| **Como chamar** | `/image` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude para orientar; para gerar imagens de fato, uma conta/chave de alguma ferramenta (Gemini, Flux, Ideogram, OpenAI) em variável de ambiente, ou Canva/Figma |

## Para que serve

A skill funciona como um produtor visual: pergunta o objetivo e o lugar onde a imagem vai aparecer, escolhe a melhor abordagem (gerar com IA, editar, usar Canva/Figma, fazer print da tela real ou banco de imagens) e entrega o prompt, as medidas certas e as dicas de otimização para o site carregar rápido.

## Quando usar

- Você precisa de uma imagem de capa para um artigo do blog.
- Você vai fazer a mesma arte em vários tamanhos (LinkedIn, Instagram, Stories, X).
- Você quer mostrar uma tela do produto em um mockup bonito.
- O site está lento por causa de imagens pesadas.

**Exemplos de pedido:**

- "Preciso de uma imagem de capa para um post sobre como captar mais leads de imóveis."
- "Quais tamanhos de banner eu preciso para LinkedIn e X da Kenlo?"
- "Monta um mockup do app da Kenlo para anunciar uma funcionalidade nova."

## Como funciona

1. O Claude lê o arquivo de contexto de produto (`.agents/product-marketing.md`), se existir.
2. Pergunta o tipo de imagem, o canal, as medidas, se há manual de marca e se você tem chaves de alguma ferramenta.
3. Escolhe a abordagem e a ferramenta (ex.: Ideogram quando precisa de texto na imagem; prints reais para mostrar tela do produto, nunca IA).
4. Monta o prompt no formato Assunto + Cenário + Estilo + Luz + Composição + Detalhes técnicos.
5. Indica medidas por plataforma e como otimizar (WebP, compressão, `loading="lazy"`, texto alternativo).
6. Para imagens de compartilhamento de link (OG), mostra as tags necessárias e opções para gerá-las automaticamente.

## O que você recebe

- Recomendação de ferramenta e abordagem.
- Prompts prontos para gerar a imagem.
- Tabela de medidas por plataforma.
- Checklist e comandos de otimização de imagem para web.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/ai-image-prompting.md` | Guia de prompts por modelo, estilos, luz, composição e custos |
| `evals/evals.json` | Casos de teste para avaliar se a skill responde bem |

## Cuidados

- Não use IA para "inventar" telas do produto: ela cria interfaces falsas. Use prints reais.
- Ferramentas de geração cobram por imagem; confira o preço antes de gerar em volume.
- Chaves de API ficam em variáveis de ambiente, nunca no repositório.
- Logotipos não devem ser criados por IA; peça ao time de design.

## Relacionadas

- [`image-studio`](../image-studio/README.md) — gera de fato a imagem com Gemini ou Stability
- [`ad-creative`](../../04-anuncios-conversao-vendas/ad-creative/README.md) — imagens e textos para anúncios pagos
- [`screenshots`](../../07-design-ui/screenshots/README.md) — prints de produto para marketing
- [`social`](../../05-redes-sociais/social/README.md) — o que postar nas redes
