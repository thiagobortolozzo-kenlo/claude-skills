# market-technical

> Agente que avalia a base técnica de marketing de um site: SEO técnico, desempenho, versão mobile, ferramentas de medição e dados estruturados. Faz parte da auditoria `/market audit`.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | O Claude chama este agente sozinho quando você roda a skill `market-audit` (é um dos 5 agentes em paralelo). Também dá para usar sozinho: peça "roda o market-technical em kenlo.com.br" |
| **Skills que usa** | Nenhuma skill própria. É lançado pela skill `market-audit` e usa a leitura de páginas da web do Claude |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Acesso à web (WebFetch) |

## Para que serve

Cobre as dimensões "SEO e descoberta" e "Marketing técnico". Lê o HTML de verdade do site para checar título, meta description, cabeçalhos, `robots.txt`, `sitemap.xml`, sinais de desempenho, versão mobile, scripts de medição (GA4, Tag Manager, Meta Pixel, LinkedIn Insight) e dados estruturados (schema). Entrega correções específicas, com exemplos de texto prontos.

## Quando usar

- Dentro de uma auditoria de marketing completa.
- Para conferir se o site está bem preparado para o Google e para a medição de campanhas.
- Antes de investir em anúncios, para saber se o rastreamento está instalado.

**Exemplos de pedido:**

- "/market audit kenlo.com.br"
- "Roda o market-technical no site da Kenlo."
- "O site tem GA4, Tag Manager e Meta Pixel instalados?"

## Como funciona

1. Verifica a estrutura da página: título, meta description, H1 único, hierarquia de cabeçalhos, texto alternativo de imagens, URLs e canonical.
2. Confere `robots.txt`, sitemap, ausência de `noindex` por engano e links internos.
3. Avalia sinais de desempenho e de versão mobile pelo HTML.
4. Analisa a arquitetura de conteúdo: navegação, organização do blog e links internos.
5. Procura ferramentas de medição, aviso de cookies e uso de UTM.
6. Procura dados estruturados (organização, site, produto, FAQ, avaliações, breadcrumb, artigo) e dá a nota ponderada.

## O que você recebe

- Nota geral e notas por dimensão.
- Ganhos rápidos de SEO com texto sugerido.
- Tabela de problemas técnicos com gravidade, impacto e correção.
- Tabela de ferramentas de medição e de dados estruturados (tem ou não tem).
- Observações sobre a arquitetura de conteúdo.

## Arquivos do agente

| Arquivo | O que tem |
|---|---|
| `AGENT.md` | Instruções que o agente segue: etapas, pesos da nota, formato da resposta e regras |

## Cuidados

- A análise de desempenho é feita pelo HTML, não por medição real de velocidade; para números exatos use ferramentas como PageSpeed Insights.
- Scripts carregados depois do carregamento inicial podem não aparecer na leitura do HTML.
- Revise o resultado com quem cuida do site antes de mudar algo.

## Relacionadas

- [`market-audit`](../../../skills/01-marketing-estrategia/market-audit/README.md) — a skill que lança este agente.
- [`seo-audit`](../../../skills/03-seo-busca/seo-audit/README.md) — auditoria de SEO mais profunda.
- [`schema`](../../../skills/03-seo-busca/schema/README.md) — para implementar os dados estruturados que faltam.
- [`analytics`](../../../skills/04-anuncios-conversao-vendas/analytics/README.md) — para configurar a medição corretamente.
