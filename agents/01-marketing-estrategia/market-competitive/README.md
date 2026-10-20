# market-competitive

> Agente especialista em inteligência competitiva: pesquisa os concorrentes de um site e aponta lacunas de posicionamento, oportunidades e vantagens. Faz parte da auditoria de marketing `/market audit`.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | O Claude chama este agente sozinho quando você roda a skill `market-audit` (ele é um dos 5 agentes que rodam em paralelo). Também dá para usar sozinho: peça "roda o market-competitive em kenlo.com.br" |
| **Skills que usa** | Nenhuma skill própria. É lançado pela skill `market-audit` e usa as ferramentas de busca e leitura da web do Claude |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Acesso à web (WebFetch e WebSearch) |

## Para que serve

Avalia a dimensão "Posicionamento competitivo" de um site. Descobre de 3 a 5 concorrentes, lê os sites deles de verdade, compara mensagem, público, preço, diferenciais e prova social, e dá notas de 0 a 10. O resultado é uma lista de oportunidades concretas, como páginas de comparação ou de "alternativa a".

## Quando usar

- Dentro de uma auditoria de marketing completa (`/market audit`).
- Quando você quer um mergulho rápido nos concorrentes de um site.
- Antes de reescrever o posicionamento ou criar páginas de comparação.

**Exemplos de pedido:**

- "/market audit kenlo.com.br" (o agente roda junto com os outros quatro)
- "Roda o market-competitive no site da Kenlo."
- "Quem são os concorrentes da Kenlo e onde estamos mais fracos no posicionamento?"

## Como funciona

1. Lê a página inicial do site-alvo, identifica a categoria e busca concorrentes ("alternativas a", "X vs", "concorrentes de").
2. Extrai o posicionamento do alvo: frase principal, público, diferenciais, preço, prova social e maturidade de conteúdo.
3. Lê a página inicial dos 3 principais concorrentes e extrai os mesmos pontos.
4. Dá nota de 0 a 10 em: clareza de posicionamento, competitividade de preço, comunicação de recursos, consciência de mercado e autoridade de conteúdo.
5. Identifica lacunas de posicionamento, de conteúdo e de comunicação de recursos, e sugere uma narrativa para quem usa concorrente trocar.

## O que você recebe

- Nota geral e notas por dimensão.
- Tabela de concorrentes com força e fraqueza de cada um.
- Tabela comparando mensagem, público, preço, diferencial e prova social.
- Lista de oportunidades e ações recomendadas (checklist).

## Arquivos do agente

| Arquivo | O que tem |
|---|---|
| `AGENT.md` | Instruções que o agente segue: etapas de análise, critérios de nota, formato da resposta e regras |

## Cuidados

- O agente deve ler os sites dos concorrentes, não supor. Mesmo assim, confira preços e dados antes de usar em material público.
- Notas são uma leitura qualitativa, não uma medição.
- Revise o resultado antes de compartilhar.

## Relacionadas

- [`market-audit`](../../../skills/01-marketing-estrategia/market-audit/README.md) — a skill que lança este agente em paralelo com os outros.
- [`market-strategy`](../market-strategy/README.md) — agente irmão que avalia marca e crescimento.
- [`competitor-profiling`](../../../skills/01-marketing-estrategia/competitor-profiling/README.md) — perfis de concorrentes mais detalhados.
- [`competitors`](../../../skills/01-marketing-estrategia/competitors/README.md) — para criar as páginas de comparação sugeridas.
