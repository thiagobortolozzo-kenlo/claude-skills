# slack-gif-creator

> Cria GIFs animados pequenos e leves, prontos para usar como emoji ou mensagem no Slack (e em outros chats) — para quem quer animações divertidas para o time.

| | |
|---|---|
| **Área** | Imagem e foto |
| **Como chamar** | `/slack-gif-creator` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Anthropic, via kursku/skills |
| **Requer** | Python com `pillow`, `imageio`, `imageio-ffmpeg` e `numpy` (roda tudo no seu computador, sem chave de API) |

## Para que serve

O Slack tem limites de tamanho e de medidas para GIFs, principalmente para emojis. A skill traz essas regras, ferramentas prontas para montar os quadros da animação, funções de movimento suave (quicar, pulsar, girar, aparecer) e um verificador que diz se o GIF está pronto para o Slack.

## Quando usar

- Você quer um emoji animado para comemorar uma meta batida no canal do time.
- Você quer animar uma imagem que já tem (ex.: o logo pulsando).
- Você precisa reduzir o tamanho de um GIF que o Slack recusou.

**Exemplos de pedido:**

- "Cria um emoji animado de uma casinha pulando para o Slack."
- "Anima este logo da Kenlo girando, em 128x128."
- "Faz um GIF de 'contrato assinado' com estrelinhas explodindo."

## Como funciona

1. O Claude define o tipo: emoji (128x128, até cerca de 3 segundos) ou GIF de mensagem (480x480).
2. Desenha cada quadro com formas do Pillow (círculos, polígonos, linhas) ou parte de uma imagem enviada por você.
3. Aplica conceitos de animação (tremer, pulsar, quicar, girar, aparecer, deslizar, zoom, explosão de partículas) com funções de suavização.
4. Monta o GIF com o `GIFBuilder`, com número de cores e quadros por segundo adequados.
5. Valida com `validate_gif` / `is_slack_ready`; se pedir arquivo menor, reduz quadros, cores ou tamanho.

## O que você recebe

- Um arquivo `.gif` otimizado para o Slack.
- O código Python usado, caso queira ajustar depois.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Regras do Slack, fluxo de trabalho e conceitos de animação |
| `core/gif_builder.py` | Monta e otimiza o GIF |
| `core/frame_composer.py` | Funções para fundo, círculos, estrelas e texto |
| `core/easing.py` | Funções de movimento suave |
| `core/validators.py` | Verifica se o GIF atende às regras do Slack |
| `requirements.txt` | Bibliotecas Python necessárias |
| `LICENSE.txt` | Licença Apache 2.0 |

## Cuidados

- A skill não traz desenhos prontos nem fontes de emoji; tudo é desenhado por código ou parte de uma imagem sua.
- Se usar logotipos ou fotos de pessoas, confira se o uso interno está autorizado.
- Funciona para Slack e também para Google Chat, mas os limites de tamanho foram pensados para o Slack.

## Relacionadas

- [`animate`](../../07-design-ui/animate/README.md) — princípios de animação e microinterações
- [`canvas-design`](../canvas-design/README.md) — peças visuais estáticas
- [`algorithmic-art`](../algorithmic-art/README.md) — animações generativas por código
