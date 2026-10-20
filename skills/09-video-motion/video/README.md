# video

> Ajuda a planejar e produzir vídeos de marketing com IA ou com código (demonstração de produto, explicativo, clipes para redes, anúncios) — para quem precisa escolher a ferramenta e o fluxo certos.

| | |
|---|---|
| **Área** | Vídeo e motion |
| **Como chamar** | `/video` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude para orientar. Para produzir: conforme a ferramenta escolhida — Node.js (Hyperframes/Remotion), ffmpeg, Playwright (gravação de demo), ou conta/chave de ferramentas como HeyGen, Veo, Runway e ElevenLabs, sempre em variáveis de ambiente |

## Para que serve

Existem muitas formas de fazer vídeo hoje: por código, gerando cenas com IA, usando avatares que falam o seu roteiro ou cortando vídeos longos. A skill atua como um produtor de vídeo: entende o objetivo, o canal e o orçamento, recomenda a abordagem, compara as ferramentas e descreve o passo a passo de produção.

## Quando usar

- Você precisa de um vídeo de demonstração de uma funcionalidade nova do produto.
- Você quer um vídeo explicativo com apresentador, mas sem gravar ninguém (avatar de IA).
- Você quer copiar o "estilo de edição" de um vídeo que viralizou (ritmo de cortes, legendas, zooms) aplicando ao seu material.
- Você quer gravar uma demo automatizada do sistema rodando localmente.

**Exemplos de pedido:**

- "Quero um vídeo de 60 segundos mostrando o novo recurso de agenda de visitas da Kenlo."
- "Qual ferramenta uso para gerar cenas de apartamentos para um vídeo institucional?"
- "Analisa a edição deste reels e monta um roteiro de cortes no mesmo estilo para o nosso vídeo."

## Como funciona

1. O Claude lê o contexto de produto (`.agents/product-marketing.md`), se existir.
2. Pergunta tipo de vídeo, plataforma, duração, se precisa de apresentador, quais materiais você já tem e o orçamento.
3. Escolhe a abordagem: vídeo por código (Hyperframes ou Remotion), geração por IA (Veo, Runway, Kling e outros), avatar (HeyGen, Synthesia) ou edição/reaproveitamento (Descript, Opus Clip, CapCut).
4. Escreve prompts de vídeo no formato assunto + ação + câmera + estilo + clima.
5. Para copiar um estilo de edição, monta uma "folha de batidas" (beat sheet) cena a cena, sem copiar imagens, roteiro ou música do original.
6. Para demo de produto, descreve como gravar o sistema com Playwright, com cursor visível, legendas e narração opcional.

## O que você recebe

- Recomendação de abordagem e ferramentas, com prós, contras e custos.
- Fluxo de produção passo a passo para o tipo de vídeo.
- Prompts de vídeo prontos e, quando for o caso, código ou roteiro de cortes.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/ai-video-prompting.md` | Guia de prompts para modelos de vídeo, movimentos de câmera, estilos e custos |
| `references/edit-anatomy.md` | Método para decompor a edição de um vídeo de referência em uma folha de batidas |
| `references/product-demo-recording.md` | Como gravar uma demo do sistema com Playwright, legendas e narração |
| `evals/evals.json` | Casos de teste para avaliar se a skill responde bem |

## Cuidados

- Ferramentas de IA de vídeo e avatares cobram por minuto ou por crédito; confira o preço antes.
- IA não escreve texto legível dentro do vídeo nem mostra telas reais do produto: use gravação de tela e sobreposições por código.
- Avatar com o rosto ou a voz de alguém exige autorização dessa pessoa por escrito.
- Ao gravar demo, use ambiente local ou de teste, nunca dados reais de clientes. A própria skill alerta para não deixar variáveis apontando para o banco de produção.
- Chaves de API em variáveis de ambiente; nunca cole chave no chat nem no repositório.

## Relacionadas

- [`remotion`](../remotion/README.md) — boas práticas para vídeo feito em código
- [`video-script`](../video-script/README.md) — roteiro persuasivo
- [`video-social-pack`](../video-social-pack/README.md) — cortes verticais e textos para redes
- [`ad-creative`](../../04-anuncios-conversao-vendas/ad-creative/README.md) — criativos para anúncios pagos
