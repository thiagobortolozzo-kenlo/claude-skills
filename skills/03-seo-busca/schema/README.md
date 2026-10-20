# schema

> Cria, corrige e valida dados estruturados (schema.org em JSON-LD) nas páginas do site, para quem quer resultados mais ricos no Google e que buscadores e IAs entendam melhor o conteúdo.

| | |
|---|---|
| **Área** | SEO e busca |
| **Como chamar** | `/schema` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. Para publicar, acesso ao código do site ou ao CMS (ex.: plugin Yoast ou Rank Math no WordPress) |

## Para que serve

Dados estruturados são um bloco de código invisível para o visitante que descreve a página para o Google: "isto é um produto, com este preço", "isto é uma lista de perguntas frequentes", "esta é a empresa, com este logo". Com eles, a página pode aparecer com estrelas, perguntas, trilha de navegação e outros destaques na busca. Esta skill escolhe o tipo certo para cada página, escreve o código e explica como testar.

## Quando usar

- Adicionar dados estruturados a páginas novas (home, blog, produto, perguntas frequentes, eventos).
- Corrigir erros apontados no Search Console ou no teste de resultados ricos.
- Preparar um modelo de dados estruturados para muitas páginas iguais.

**Exemplos de pedido:**

- "Gera o JSON-LD de Organization e WebSite para a home da Kenlo."
- "Cria o schema de FAQ para a página de perguntas frequentes sobre o CRM para imobiliárias."
- "O Search Console está acusando erro no schema de produto. O que está faltando?"

## Como funciona

1. Se existir o arquivo de contexto de produto (`.agents/product-marketing.md` ou `.claude/product-marketing.md`), o Claude lê primeiro. Depois pergunta o tipo de página, se já existe schema, que resultados ricos você busca, que dados estão disponíveis e qual a tecnologia do site.
2. Segue quatro princípios: o código precisa refletir o que está na página, usar JSON-LD (formato recomendado pelo Google), seguir as regras do Google e validar sempre.
3. Escolhe os tipos certos entre Organization, WebSite, Article, Product, SoftwareApplication, FAQPage, HowTo, BreadcrumbList, LocalBusiness e Event, com os campos obrigatórios e recomendados de cada um. Se precisar de vários, combina num `@graph`.
4. Mostra onde colocar o código conforme o site: HTML estático, sites dinâmicos (React, Next.js) ou CMS com plugin.
5. Entrega um checklist de validação.

## O que você recebe

- Bloco de código JSON-LD completo, pronto para colar.
- Orientação de onde e como implementar no seu tipo de site.
- Checklist de teste (Rich Results Test, Schema.org Validator e Search Console).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/schema-examples.md` | Exemplos completos de JSON-LD para cada tipo e um exemplo de implementação em Next.js |
| `evals/evals.json` | Casos de teste para avaliar se a skill está funcionando bem |

## Cuidados

- Nunca marque no código algo que não aparece na página (ex.: avaliações ou preços que o visitante não vê). O Google pode punir o site.
- Valide sempre antes de publicar e acompanhe o Search Console depois.
- Ter o código certo não garante que o Google mostre o resultado rico; ele decide caso a caso.
- A implementação no site (deploy) é feita pelo time responsável pelo site.

## Relacionadas

- [`seo-audit`](../seo-audit/README.md) — auditoria de SEO que inclui revisão de schema
- [`ai-seo`](../ai-seo/README.md) — dados estruturados também ajudam buscadores de IA
- [`programmatic-seo`](../programmatic-seo/README.md) — schema em modelo para muitas páginas
- [`local-seo`](../local-seo/README.md) — schema `LocalBusiness` para negócios locais
