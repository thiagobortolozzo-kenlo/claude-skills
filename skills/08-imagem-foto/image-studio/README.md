# image-studio

> Um "porteiro" para pedidos de imagem: entende o que você quer e escolhe sozinho entre a `ai-studio-image` (fotos realistas de pessoas) e a `stability-ai` (arte, ilustração e edição).

| | |
|---|---|
| **Área** | Imagem e foto |
| **Como chamar** | `/image-studio` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | As mesmas coisas das duas skills que ela usa: Python, `GEMINI_API_KEY` (para fotos) e/ou `STABILITY_API_KEY` (para arte e edição), sempre em variáveis de ambiente, nunca no repositório |

## Para que serve

Você não precisa saber qual ferramenta de imagem usar. A skill olha o pedido e decide: se é foto realista de pessoa, vai para o Gemini; se é ilustração, arte, edição de uma imagem existente, aumento de resolução ou remoção de fundo, vai para a Stability AI. Depois monta o prompt adequado para o modelo escolhido e devolve a imagem com os detalhes do que foi feito.

## Quando usar

- Você quer "uma imagem" e não sabe se precisa de foto ou de ilustração.
- Você precisa editar uma imagem: trocar um objeto, apagar algo do fundo, remover o fundo de um produto.
- Uma das ferramentas falhou (limite diário, créditos) e você quer tentar na outra.

**Exemplos de pedido:**

- "Cria uma imagem para o post de lançamento do novo recurso da Kenlo."
- "Remove o fundo desta foto do produto."
- "Faz uma thumbnail de impacto para um vídeo sobre IA no mercado imobiliário."

## Como funciona

1. O Claude segue uma matriz de decisão: foto realista de pessoa, arte/ilustração, edição, ou upscale/remoção de fundo. Se não der para saber, pergunta.
2. Escolhe a ferramenta e o modo (por exemplo: modelo pronto do Gemini, ou `generate`, `ultra`, `inpaint`, `remove-bg` na Stability).
3. Monta o prompt no formato certo para cada ferramenta (fotos: assunto + ação + ambiente + luz + detalhe humano; arte: estilo, luz, qualidade, cores).
4. Gera a imagem e mostra: ferramenta usada, modo, onde foi salva, tamanho e o prompt.
5. Oferece variações (versão arte, versão foto, ajuste de luz).
6. Se uma ferramenta falhar, tenta a outra; se as duas falharem, entrega um prompt detalhado para você usar manualmente.

## O que você recebe

- A imagem gerada ou editada, salva em arquivo.
- Um resumo com ferramenta, modo, dimensões e prompt usado.
- Sugestões de variações.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Matriz de decisão, modelos de prompt, formato de resposta e plano de contingência |

## Cuidados

- Esta skill não tem scripts próprios: depende das pastas `ai-studio-image` e `stability-ai` estarem instaladas e configuradas.
- Um dos exemplos de prompt cita o nome de um artista real como referência de estilo. Evite imitar artistas vivos em peças da marca.
- A skill cita uma skill `comfyui-gateway` que não existe neste repositório.
- Ferramentas pagas consomem créditos; confira o custo antes de gerar muitas imagens.

## Relacionadas

- [`ai-studio-image`](../ai-studio-image/README.md) — gera as fotos realistas
- [`stability-ai`](../stability-ai/README.md) — gera arte e faz edições
- [`image`](../image/README.md) — orientação geral sobre imagens de marketing, medidas e otimização
