# competitors

> Cria páginas de comparação com concorrentes ("alternativa a X", "nós vs X") para SEO e para ajudar quem está avaliando, e audita as afirmações já publicadas.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/competitors` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude (acesso à web ajuda a verificar dados atuais dos concorrentes) |

## Para que serve

Escreve páginas que aparecem quando alguém pesquisa por um concorrente e ajudam essa pessoa a decidir com honestidade. Cobre quatro formatos: alternativa a um concorrente, lista de alternativas, você vs concorrente e concorrente vs concorrente. Também faz auditoria de páginas e materiais antigos para achar afirmações desatualizadas ou sem prova.

## Quando usar

- Você quer captar tráfego de quem busca "alternativa a [concorrente]".
- Precisa de uma página "Kenlo vs [concorrente]" com tabela, preços e para quem cada um serve.
- Desconfia que as páginas ou battle cards de comparação estão com dados velhos.

**Exemplos de pedido:**

- "Escreva uma página 'Kenlo vs [concorrente]' para imobiliárias que estão avaliando CRM."
- "Planeje quais páginas de alternativas devemos criar primeiro, por ordem de prioridade."
- "Audite nossas páginas de comparação e marque o que está desatualizado."

## Como funciona

1. Lê o contexto de produto, se existir. Se o concorrente não for informado, pergunta e para; nunca adivinha.
2. Entende seu produto (diferenciais, preço, pontos fracos honestos), o cenário competitivo e o objetivo da página.
3. Escolhe o formato e segue a estrutura dele (resumo rápido, tabela, comparação por categoria, para quem cada um serve, migração, prova social, chamada para ação).
4. Centraliza os dados de cada concorrente em um único arquivo, para atualizar todas as páginas de uma vez.
5. Aplica a disciplina de evidência: data em cada fato, "não listado" em vez de "não tem", sem atribuir motivos.
6. Na auditoria, lista cada afirmação e marca como atual, mudou, não verificável ou exagerada, com o texto de correção.

## O que você recebe

- Arquivo de dados do concorrente (formato YAML).
- Texto completo da página: URL, meta tags, seções, tabelas e chamadas para ação.
- Plano de páginas com ordem de prioridade.
- Relatório de auditoria com contagem por status e lista de correções.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/templates.md` | Modelos de cada seção da página (resumo, funcionalidades, preços, suporte, para quem é, migração) |
| `references/content-architecture.md` | Como organizar os dados centralizados de cada concorrente, com modelo |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- Páginas de comparação são afirmações públicas sobre outra empresa. Revise com o jurídico e confirme cada dado antes de publicar.
- Preços e funcionalidades mudam: coloque a data em tudo e revise pelo menos a cada trimestre.
- A skill orienta SEO, mas não publica a página nem mede ranking.

## Relacionadas

- [`competitor-profiling`](../competitor-profiling/README.md) — pesquisa os concorrentes antes de escrever.
- [`programmatic-seo`](../../03-seo-busca/programmatic-seo/README.md) — para criar muitas páginas de comparação em escala.
- [`copywriting`](../../02-copy-conteudo/copywriting/README.md) — refina o texto da página.
- [`schema`](../../03-seo-busca/schema/README.md) — marcação de FAQ e comparação para buscadores.
