# video-script

> Escreve roteiros de vídeo persuasivos para anúncios, vendas e conteúdo educativo — para quem precisa transformar uma ideia em falas, cenas e chamada para ação.

| | |
|---|---|
| **Área** | Vídeo e motion |
| **Como chamar** | `/video-script` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

A skill ajuda a escrever o roteiro completo: o que aparece na tela, o que é dito e em que segundo. Usa estruturas de copywriting conhecidas, como AIDA (Atenção, Interesse, Desejo, Ação) e PAS (Problema, Agitação, Solução), adaptadas para vídeo. Serve tanto para anúncios curtos quanto para vídeos educativos mais longos no YouTube.

## Quando usar

- Você vai gravar um vídeo e quer o roteiro pronto com tempo de cada cena.
- Você precisa de um vídeo de vendas mais longo (3 a 5 minutos) para um lançamento.
- Você quer um vídeo educativo para o YouTube que segure a audiência até o fim.

**Exemplos de pedido:**

- "Escreve um roteiro de 30 segundos para TikTok sobre como a Kenlo ajuda o corretor a responder leads mais rápido."
- "Cria um roteiro de vídeo educativo de 8 minutos sobre como precificar um imóvel para locação."
- "Quero um roteiro de vídeo de vendas para o lançamento de um novo módulo do sistema."

## Como funciona

1. O Claude pergunta o objetivo comercial (venda, lead, marca) e a persona: idade, profissão, dores e onde ela assiste vídeos.
2. Desenha a estrutura: gancho forte, problema, solução, prova e chamada para ação.
3. Preenche o roteiro com um modelo de copywriting (AIDA ou PAS).
4. No vídeo de performance, distribui por tempo: gancho (0-3s), problema, solução, prova social e CTA.
5. No vídeo educativo, organiza abertura, conteúdo em blocos, retenção e chamada final.
6. Revisa o tempo das cenas e a clareza da chamada para ação.

## O que você recebe

- Roteiro com colunas de cena, visual, fala e texto na tela.
- Variações de gancho.
- Checklist de revisão, métricas de referência e erros comuns a evitar.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções, dois fluxos (anúncio de performance e vídeo educativo), dois modelos de roteiro, checklist e métricas |

## Cuidados

- Alguns exemplos da skill usam promessas exageradas de resultado (ex.: multiplicar dinheiro em 30 dias). Não use esse tipo de promessa em peças da Kenlo: só afirme o que é comprovável.
- Revise nomes de produtos, números e depoimentos antes de gravar.
- Revise o roteiro antes de publicar.

## Relacionadas

- [`video-ads-structure`](../video-ads-structure/README.md) — esqueleto de anúncio em vídeo por etapa do funil
- [`copywriting`](../../02-copy-conteudo/copywriting/README.md) — princípios de texto persuasivo
- [`short-form-video-plan`](../../05-redes-sociais/short-form-video-plan/README.md) — planejamento de vídeos curtos
- [`youtube-strategy`](../../05-redes-sociais/youtube-strategy/README.md) — estratégia de canal no YouTube
