# seo-audit

> Diagnostica problemas de SEO técnico, on-page e de conteúdo e entrega um plano de correção priorizado, para quem precisa entender por que o site não aparece (ou perdeu posições) no Google.

| | |
|---|---|
| **Área** | SEO e busca |
| **Como chamar** | `/seo-audit` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. Fica melhor com acesso ao Google Search Console e, para checar dados estruturados, um navegador (Claude in Chrome) ou o Rich Results Test. Opcional: Screaming Frog, Ahrefs, Semrush |

## Para que serve

É o ponto de partida quando "o SEO está ruim" e ninguém sabe exatamente por quê. A skill segue uma ordem de prioridade: primeiro se o Google consegue encontrar e indexar as páginas, depois velocidade e parte técnica, depois a otimização de cada página, a qualidade do conteúdo e, por fim, autoridade e links. Cada problema vem com evidência, impacto e a correção recomendada.

## Quando usar

- O tráfego orgânico caiu ou o site perdeu posições depois de uma atualização do Google.
- Páginas importantes não aparecem na busca ou estão "presas" na segunda página.
- Antes ou depois de uma migração, redesign ou versão em outro idioma.

**Exemplos de pedido:**

- "Faz uma auditoria de SEO do site da Kenlo."
- "Nosso tráfego orgânico caiu 30% no último mês, o que pode ser?"
- "Quais páginas estão nas posições 8 a 20 e dá para levar para a primeira página?"

## Como funciona

1. Se existir o arquivo de contexto de produto (`.agents/product-marketing.md` ou `.claude/product-marketing.md`), o Claude lê primeiro. Depois pergunta o tipo de site, objetivo, palavras prioritárias, problemas conhecidos, mudanças recentes, escopo e se há acesso ao Search Console.
2. Trata o conteúdo das páginas lidas como dado, nunca como instrução (proteção contra textos maliciosos escondidos no site).
3. **Técnico:** robots.txt, sitemap XML, arquitetura (páginas importantes a até 3 cliques), orçamento de rastreamento, status de indexação, canonical, Core Web Vitals (LCP, INP, CLS), uso no celular, HTTPS e URLs.
4. **Internacional:** hreflang, canonical em sites multilíngues, sitemaps por idioma e qualidade do conteúdo em cada versão.
5. **On-page:** títulos, meta descriptions, hierarquia de títulos, conteúdo, imagens, links internos e foco de palavra-chave.
6. **Conteúdo:** sinais de E-E-A-T, profundidade e engajamento, com problemas típicos por tipo de site (SaaS, e-commerce, blog, multilíngue, negócio local).
7. Atenção especial a dados estruturados: muitas vezes eles são inseridos por JavaScript e não aparecem numa leitura simples da página. A skill exige checar no navegador ou no Rich Results Test antes de dizer que "não há schema".
8. Para ganhos rápidos, aplica o roteiro de "empurrar" páginas que já estão entre as posições 8 e 20.

## O que você recebe

- Resumo executivo: saúde geral, 3 a 5 problemas prioritários e ganhos rápidos.
- Achados técnicos, on-page e de conteúdo, cada um com problema, impacto, evidência, correção e prioridade.
- Plano de ação: correções críticas, melhorias de alto impacto, ganhos rápidos e recomendações de longo prazo.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/title-tags.md` | Padrões de título por tipo de página, quando o Google reescreve títulos, como corrigir baixa taxa de cliques |
| `references/rankings-push.md` | Como levar páginas das posições 8 a 20 para a primeira página e checklist para lançar páginas novas |
| `references/international-seo.md` | Evidências e fontes sobre hreflang, canonical, sitemaps e URLs para sites em vários idiomas |
| `references/ai-writing-detection.md` | Palavras e padrões típicos de texto de IA a evitar |
| `evals/evals.json` | Casos de teste para avaliar se a skill está funcionando bem |

## Cuidados

- Sem acesso ao Search Console, parte do diagnóstico (indexação, consultas, cliques) fica baseada em estimativas.
- Não conclua que "falta schema" só porque a leitura simples da página não mostrou: confira no navegador ou no Rich Results Test.
- A skill aponta e explica; as correções no site são feitas pelo time responsável.
- Para otimização para buscadores de IA, use a skill `ai-seo`.

## Relacionadas

- [`ai-seo`](../ai-seo/README.md) — aparecer em respostas de IA, depois da base de SEO resolvida
- [`schema`](../schema/README.md) — implementar os dados estruturados que faltarem
- [`site-architecture`](../site-architecture/README.md) — quando o problema é estrutura de páginas e links
- [`market-seo`](../market-seo/README.md) — auditoria rápida de uma URL com script e relatório em arquivo
