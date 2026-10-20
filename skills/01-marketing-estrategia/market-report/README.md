# market-report

> Junta as análises da suíte market em um relatório de marketing em Markdown, com nota por área, achados, plano de ação e roteiro de 30-60-90 dias.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/market-report` — ou peça em linguagem natural (ver exemplos); também é acionada por `/market report <url>` |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. Fica melhor se você já tiver rodado outras análises da suíte (auditoria, SEO, funil, marca) na mesma pasta |

## Para que serve

Consolida tudo o que já foi analisado sobre um site em um único documento para cliente ou diretoria. Dá nota de 0 a 100 em seis áreas (site e conversão, SEO, conteúdo, redes sociais, e-mail e automação, anúncios), explica o que funciona e o que falta em cada uma, estima o impacto em receita e transforma tudo em um plano de ação e um roteiro de 90 dias.

## Quando usar

- Você rodou uma ou mais análises da suíte market e quer um relatório único.
- Precisa de um diagnóstico de marketing apresentável para um cliente ou para a liderança.
- Quer um plano de ação tão específico que um analista júnior consiga executar.

**Exemplos de pedido:**

- "/market report kenlo.com.br"
- "Compile as análises que fizemos do site da Kenlo em um relatório para a diretoria."
- "Gere um relatório de marketing para levarmos na reunião com uma imobiliária cliente."

## Como funciona

1. Procura na pasta os arquivos de análises anteriores (`MARKETING-AUDIT.md`, `LANDING-CRO.md`, `SEO-AUDIT.md`, `BRAND-VOICE.md`, `FUNNEL-ANALYSIS.md` e outros).
2. Se não houver nada, avisa e oferece três caminhos: rodar uma auditoria rápida antes, gerar com o que houver disponível ou entregar um modelo para preencher.
3. Calcula a nota de cada área com critérios de pontuação definidos e a nota geral ponderada.
4. Escreve um aprofundamento por área: achados, o que funciona, lacunas, recomendações e impacto estimado.
5. Inclui comparação com concorrentes (se houver dados), resumo de conteúdo, conversão e SEO.
6. Monta o plano de ação em ganhos rápidos, médio prazo e estratégico, o roteiro de 30-60-90 dias e um apêndice com metodologia e glossário.

## O que você recebe

- Arquivo `MARKETING-REPORT.md` com resumo executivo, tabela de notas, 3 ações prioritárias, achados detalhados, comparação com concorrentes, retrato de SEO, resumo de conversão, impacto em receita, plano de ação em checklist, roteiro de 90 dias e apêndice.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais: critérios de nota por área, estrutura do relatório e princípios |

## Cuidados

- As estimativas de receita usam um "fator de confiança" e números de exemplo em dólar; deixe claro no relatório o que é medido e o que é estimado.
- Notas de redes sociais, e-mail e anúncios dependem de dados que o site público não mostra; sem eles, a nota é uma estimativa.
- Revise o tom e os números antes de entregar a um cliente.

## Relacionadas

- [`market-report-pdf`](../market-report-pdf/README.md) — mesmo relatório, em PDF com gráficos.
- [`market-audit`](../market-audit/README.md) — a auditoria que fornece a maior parte dos dados.
- [`market-proposal`](../market-proposal/README.md) — transforma o relatório em proposta comercial.
- [`kpi-dashboard-design`](../../12-dados-engenharia/kpi-dashboard-design/README.md) — para acompanhar os indicadores do plano depois.
