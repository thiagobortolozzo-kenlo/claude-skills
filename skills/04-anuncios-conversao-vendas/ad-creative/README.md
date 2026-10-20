# ad-creative

> Gera, itera e escala criativos de anúncio (títulos, descrições, textos e roteiros de vídeo) para qualquer plataforma de mídia paga.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/ad-creative` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude para textos. Para gerar imagens, vídeo e voz: chaves como `GEMINI_API_KEY` e `ELEVENLABS_API_KEY` (sempre em variáveis de ambiente, nunca no repositório), além de ffmpeg, Playwright ou Remotion para montar vídeos |

## Para que serve

Produz muitas variações de anúncio de uma vez, respeitando os limites de caracteres de cada plataforma (Google, Meta, LinkedIn, TikTok, X). Também lê dados de desempenho para entender o que está funcionando e gerar novas versões a partir dos vencedores. Cobre ainda estratégia de formatos criativos, roteiros de vídeo curto e uma página HTML para apresentar criativos para aprovação.

## Quando usar

- Você precisa de 15 títulos e 4 descrições para um anúncio de busca do Google.
- Tem uma planilha de desempenho e quer saber quais textos manter, cortar e o que testar a seguir.
- Quer decidir qual formato de anúncio produzir no Meta (UGC, depoimento do fundador, estático comparativo etc.).
- Precisa apresentar um lote de criativos para o gestor aprovar.

**Exemplos de pedido:**

- "Gera variações de anúncio para o Meta divulgando o CRM da Kenlo para corretores."
- "Aqui está o relatório dos últimos 30 dias. Quais títulos estão ganhando e o que testo agora?"
- "Monta uma página de revisão com os 6 criativos da campanha para o diretor aprovar."

## Como funciona

1. Lê o contexto do produto (`.agents/product-marketing.md`, se existir) e pergunta plataforma, oferta, público e restrições.
2. Escolhe um dos quatro modos: gerar do zero, iterar a partir de dados, gerar lotes de estáticos baseados em pesquisa real, ou ciclo de estratégia criativa.
3. Define ângulos de mensagem (dor, prova social, comparação etc.) e gera variações por ângulo.
4. Valida tudo contra os limites de cada plataforma e remove "marcas de IA" (como travessões e frases do tipo "não é X, é Y").
5. Organiza para subir na plataforma (tabela ou CSV) e documenta a iteração.
6. Quando pedido, consulta as referências de formatos de vídeo, ferramentas generativas e montagem da página de revisão.

## O que você recebe

- Títulos, descrições e textos principais agrupados por ângulo.
- CSV pronto para upload em massa.
- Relatório de iteração com o que manter, cortar e testar.
- Briefings de estáticos e roteiros de vídeo curto.
- Página HTML de revisão de criativos para aprovação.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/platform-specs.md` | Limites de caracteres e tamanhos por plataforma |
| `references/meta-creative-formats.md` | Ranking de ~51 formatos de anúncio no Meta, do melhor ao pior |
| `references/static-ad-templates.md` | Modelos de anúncio estático (comparativo, depoimento, antes/depois...) |
| `references/hook-system.md` | Como escrever ganchos de abertura |
| `references/creative-roadmap.md` | Planejamento e retrospectiva criativa |
| `references/short-form-video-specs.md` | Formatos de vídeo curto, áreas seguras e legenda vertical |
| `references/motion-video-ads.md` | Vídeos animados sem rosto gerados por IA |
| `references/imessage-video-ads.md` | Vídeos que simulam conversa de iMessage, ChatGPT, Notas |
| `references/generative-tools.md` | Ferramentas de IA para imagem, vídeo e voz |
| `references/creative-review-page.md` | Como montar a página de aprovação |
| `assets/creative-review-template.html` | Modelo HTML da página de aprovação |
| `evals/evals.json` | Casos de teste da skill |

## Cuidados

- Gerar imagem, vídeo e voz por API tem custo (a skill estima alguns dólares por vídeo). Confirme antes de rodar em lote.
- Vídeos que simulam conversas ou respostas de IA precisam deixar claro que são dramatizações; não invente depoimentos nem números.
- Revise o texto final com o time de marca antes de publicar.

## Relacionadas

- [`ads`](../ads/README.md) — estratégia de campanha, público e orçamento
- [`ab-testing`](../ab-testing/README.md) — estrutura os testes de criativo
- [`copy-editing`](../../02-copy-conteudo/copy-editing/README.md) — revisa o texto antes de subir
- [`video-ads-structure`](../../09-video-motion/video-ads-structure/README.md) — estrutura de roteiro para vídeo de anúncio
