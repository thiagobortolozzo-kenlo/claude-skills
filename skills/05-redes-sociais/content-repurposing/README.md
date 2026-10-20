# content-repurposing

> Transforma um conteúdo grande (webinar, podcast, artigo) em vários conteúdos menores para redes sociais. Para quem produz conteúdo e quer render mais com o mesmo material.

| | |
|---|---|
| **Área** | Redes sociais |
| **Como chamar** | `/content-repurposing` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

Ajuda a pegar um "conteúdo pilar" (algo longo e rico, como uma live de 45 minutos ou um artigo de 2.000 palavras) e quebrar em pedaços que funcionam sozinhos: Reels, Shorts, TikToks, carrosséis, threads, stories, infográficos e newsletter. O resultado é um plano de peças, com roteiro e texto, a partir de um único material.

## Quando usar

- Você gravou um webinar, live ou podcast e quer tirar cortes curtos dele.
- Um artigo do blog foi bem e você quer levar as ideias dele para o Instagram e o LinkedIn.
- Falta tempo para criar conteúdo do zero toda semana.

**Exemplos de pedido:**

- "Transforma esse artigo do blog em um carrossel de LinkedIn e três ideias de Reels."
- "Tenho a transcrição da nossa live, me ajuda a achar os melhores trechos para cortes."
- "Pega o webinar da Kenlo sobre gestão de imobiliária e monta um plano de conteúdo para duas semanas."

## Como funciona

1. Escolhe com você o conteúdo pilar a ser reaproveitado.
2. Identifica de 3 a 7 "micromomentos": trechos de 30 a 90 segundos (vídeo/áudio) ou parágrafos com uma dica, um dado ou uma frase forte.
3. Adapta cada micromomento ao formato de cada rede: vídeo vertical 9:16 com gancho nos 3 primeiros segundos e legenda, carrossel de 5 a 10 slides, thread, story com enquete, imagem com citação, resumo para newsletter.
4. Sugere horários de publicação e uso de links com UTM para medir o tráfego de volta ao conteúdo original.

## O que você recebe

- Lista de trechos escolhidos, com o motivo de cada um.
- Roteiros de vídeo curto (gancho, problema, dica, chamada para ação).
- Estrutura slide a slide de carrosséis.
- Rascunhos de thread, stories, posts e newsletter.
- Checklist de produção e publicação.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue, com dois fluxos (live/podcast e artigo de blog), modelos e checklist |

## Cuidados

- O `SKILL.md` termina cortado no meio do checklist (última linha incompleta). O conteúdo principal está lá, mas o checklist final está incompleto.
- Os horários de pico e números citados são médias genéricas; confira nos insights das contas da Kenlo.
- A skill não edita vídeo: ela planeja e escreve. O corte em si é feito em ferramentas como CapCut ou Descript (ou com a skill `video-social-pack`).
- Revise o resultado antes de publicar.

## Relacionadas

- [`social`](../social/README.md) — estratégia social completa, com o mesmo sistema de "átomos de conteúdo".
- [`short-form-video-plan`](../short-form-video-plan/README.md) — para aprofundar os roteiros de vídeo curto.
- [`video-social-pack`](../../09-video-motion/video-social-pack/README.md) — faz os cortes verticais de fato a partir do vídeo bruto.
- [`carousel-creator`](../../02-copy-conteudo/carousel-creator/README.md) — para transformar os trechos em carrosséis prontos.
