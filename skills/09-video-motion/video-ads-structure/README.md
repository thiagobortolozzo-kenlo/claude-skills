# video-ads-structure

> Monta a estrutura de anúncios em vídeo (gancho, problema, solução, prova e chamada para ação) para Meta, Google e TikTok — para quem cria ou revisa criativos de mídia paga.

| | |
|---|---|
| **Área** | Vídeo e motion |
| **Como chamar** | `/video-ads-structure` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

Um anúncio em vídeo tem poucos segundos para segurar a pessoa. A skill organiza o vídeo em blocos de tempo: os primeiros 3 segundos para interromper a rolagem, depois o problema, a solução em ação, a prova social e uma chamada para ação clara. Tem dois roteiros-base: um para o topo do funil (reconhecimento, vídeo vertical curto) e outro para o fundo do funil (conversão, com oferta e urgência).

## Quando usar

- Você vai produzir um vídeo para campanha de Meta Ads, YouTube ou TikTok e precisa do esqueleto cena a cena.
- Um anúncio está com baixa retenção nos primeiros segundos e você quer reestruturar.
- Você quer um briefing claro para o editor ou para a agência.

**Exemplos de pedido:**

- "Monta a estrutura de um vídeo de 30 segundos para Reels anunciando o CRM da Kenlo para imobiliárias."
- "Cria um roteiro de anúncio de conversão para pedir demonstração do sistema."
- "Revisa a estrutura deste anúncio: o gancho está fraco?"

## Como funciona

1. O Claude define objetivo, plataforma, formato (9:16 ou 16:9) e duração.
2. Constrói o gancho de interrupção (0 a 3 ou 5 segundos), com visual dinâmico e texto na tela.
3. Apresenta o problema e a dor, pensando em quem assiste sem som (legendas).
4. Mostra a solução em ação e os benefícios concretos.
5. No fundo do funil, adiciona prova social, oferta e urgência.
6. Fecha com uma chamada para ação explícita e indica as métricas de acompanhamento (custo por visualização, retenção em 3 segundos, taxa de conclusão, ROAS, CPA).

## O que você recebe

- Estrutura do anúncio cena a cena, com visual, áudio e texto na tela.
- Briefing de vídeo para produção.
- Checklist, métricas de referência e lista de erros comuns.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções, dois fluxos (topo e fundo de funil), modelos de roteiro, checklist e métricas |

## Cuidados

- As metas de métricas da skill (ex.: custo por visualização, ROAS acima de 3) são referências genéricas; compare sempre com o histórico das campanhas da Kenlo.
- Depoimentos, números e logos de clientes só podem entrar se forem reais e autorizados.
- Urgência e escassez precisam ser verdadeiras (prazo e condição reais), para não ferir o Código de Defesa do Consumidor nem as regras das plataformas.

## Relacionadas

- [`video-script`](../video-script/README.md) — transforma a estrutura em roteiro completo com falas
- [`ad-creative`](../../04-anuncios-conversao-vendas/ad-creative/README.md) — variações de texto e gancho para os anúncios
- [`ads`](../../04-anuncios-conversao-vendas/ads/README.md) — estratégia de campanha, público e orçamento
- [`market-ads`](../../04-anuncios-conversao-vendas/market-ads/README.md) — avaliação dos anúncios atuais
