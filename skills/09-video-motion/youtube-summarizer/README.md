# youtube-summarizer

> Pega a transcrição de um vídeo do YouTube e gera um resumo detalhado e organizado em Markdown — para quem quer o conteúdo de uma aula ou palestra sem assistir tudo de novo.

| | |
|---|---|
| **Área** | Vídeo e motion |
| **Como chamar** | `/youtube-summarizer` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês (o resumo sai em português quando a transcrição existe em português) |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Python 3 e a biblioteca `youtube-transcript-api` (a skill oferece instalar via pip, com sua confirmação). Nenhuma chave de API |

## Para que serve

A skill confere se o link do YouTube é válido, verifica se o vídeo tem legenda (manual ou automática), baixa a transcrição (de preferência em português, senão em inglês) e escreve um resumo completo: síntese executiva, tópicos em detalhe, principais ideias, conceitos e termos, recursos citados e conclusão. A prioridade é ser completo, não curto.

## Quando usar

- Você quer documentar uma palestra ou aula do YouTube para consultar depois.
- Você quer extrair os argumentos e números de um vídeo de concorrente ou de mercado.
- Você precisa da transcrição de um vídeo para analisar ou reaproveitar.

**Exemplos de pedido:**

- "Resume este vídeo do YouTube: https://youtu.be/..."
- "Extrai os principais pontos desta palestra sobre mercado imobiliário no YouTube."
- "Pega a transcrição deste vídeo e salva junto com o resumo."

## Como funciona

1. Verifica se o Python e a biblioteca estão instalados; se faltar, pergunta se pode instalar.
2. Valida o link e extrai o código do vídeo (aceita youtube.com, youtu.be e versão mobile).
3. Confere se o vídeo existe e se tem transcrição disponível.
4. Baixa a transcrição, preferindo português e usando inglês como alternativa.
5. Gera o resumo com uma estrutura fixa (método "STAR + R-I-S-E"), mostrando uma barra de progresso em 5 etapas.
6. Pergunta o que salvar: só o resumo, resumo com transcrição, ou só a transcrição.

## O que você recebe

- Um resumo em Markdown com dados do vídeo (título, canal, duração, link), síntese, tópicos detalhados, conceitos e conclusão.
- Opcionalmente, um arquivo com o resumo e a transcrição completa.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `scripts/extract-transcript.py` | Baixa a transcrição de um vídeo ou lista os idiomas disponíveis |
| `scripts/install-dependencies.sh` | Instala a biblioteca `youtube-transcript-api` via pip (macOS/Linux) |
| `CHANGELOG.md` | Histórico de versões da skill |
| `README.md` | Este arquivo |

## Cuidados

- Só funciona com vídeos públicos que tenham legenda (manual ou automática). Vídeos privados ou sem legenda não dão certo.
- Legendas automáticas têm erros; confira nomes, números e citações antes de usar o resumo.
- Os exemplos do `SKILL.md` usam comandos de Linux/macOS (bash e a pasta `/tmp`); no Windows o Claude precisa adaptar.
- O resumo é para uso interno de estudo; não republique o conteúdo de terceiros como se fosse da Kenlo.

## Relacionadas

- [`video-social-pack`](../video-social-pack/README.md) — para vídeos próprios em arquivo: transcrição, cortes e textos para redes
- [`content-repurposing`](../../05-redes-sociais/content-repurposing/README.md) — transformar o aprendizado em posts e artigos
- [`competitor-profiling`](../../01-marketing-estrategia/competitor-profiling/README.md) — usar resumos de vídeos de concorrentes na análise
