# market-conversion

> Agente especialista em otimização de conversão (CRO): encontra barreiras e atritos no caminho do visitante até virar cliente e sugere correções priorizadas. Faz parte da auditoria `/market audit`.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | O Claude chama este agente sozinho quando você roda a skill `market-audit` (é um dos 5 agentes em paralelo). Também dá para usar sozinho: peça "roda o market-conversion em kenlo.com.br" |
| **Skills que usa** | Nenhuma skill própria. É lançado pela skill `market-audit` e usa a leitura de páginas da web do Claude |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Acesso à web (WebFetch) |

## Para que serve

Avalia a dimensão "Otimização de conversão" do site. Segue o caminho principal (página inicial, páginas de recurso, preços, cadastro ou contato), mede chamadas para ação, prova social, atrito, sinais de confiança e senso de urgência, e mostra onde os visitantes provavelmente desistem.

## Quando usar

- Dentro de uma auditoria de marketing completa.
- Quando o site tem tráfego mas poucos cadastros ou pedidos de demonstração.
- Antes de planejar testes A/B.

**Exemplos de pedido:**

- "/market audit kenlo.com.br"
- "Roda o market-conversion no site da Kenlo."
- "Onde estamos perdendo gente no caminho até o pedido de demonstração?"

## Como funciona

1. Mapeia o caminho de conversão: CTA principal, páginas de recurso, preços, formulário de cadastro ou contato, pop-ups.
2. Dá nota de 0 a 10 em: estratégia de CTA, prova social, atrito (quanto maior a nota, menos atrito), sinais de confiança e urgência.
3. Procura vazamentos no funil (interesse, consideração, intenção, conversão), com gravidade e correção sugerida.
4. Escreve de 3 a 5 hipóteses de teste A/B no formato "se mudarmos X, a métrica Y melhora porque Z".

## O que você recebe

- Nota geral e notas por dimensão.
- Mapa do caminho de conversão.
- Tabela de vazamentos do funil com gravidade e correção.
- Ganhos rápidos para a semana e hipóteses de teste A/B.
- Lista de elementos de conversão que faltam.

## Arquivos do agente

| Arquivo | O que tem |
|---|---|
| `AGENT.md` | Instruções que o agente segue: etapas, critérios de nota, formato da resposta e regras |

## Cuidados

- O agente não recomenda táticas manipuladoras (dark patterns); urgência deve ser verdadeira.
- As estimativas de impacto são aproximadas; valide com dados reais e testes.
- Revise o resultado antes de compartilhar.

## Relacionadas

- [`market-audit`](../../../skills/01-marketing-estrategia/market-audit/README.md) — a skill que lança este agente.
- [`cro`](../../../skills/04-anuncios-conversao-vendas/cro/README.md) — otimização de conversão página a página.
- [`ab-testing`](../../../skills/04-anuncios-conversao-vendas/ab-testing/README.md) — para rodar as hipóteses de teste sugeridas.
- [`market-content`](../market-content/README.md) — agente irmão que avalia o texto.
