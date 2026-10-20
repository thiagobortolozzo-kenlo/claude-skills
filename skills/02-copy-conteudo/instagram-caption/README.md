# instagram-caption

> Escreve legendas de Instagram com gancho, corpo, chamada para ação e hashtags, para quem cuida das redes da marca.

| | |
|---|---|
| **Área** | Copy e conteúdo |
| **Como chamar** | `/instagram-caption` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026); autoria original Cafe Code AI |
| **Requer** | Nada além do Claude |

## Para que serve

Transforma a descrição de um post (foto, vídeo ou carrossel) em legendas prontas, pensadas para um objetivo: vender, gerar comentários ou levar para o link da bio. O Claude entrega 3 opções completas para você escolher.

## Quando usar

- Lançamento de produto, serviço ou recurso novo.
- Posts educativos ou inspiracionais que precisam gerar comentários, salvamentos e compartilhamentos.
- Quando você tem a imagem pronta, mas não sabe o que escrever.

**Exemplos de pedido:**

- "Escreve 3 legendas para esse Reels de tutorial, tom divertido, CTA para comentar."
- "Preciso de legenda para o lançamento do novo recurso, com oferta por tempo limitado."
- "Legenda para um carrossel com 3 dicas para corretores responderem leads mais rápido, CTA para o link da bio."

## Como funciona

1. Você descreve o visual do post, o objetivo, o tom de voz (informativo, divertido, inspirador, formal, casual...) e a chamada para ação desejada.
2. Para lançamentos, o Claude coleta produto, benefícios, público, oferta, disponibilidade e objetivo, e escreve seguindo a estrutura AIDA (Atenção, Interesse, Desejo, Ação).
3. Para posts de engajamento, cria um gancho que gera curiosidade, um corpo curto e útil (listas, parágrafos curtos) e uma CTA de interação.
4. Sugere de 5 a 10 hashtags misturando marca, nicho, temas amplos e campanha.
5. Revisa clareza, ortografia e consistência do tom.

## O que você recebe

- 3 opções de legenda completas: gancho, corpo, CTA e hashtags.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue, com dois fluxos (lançamento e engajamento) |

## Cuidados

- O arquivo `SKILL.md` está incompleto: termina no meio do segundo fluxo. Funciona, mas não tem templates nem checklist final.
- Os exemplos citam prova social genérica ("mais de 500 clientes"). Use só números reais da Kenlo.
- Revise o resultado antes de publicar, principalmente promessas de desconto e prazos.

## Relacionadas

- [`carousel-creator`](../carousel-creator/README.md) — roteiro do carrossel que a legenda acompanha
- [`avoid-ai-writing`](../avoid-ai-writing/README.md) — limpar a legenda de vícios de IA
- [`reels-content-plan`](../../05-redes-sociais/reels-content-plan/README.md) — planejar os Reels que vão receber a legenda
- [`social`](../../05-redes-sociais/social/README.md) — estratégia geral de redes sociais
