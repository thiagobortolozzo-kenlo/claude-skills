# youtube-strategy

> Estratégia de crescimento para um canal no YouTube: SEO de vídeo, retenção, engajamento e roteiro. Para quem cuida do canal da marca.

| | |
|---|---|
| **Área** | Redes sociais |
| **Como chamar** | `/youtube-strategy` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

Ajuda a fazer os vídeos serem encontrados (título, descrição, tags, miniatura) e assistidos até o fim (retenção, séries, playlists, chamadas para ação). O resultado é um plano para o canal, roteiros e descrições otimizadas.

## Quando usar

- O canal publica, mas os vídeos não aparecem nas buscas.
- A retenção cai logo no começo dos vídeos.
- Você quer organizar o conteúdo em séries e playlists.

**Exemplos de pedido:**

- "Monta uma estratégia para o canal da Kenlo no YouTube."
- "Otimiza o título, a descrição e as tags deste vídeo sobre o CRM."
- "Escreve o roteiro de um tutorial de 8 minutos sobre como cadastrar imóveis."

## Como funciona

1. Pesquisa palavras-chave de cauda longa (frases de 3 ou mais palavras) e analisa os vídeos que já aparecem no topo da busca.
2. Otimiza o vídeo: palavra-chave no começo do título, descrição de pelo menos 200 palavras com capítulos (timestamps), 5 a 8 tags, miniatura 1280x720 com pouco texto, tela final e cards.
3. Analisa a retenção no YouTube Studio para achar onde o público sai.
4. Organiza séries e playlists e sugere rotina de engajamento (comentários, aba Comunidade, lives).
5. Distribui chamadas para ação no início, no meio e no fim do vídeo.

## O que você recebe

- Plano de canal com temas e séries.
- Roteiro de tutorial com tempos.
- Descrição otimizada para busca.
- Sugestões de título, tags e miniatura.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue: fluxo de SEO de vídeo, fluxo de retenção e modelos de roteiro e descrição |

## Cuidados

- O `SKILL.md` termina cortado no meio do modelo de descrição; a parte de checklist e métricas que as outras skills dessa coleção têm não aparece.
- A skill cita ferramentas como VidIQ, TubeBuddy e Ahrefs, mas não se conecta a elas.
- Os exemplos citam anos antigos (2024); atualize ao usar.
- Revise o resultado antes de publicar.

## Relacionadas

- [`short-form-video-plan`](../short-form-video-plan/README.md) — para os Shorts do canal.
- [`video-script`](../../09-video-motion/video-script/README.md) — roteiros de vídeo mais detalhados.
- [`youtube-summarizer`](../../09-video-motion/youtube-summarizer/README.md) — resume vídeos do YouTube (útil para estudar concorrentes).
- [`seo-audit`](../../03-seo-busca/seo-audit/README.md) — SEO do site para onde o canal leva.
