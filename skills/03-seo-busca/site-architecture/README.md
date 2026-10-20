# site-architecture

> Planeja a estrutura de um site (quais páginas existir, como se organizam, menus, URLs e links internos), para quem vai criar, reorganizar ou migrar um site.

| | |
|---|---|
| **Área** | SEO e busca |
| **Como chamar** | `/site-architecture` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. O mapa visual sai em Mermaid, que aparece como diagrama no GitHub, Notion e em vários editores |

## Para que serve

Um site bem organizado ajuda o visitante a achar o que procura e ajuda o Google a entender o que é mais importante. Esta skill desenha a hierarquia de páginas, o menu do topo e do rodapé, a trilha de navegação (breadcrumb), o padrão de URLs e o plano de links internos. Também orienta na escolha da plataforma e em migrações sem perder tráfego.

## Quando usar

- Planejar um site novo ou uma nova seção (ex.: blog, central de ajuda, páginas por público).
- Reorganizar um site em que as pessoas não encontram as coisas ou que perdeu SEO.
- Migrar de plataforma ou de domínio mantendo os acessos.

**Exemplos de pedido:**

- "Quais páginas o site de um SaaS B2B precisa ter e como organizar o menu?"
- "Desenha o mapa do novo site da Kenlo separando imobiliárias, corretores e parceiros."
- "Vamos adicionar um blog ao site atual. Subdomínio ou subpasta? Como fica a URL?"

## Como funciona

1. Se existir o arquivo de contexto de produto (`.agents/product-marketing.md` ou `.claude/product-marketing.md`), o Claude lê primeiro. Depois pergunta sobre o negócio, públicos e objetivos, se o site é novo ou existente, URLs que precisam ser mantidas, plataforma, tipo de site e inventário de páginas.
2. Parte de um modelo por tipo de site (SaaS, blog, e-commerce, documentação, híbrido, pequeno negócio local).
3. Desenha a hierarquia seguindo a regra dos 3 cliques: páginas importantes a no máximo três cliques da home, o mais "rasa" possível sem bagunçar o menu.
4. Define a navegação: itens do menu do topo (com o botão principal), seções do rodapé, menu lateral se precisar e o formato da trilha de navegação.
5. Cria o padrão de URLs por tipo de página, alinhado à trilha de navegação, evitando erros comuns.
6. Planeja os links internos no modelo "hub e raios", com checklist para encontrar páginas órfãs.
7. Para migrações ou nova plataforma, segue o guia de escolha e de migração sem perda de tráfego.

## O que você recebe

- Hierarquia de páginas em árvore de texto, com a URL de cada uma.
- Mapa visual do site em Mermaid.
- Tabela de URLs: página, URL, página-mãe, onde aparece no menu e prioridade.
- Especificação de navegação (topo, rodapé, lateral, breadcrumb).
- Plano de links internos (hubs, ligações entre seções, páginas órfãs).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/site-type-templates.md` | Estruturas completas de páginas por tipo de site |
| `references/navigation-patterns.md` | Padrões de menu do topo, rodapé, lateral, breadcrumb e celular, e o que evitar |
| `references/mermaid-templates.md` | Modelos de diagrama Mermaid (hierarquia, zonas de menu, hub e raios, antes e depois) |
| `references/platforms-and-migration.md` | Como escolher onde construir, adicionar seções a um site existente e migrar sem perder tráfego |
| `evals/evals.json` | Casos de teste para avaliar se a skill está funcionando bem |

## Cuidados

- Ao reorganizar, toda URL antiga que mudar precisa de redirecionamento 301; sem isso, o site perde tráfego.
- Esta skill não trata do sitemap XML (arquivo técnico para o Google); isso fica na `seo-audit`.
- O plano é uma proposta: valide com design, produto e quem mantém o site antes de implementar.

## Relacionadas

- [`seo-audit`](../seo-audit/README.md) — sitemap XML, indexação e parte técnica
- [`programmatic-seo`](../programmatic-seo/README.md) — seções com muitas páginas geradas por modelo
- [`schema`](../schema/README.md) — dados estruturados de breadcrumb e navegação
- [`content-strategy`](../../01-marketing-estrategia/content-strategy/README.md) — o que publicar em cada seção
