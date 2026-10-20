# market-seo

> Faz uma auditoria de SEO de uma página ou site a partir da URL (on-page, qualidade do conteúdo, palavras-chave, técnico e estratégia de conteúdo) e entrega correções priorizadas, para quem quer melhorar o tráfego orgânico.

| | |
|---|---|
| **Área** | SEO e busca |
| **Como chamar** | `/market-seo` — ou peça em linguagem natural (ver exemplos). Faz parte da suíte `market`, onde aparece como `/market seo <url>` |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Python 3 para o script `analyze_page.py` (fica na skill `market`, em `skills/01-marketing-estrategia/market/scripts/`) e acesso à internet para ler a página. Nenhuma chave de API |

## Para que serve

Combina uma leitura automática da página (título, meta description, títulos internos, links, imagens, dados estruturados, canonical, robots) com uma análise de especialista. O resultado é um relatório que explica por que cada ponto importa, mostra o "antes" e o "depois" e organiza as correções por prioridade e esforço.

## Quando usar

- Antes de reformular uma página importante do site.
- Para entender por que uma página não aparece no Google.
- Para encontrar lacunas de conteúdo e oportunidades de trechos em destaque.

**Exemplos de pedido:**

- "/market seo https://www.kenlo.com.br"
- "Faz uma auditoria de SEO da nossa página de recursos para imobiliárias."
- "O que falta no blog para ranquear melhor em 'sistema para imobiliária'?"

## Como funciona

1. **Leitura automática:** o Claude roda `python3 scripts/analyze_page.py <url>`, que devolve em JSON título, meta description, Open Graph, títulos H1 a H6, links, imagens e texto alternativo, formulários e CTAs, dados estruturados, redes sociais, scripts de rastreamento, viewport, canonical e robots.
2. **Checklist on-page:** avalia título, meta description, hierarquia de títulos, imagens, links internos e URL como Passa, Precisa melhorar ou Falha.
3. **Qualidade do conteúdo (E-E-A-T):** experiência, especialidade, autoridade e confiabilidade.
4. **Palavras-chave:** palavra principal, secundárias e intenção de busca.
5. **Técnico rápido:** robots.txt, sitemap XML, canonical, velocidade, uso no celular e Core Web Vitals.
6. **Oportunidades:** lacunas de conteúdo, trechos em destaque (respostas de 40 a 60 palavras, listas, tabelas), dados estruturados que faltam, links internos e plano de conteúdo para o blog.
7. Se você já rodou `/market audit` ou `/market landing`, cruza os resultados.

## O que você recebe

- Arquivo `SEO-AUDIT.md` com nota de saúde de SEO (0 a 100), checklist on-page, E-E-A-T, palavras-chave, técnico, lacunas de conteúdo, oportunidades de trecho em destaque, dados estruturados, links internos, Core Web Vitals e estratégia de conteúdo.
- Recomendações em quatro níveis: crítico (agora), alta (este mês), média (este trimestre) e baixa.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue: os 11 passos da auditoria e o formato do relatório |

O script `analyze_page.py` não fica nesta pasta: ele está em `skills/01-marketing-estrategia/market/scripts/`.

## Cuidados

- O caminho do script no `SKILL.md` é relativo (`scripts/analyze_page.py`). Se o Claude não encontrar, aponte para a pasta da skill `market`.
- O script lê páginas públicas e verifica o certificado HTTPS. Se o site tiver certificado inválido, a leitura falha de propósito.
- Estimativas de impacto ("+20% de cliques", "+500 visitas") são ilustrativas; não prometa números para clientes sem dados reais.
- Volume de busca e concorrência são estimados pelo Claude como Alto/Médio/Baixo. Para números reais, use uma ferramenta de SEO.
- O arquivo `SEO-AUDIT.md` é criado na pasta em que você está trabalhando.

## Relacionadas

- [`market`](../../01-marketing-estrategia/market/README.md) — a suíte de onde vem o comando e o script
- [`seo-audit`](../seo-audit/README.md) — auditoria técnica e on-page mais aprofundada, sem script
- [`schema`](../schema/README.md) — corrigir os dados estruturados apontados na auditoria
- [`market-audit`](../../01-marketing-estrategia/market-audit/README.md) — auditoria de marketing completa que combina com esta
