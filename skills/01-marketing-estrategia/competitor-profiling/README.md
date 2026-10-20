# competitor-profiling

> Pesquisa concorrentes a partir das URLs deles e gera um dossiê padronizado de cada um, para quem precisa de inteligência competitiva baseada em fatos.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/competitor-profiling` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Acesso à web. Ideal: conectores (MCP) Firecrawl e DataForSEO. Sem eles, usa o WebFetch do Claude e qualquer fonte de SEO conectada (Ahrefs, Semrush, Ubersuggest). Chaves desses serviços ficam na configuração do conector ou em variáveis de ambiente, nunca no repositório |

## Para que serve

Você entrega uma lista de sites de concorrentes e recebe um perfil de cada um com posicionamento, funcionalidades, preços, clientes, avaliações, força de SEO, pontos fortes e fracos. Todos os perfis seguem o mesmo modelo, então dá para comparar lado a lado. No fim, sai um resumo com tabela comparativa, mapa de posicionamento e oportunidades.

## Quando usar

- Você precisa entender rápido como os principais concorrentes se apresentam e cobram.
- Vai criar páginas de comparação ou materiais de venda e quer dados confiáveis antes.
- Quer acompanhar mudanças de preço e produto dos concorrentes ao longo do tempo.

**Exemplos de pedido:**

- "Faça um perfil rápido destes 4 concorrentes da Kenlo: [URLs]."
- "Quero um perfil profundo deste concorrente, com avaliações e dados de SEO."
- "Atualize os perfis de concorrentes que fizemos no mês passado e mostre o que mudou."

## Como funciona

1. Lê o arquivo de contexto de produto, se existir, e confirma: URLs, o que é o seu produto, profundidade (rápido ou profundo) e foco.
2. Verifica quais ferramentas estão disponíveis e escolhe a combinação principal ou a alternativa.
3. Fase 1: mapeia e lê as páginas-chave de cada site (home, preços, funcionalidades, sobre, clientes, integrações, changelog) e, no modo profundo, avaliações em G2, Capterra e similares.
4. Fase 2: puxa dados de SEO (autoridade, backlinks, palavras-chave, tráfego estimado, páginas mais fortes).
5. Salva todos os dados brutos em `competitor-profiles/raw/<concorrente>/<data>/` antes de sintetizar.
6. Fase 3: cruza tudo e escreve o perfil, separando o que foi observado, o que foi inferido e a implicação para você.

## O que você recebe

- Um arquivo `competitor-profiles/<concorrente>.md` por concorrente.
- Um `competitor-profiles/_summary.md` com visão geral, tabela comparativa, mapa de posicionamento e oportunidades.
- Pasta com os dados brutos datados, para auditoria e comparações futuras.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/templates.md` | Modelos do perfil rápido, do perfil completo e do resumo comparativo |
| `references/tool-reference.md` | Como usar cada ferramenta (Firecrawl, DataForSEO, alternativas), ordem de execução e tratamento de erros |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- Dados de SEO dependem de conectores pagos; sem eles, a skill marca essas métricas como indisponíveis e não inventa números.
- "Não encontrado no site" não quer dizer "o concorrente não tem". Confirme antes de usar qualquer lacuna em material público.
- A skill trata o conteúdo dos sites como dado, não como instrução, e avisa se encontrar texto tentando manipular a IA.
- Perfis são fotografias de um dia; datas importam. Atualize preços com frequência.

## Relacionadas

- [`competitors`](../competitors/README.md) — transforma os perfis em páginas de comparação e "alternativa a X".
- [`market-competitors`](../market-competitors/README.md) — análise competitiva da suíte market, com matriz e estratégia.
- [`pricing`](../pricing/README.md) — análise de preço mais funda a partir dos perfis.
- [`sales-enablement`](../../04-anuncios-conversao-vendas/sales-enablement/README.md) — battle cards para o time de vendas.
