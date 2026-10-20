# market-ads

> Gera campanhas de anúncio completas, para várias plataformas, a partir do link de um site. Faz parte da suíte `market-*`.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/market-ads` (ou `/market ads <url>` pela skill `market`) — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. O Claude precisa conseguir acessar o site informado |

## Para que serve

Você passa a URL de um negócio e a skill lê o site para entender produto, preço, público, diferencial e provas sociais. Com isso, monta campanhas para Google, Meta, LinkedIn, TikTok e X, com textos, públicos, sequências de retargeting, sugestão de orçamento, plano de testes e briefing para o designer. Tudo vai para um arquivo único.

## Quando usar

- Precisa de um ponto de partida completo de mídia paga para um produto ou cliente.
- Quer ver, de uma vez, como seria a campanha em cada plataforma.
- Vai passar a campanha para um gestor de tráfego ou designer executar.

**Exemplos de pedido:**

- "/market ads https://www.kenlo.com.br"
- "Monta as campanhas de anúncio para este site de imobiliária: [link]."
- "Gera um plano de mídia paga com textos e públicos para o lançamento do nosso novo produto."

## Como funciona

1. Lê o site para levantar oferta, preço, público, diferencial, provas e objeções.
2. Relaciona o objetivo de negócio ao objetivo de campanha e às plataformas certas.
3. Gera os anúncios por plataforma respeitando os limites de cada uma (ex.: 15 títulos de 30 caracteres no Google, palavras-chave e negativas).
4. Cria uma sequência de retargeting em três estágios.
5. Sugere orçamento, referências de ROAS por setor, alinhamento com a landing page e um plano de testes.
6. Se existirem arquivos de outras skills da suíte (ex.: `COPY-SUGGESTIONS.md`, `COMPETITOR-REPORT.md`, `FUNNEL-ANALYSIS.md`), reaproveita o que já foi feito.

## O que você recebe

- Arquivo `AD-CAMPAIGNS.md` com estratégia, públicos, campanhas por plataforma, retargeting, orçamento, testes, benchmarks e briefing criativo.
- Resumo no terminal com os principais números e o caminho do arquivo.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue (sem cabeçalho de metadados; o nome vem da pasta) |

## Cuidados

- As referências de ROAS e orçamento são médias de mercado; ajuste à realidade da sua conta.
- Revise promessas e números antes de publicar qualquer anúncio.
- A skill não sobe nada nas plataformas; ela entrega o plano e os textos.

## Relacionadas

- [`market`](../../01-marketing-estrategia/market/README.md) — ponto de entrada da suíte `market-*`
- [`market-landing`](../market-landing/README.md) — analisa a página para onde o anúncio leva
- [`ads`](../ads/README.md) — aprofunda estratégia, lances e otimização
- [`ad-creative`](../ad-creative/README.md) — itera os criativos com dados de desempenho
