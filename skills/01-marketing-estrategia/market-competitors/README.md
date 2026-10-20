# market-competitors

> Identifica os concorrentes de um site, compara posicionamento, preço, mensagem e canais, e aponta lacunas e oportunidades de diferenciação.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/market-competitors` — ou peça em linguagem natural (ver exemplos); também é acionada por `/market competitors <url>` |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Acesso à web (busca e WebFetch). Opcional: o script `competitor_scanner.py`, que fica em [`../market/scripts/`](../market/scripts/) e precisa de Python 3 |

## Para que serve

Parte do seu site, descobre quem são os concorrentes (diretos, indiretos e "aspiracionais") e analisa cada um: mensagem, preço, funcionalidades, conteúdo e SEO, redes sociais e avaliações de clientes. Depois monta uma análise SWOT, lista táticas que vale copiar, sugere ângulos de diferenciação e propõe páginas "alternativa a X" e narrativas para quem quer trocar de fornecedor.

## Quando usar

- Você não tem clareza de quem são os concorrentes e como cada um se posiciona.
- Quer um relatório comparativo para planejamento estratégico ou para apresentar à diretoria.
- Quer achar temas de conteúdo que os concorrentes cobrem e você não.
- Precisa de um plano para monitorar e reagir a movimentos dos concorrentes.

**Exemplos de pedido:**

- "/market competitors https://www.kenlo.com.br"
- "Compare a Kenlo com os principais CRMs imobiliários em preço, funcionalidades e avaliações."
- "Quais táticas de marketing dos concorrentes a Kenlo deveria adotar?"

## Como funciona

1. Identifica concorrentes por palavras-chave, pelo próprio site, por sites de avaliação e por comunidades (3 a 5 diretos, 2 a 3 indiretos, 1 a 2 aspiracionais).
2. Coleta dados de cada um, com o script quando disponível ou lendo as páginas diretamente.
3. Analisa mensagem e monta mapa de posicionamento (simples x poderoso, barato x premium).
4. Monta matrizes de preço, funcionalidades, conteúdo e SEO, redes sociais e avaliações.
5. Faz SWOT de cada concorrente e uma SWOT consolidada para a sua marca.
6. Recomenda táticas a adotar, ângulos de diferenciação, páginas de alternativa, narrativas de troca e um plano de monitoramento com respostas para cada tipo de movimento.

## O que você recebe

- Arquivo `COMPETITOR-REPORT.md` com resumo executivo, perfis, tabelas comparativas, mapa de posicionamento, lacunas de conteúdo, SWOT, recomendações e plano de monitoramento.
- Resumo no terminal com maior vantagem, maior ameaça, maior oportunidade e 3 ações.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais: as 5 fases da análise e o modelo do relatório |

## Cuidados

- Números de seguidores, engajamento e tráfego estimados pela leitura das páginas podem estar imprecisos; confirme os que forem usados em decisões.
- O `SKILL.md` mostra o script com opções `--url` e `--output`, mas o script real recebe as URLs direto (`python3 competitor_scanner.py site1 site2`).
- Antes de publicar comparações, confirme cada fato e revise com o jurídico.
- Se já existirem `MARKETING-AUDIT.md`, `COPY-SUGGESTIONS.md` ou `FUNNEL-ANALYSIS.md` na pasta, a skill aproveita esses dados.

## Relacionadas

- [`competitor-profiling`](../competitor-profiling/README.md) — dossiês mais rigorosos por concorrente, com dados de SEO.
- [`competitors`](../competitors/README.md) — escreve as páginas de comparação sugeridas.
- [`market-audit`](../market-audit/README.md) — a auditoria completa que inclui a parte competitiva.
- [`market-ads`](../../04-anuncios-conversao-vendas/market-ads/README.md) — usa a análise para criar anúncios competitivos.
