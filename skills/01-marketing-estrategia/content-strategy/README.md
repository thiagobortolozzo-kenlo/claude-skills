# content-strategy

> Decide que conteúdo produzir (pilares, temas, prioridades e calendário), para quem não sabe sobre o que escrever ou quer parar de produzir no escuro.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/content-strategy` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude (busca na web ajuda na pesquisa de fóruns e concorrentes) |

## Para que serve

Planeja o conteúdo como se fosse produto: cada peça precisa ser "buscável" (responde a uma demanda que já existe), "compartilhável" (cria demanda) ou as duas coisas. A skill define de 3 a 5 pilares, organiza temas em clusters, pontua as ideias por impacto e monta a divisão do calendário. Também cobre a distribuição: criar uma peça forte e espalhá-la por vários canais.

## Quando usar

- Você precisa de um plano editorial para o blog ou para o conteúdo da marca.
- Tem muitas ideias e quer saber quais fazer primeiro.
- Tem transcrições de vendas, pesquisas ou planilhas de palavras-chave e quer transformar isso em pautas.
- Está escolhendo um CMS headless para o conteúdo de marketing.

**Exemplos de pedido:**

- "Defina os pilares de conteúdo do blog da Kenlo para gestores de imobiliárias."
- "Analise estas transcrições de calls de vendas e me dê 20 pautas com prioridade."
- "Monte um mapa de clusters sobre gestão de locação e administração de aluguéis."

## Como funciona

1. Lê o contexto de produto, se existir, e coleta: negócio e objetivo, o que os clientes perguntam, conteúdo atual e recursos, concorrentes.
2. Aplica o "teste de ganho de informação": antes de planejar uma peça buscável, define o que ela traz de novo em relação ao que já está no topo da busca.
3. Define pilares e clusters e mapeia palavras-chave por etapa da jornada (descoberta, consideração, decisão, implementação).
4. Busca ideias em dados de palavras-chave, transcrições, pesquisas, fóruns, concorrentes e times de vendas e suporte.
5. Pontua cada ideia (impacto no cliente 40%, aderência ao produto 30%, potencial de busca 20%, recursos 10%).
6. Sugere a divisão 60/30/10 (buscável, compartilhável, experimental) e regras de produção por formato.

## O que você recebe

- 3 a 5 pilares com justificativa e subtemas.
- Lista de pautas priorizadas com tipo, palavra-chave, etapa da jornada e motivo.
- Mapa de clusters mostrando como os conteúdos se ligam.
- Tabela de pontuação das ideias.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/content-distribution.md` | Como distribuir conteúdo: "crie uma vez, distribua duas", canais próprios x alugados x emprestados, checklist de reaproveitamento |
| `references/headless-cms.md` | Guia para escolher e configurar um CMS headless (Sanity, Contentful, Strapi) para marketing |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- Volumes de busca e dificuldade só são confiáveis se você fornecer dados de uma ferramenta (Ahrefs, Semrush, Search Console); sem eles, são estimativas.
- A skill planeja; para escrever cada peça, use as skills de copy.
- Revise o plano com quem conhece o cliente (vendas e suporte) antes de fechar o calendário.

## Relacionadas

- [`copywriting`](../../02-copy-conteudo/copywriting/README.md) — escreve as peças planejadas.
- [`seo-audit`](../../03-seo-busca/seo-audit/README.md) — otimização técnica e on-page.
- [`ai-seo`](../../03-seo-busca/ai-seo/README.md) — conteúdo para ser citado por assistentes de IA.
- [`content-repurposing`](../../05-redes-sociais/content-repurposing/README.md) — reaproveita cada peça em vários formatos.
