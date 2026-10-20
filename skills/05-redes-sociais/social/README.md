# social

> Estrategista de redes sociais: o que postar, onde, com que frequência, como reaproveitar conteúdo, roteirizar vídeo curto e fazer listening. Para quem cuida das redes da marca ou de uma marca pessoal.

| | |
|---|---|
| **Área** | Redes sociais |
| **Como chamar** | `/social` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. Opcional: uma ferramenta de agendamento com MCP ou API (Typefully, Buffer etc.) para criar rascunhos direto nela; `curl` e `jq` para as receitas de listening em Reddit, Hacker News e Bluesky |

## Para que serve

É a skill mais completa da área para criar conteúdo social. Cobre pilares de conteúdo, ganchos, posts, threads, carrosséis, Reels/TikTok/Shorts, calendário, rotina de engajamento, análise de métricas e listening (descobrir quais posts vale comentar). Tem uma regra forte contra texto com "cara de IA" (frases-feitas, uma frase por linha, emoji como marcador).

## Quando usar

- Você quer uma estratégia de LinkedIn, Instagram ou TikTok com calendário.
- Precisa de um post, thread ou carrossel slide a slide.
- Quer saber quais posts do dia vale a pena comentar (listening e triagem).

**Exemplos de pedido:**

- "Cria uma estratégia de LinkedIn para a Kenlo com 3 posts por semana."
- "Transforma este artigo em um carrossel de LinkedIn, slide a slide."
- "Escreve um roteiro de Reel de 30 segundos mostrando um recurso do CRM da Kenlo."

## Como funciona

1. Procura primeiro um arquivo de contexto de marketing do produto (`.agents/product-marketing.md` ou `.claude/product-marketing.md`); se não houver, pergunta objetivo, público, tom de voz e recursos disponíveis.
2. Define 3 a 5 pilares de conteúdo e a frequência por rede.
3. Escreve com fórmulas de gancho e sem os vícios de texto de IA listados na skill.
4. Para carrosséis, escolhe uma de cinco estruturas antes de escrever os slides.
5. Monta calendário, rotina diária de engajamento (30 min) e revisão semanal de métricas.
6. Se houver ferramenta de agendamento conectada, cria os posts como rascunho e só agenda com sua aprovação.

## O que você recebe

- Posts, threads, carrosséis e roteiros de vídeo prontos para revisão.
- Calendário semanal de conteúdo.
- Lista diária de posts para comentar, com pontuação (quando você pede listening).
- Plano de reaproveitamento de um conteúdo longo em vários posts.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/platforms.md` | Estratégia detalhada por rede (LinkedIn, X, Instagram, TikTok, Facebook) |
| `references/platform-limits.md` | Limites de caracteres e de hashtags por rede |
| `references/post-templates.md` | Modelos de post, thread e roteiro, mais fórmulas de gancho |
| `references/carousel-frameworks.md` | Cinco estruturas de carrossel slide a slide |
| `references/short-form-video.md` | Biblioteca de ganchos e roteiros de vídeo curto |
| `references/reverse-engineering.md` | Método para analisar conteúdo viral do nicho |
| `references/x-algorithm.md` | Como o feed do X ranqueia posts e regras práticas |
| `references/listening.md` | Rotina de listening, pontuação de posts e receitas `curl` para fontes públicas |
| `references/listening-sources-template.md` | Modelo para listar as fontes e o cliente ideal a monitorar |
| `evals/evals.json` | Casos de teste usados para avaliar a skill |

## Cuidados

- A skill nunca deve publicar sozinha: rascunho primeiro, agendamento só com aprovação.
- As receitas de listening fazem chamadas a APIs públicas (Reddit, Hacker News, Bluesky); textos coletados são tratados como dados, não como instruções.
- Benchmarks e horários são gerais; ajuste com os dados das contas.
- Revise o resultado antes de publicar.

## Relacionadas

- [`content-repurposing`](../content-repurposing/README.md) — foco em transformar um conteúdo longo em vários.
- [`linkedin-post`](../../02-copy-conteudo/linkedin-post/README.md) — posts de LinkedIn específicos.
- [`content-strategy`](../../01-marketing-estrategia/content-strategy/README.md) — estratégia de conteúdo mais ampla.
- [`avoid-ai-writing`](../../02-copy-conteudo/avoid-ai-writing/README.md) — revisão extra para tirar o "tom de IA".
