# remotion

> Manual de boas práticas do Remotion (ferramenta que cria vídeos escrevendo código em React) — para quem vai produzir vídeos animados, com legenda e dados, de forma programada.

| | |
|---|---|
| **Área** | Vídeo e motion |
| **Como chamar** | `/remotion-best-practices` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Remotion, via kursku/skills |
| **Requer** | Node.js e um projeto Remotion; ffmpeg para algumas operações. Opcionais: chave `ELEVENLABS_API_KEY` (narração por IA) e `REMOTION_MAPBOX_TOKEN` (mapas animados), sempre em variáveis de ambiente ou `.env` fora do Git |

## Para que serve

O Remotion permite montar vídeos como se fossem páginas web: cada quadro é desenhado por código. Isso é ótimo para vídeos repetitivos ou com dados (ex.: o mesmo vídeo para 50 imobiliárias, cada uma com seus números). Esta skill dá ao Claude o conhecimento técnico certo para escrever esse código sem erros: animações, legendas, áudio, transições, gráficos, fontes e muito mais.

## Quando usar

- O time de marketing quer um modelo de vídeo que se repete com dados diferentes (relatório mensal, ranking, novidades do produto).
- Você precisa de legendas animadas, gráficos que crescem na tela ou textos com efeito de digitação.
- Você quer adicionar narração por IA ou um mapa animado a um vídeo.

**Exemplos de pedido:**

- "Cria uma composição Remotion de 30 segundos com o gráfico de leads do mês crescendo."
- "Adiciona legendas animadas a partir deste arquivo SRT no meu projeto Remotion."
- "Faz um vídeo com mapa animado mostrando as cidades onde a Kenlo tem clientes."

## Como funciona

1. A skill é ativada sempre que o assunto é código Remotion.
2. O `SKILL.md` funciona como um índice: o Claude abre só a regra do tema que precisa (legendas, áudio, transições etc.).
3. Cada regra traz explicação e exemplos de código prontos para adaptar.
4. Para operações como cortar vídeo ou detectar silêncio, a skill orienta o uso de ffmpeg.
5. Para narração, gera áudio por cena com ElevenLabs e ajusta a duração do vídeo ao áudio.

## O que você recebe

- Código React/Remotion correto para o seu projeto (composições, cenas, animações).
- Orientação para renderizar o vídeo final (inclusive com fundo transparente).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Índice de quando ler cada regra |
| `rules/` | 37 regras por tema: animações, tempo e easing, sequências, transições, legendas (exibir, importar SRT, transcrever), áudio, voz por IA, efeitos sonoros, visualização de áudio, vídeos, imagens, GIFs, Lottie, 3D, gráficos, mapas, fontes, Tailwind, medição de texto, vídeo transparente, entre outras |
| `rules/assets/` | 3 exemplos de código: gráfico de barras, texto com efeito de digitação e destaque de palavra |
| `.skillshare-meta.json` | Registro de onde a skill foi instalada e as versões dos arquivos |

## Cuidados

- O Remotion exige licença da empresa para uso comercial em certas situações; confira as regras de licença antes de usar em produção.
- Narração com ElevenLabs e mapas com Mapbox têm custo ou limite de uso nas contas dessas ferramentas.
- O `SKILL.md` aponta para `rules/sound-effects.md`, mas o arquivo real se chama `rules/sfx.md`.
- É uma skill técnica: ajuda quem já tem (ou vai criar) um projeto em código. Para planejar o vídeo, use antes `video-script`.

## Relacionadas

- [`video`](../video/README.md) — escolhe a melhor abordagem de produção (código, IA, avatar)
- [`video-script`](../video-script/README.md) — roteiro antes de programar o vídeo
- [`video-social-pack`](../video-social-pack/README.md) — cortes verticais com legenda no padrão Kenlo
