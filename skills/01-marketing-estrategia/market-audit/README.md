# market-audit

> Faz uma auditoria completa de marketing de um site, com nota de 0 a 100 e plano de ação priorizado, pronta para apresentar a cliente ou diretoria.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/market-audit` — ou peça em linguagem natural (ver exemplos); também é acionada por `/market audit <url>` |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Acesso à web (WebFetch) e os 5 agentes `market-*` instalados em `agents/01-marketing-estrategia/` |

## Para que serve

É o comando principal da suíte market. Lê o site, identifica o tipo de negócio e coloca cinco agentes especialistas para analisar ao mesmo tempo: conteúdo, conversão, concorrência, SEO técnico e estratégia. Depois junta tudo em uma nota única, com pontos fortes, lacunas, ganhos rápidos e estimativa de impacto em receita.

## Quando usar

- Você quer um diagnóstico de ponta a ponta do marketing de um site.
- Vai apresentar uma análise para um cliente, parceiro ou para a diretoria.
- Quer comparar o seu site com os de concorrentes em critérios iguais.

**Exemplos de pedido:**

- "/market audit https://www.kenlo.com.br"
- "Audite o marketing do site deste concorrente e me diga onde ele é melhor que a Kenlo."
- "Faça uma auditoria de marketing do site de uma imobiliária cliente para levarmos na reunião."

## Como funciona

1. Descoberta: lê a home e até 5 páginas internas (preços, sobre, produto, blog, contato), detecta o tipo de negócio e monta o mapa de páginas.
2. Análise em paralelo com 5 agentes:
   - `market-content`: mensagem, títulos, proposta de valor, prova social.
   - `market-conversion`: CTAs, formulários, fluxo de cadastro, página de preços.
   - `market-competitive`: diferenciação, páginas de comparação, reputação.
   - `market-technical`: SEO técnico, velocidade, dados estruturados, acessibilidade básica.
   - `market-strategy`: modelo de negócio, preço, crescimento, retenção, confiança na marca.
3. Síntese: calcula a nota ponderada (conteúdo 25%, conversão 20%, SEO 20%, concorrência 15%, marca 10%, crescimento 10%) e dá conceito de A a F.
4. Separa as recomendações em ganhos rápidos (esta semana), estratégicas (este mês) e de longo prazo (este trimestre), com estimativa de receita.
5. Se já existirem `COMPETITOR-REPORT.md` ou `BRAND-VOICE.md` na pasta, usa essas informações.

## O que você recebe

- Arquivo `MARKETING-AUDIT.md` com resumo executivo, nota por categoria, ações priorizadas, análise detalhada, tabela de concorrentes e resumo de impacto em receita.
- Resumo no terminal com as notas, os 3 ganhos rápidos e os 3 movimentos estratégicos.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais: fases, o que cada agente avalia, fórmula da nota e modelo do relatório |

Os agentes usados ficam fora desta pasta:

| Agente | Onde fica |
|---|---|
| `market-content` | [`agents/01-marketing-estrategia/market-content/`](../../../agents/01-marketing-estrategia/market-content/) |
| `market-conversion` | [`agents/01-marketing-estrategia/market-conversion/`](../../../agents/01-marketing-estrategia/market-conversion/) |
| `market-competitive` | [`agents/01-marketing-estrategia/market-competitive/`](../../../agents/01-marketing-estrategia/market-competitive/) |
| `market-technical` | [`agents/01-marketing-estrategia/market-technical/`](../../../agents/01-marketing-estrategia/market-technical/) |
| `market-strategy` | [`agents/01-marketing-estrategia/market-strategy/`](../../../agents/01-marketing-estrategia/market-strategy/) |

## Cuidados

- As estimativas de receita usam fórmula simples (tráfego x ganho de conversão x ticket) e números em dólar; refaça com os dados reais antes de apresentar.
- A análise só enxerga o que é público: páginas com login ficam de fora.
- Se um agente falhar, o relatório sai mesmo assim, com a lacuna indicada; confira antes de enviar.
- Rodar 5 agentes em paralelo consome mais uso do Claude que uma análise simples.

## Relacionadas

- [`market`](../market/README.md) — o orquestrador que chama esta skill.
- [`market-report-pdf`](../market-report-pdf/README.md) — transforma a auditoria em PDF com gráficos.
- [`market-competitors`](../market-competitors/README.md) — aprofunda a parte de concorrência.
- [`market-funnel`](../market-funnel/README.md) — aprofunda a parte de conversão e funil.
