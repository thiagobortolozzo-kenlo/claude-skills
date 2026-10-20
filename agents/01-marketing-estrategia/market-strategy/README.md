# market-strategy

> Agente que avalia a estratégia de marketing de um site ou negócio: marca e confiança, preços, canais de aquisição, retenção e oportunidades de receita. Faz parte da auditoria `/market audit`.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | O Claude chama este agente sozinho quando você roda a skill `market-audit` (é um dos 5 agentes em paralelo). Também dá para usar sozinho: peça "roda o market-strategy em kenlo.com.br" |
| **Skills que usa** | Nenhuma skill própria. É lançado pela skill `market-audit` e usa a leitura de páginas da web do Claude |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Acesso à web (WebFetch) |

## Para que serve

Cobre duas dimensões da auditoria: "Marca e confiança" e "Crescimento e estratégia". Olha consistência visual e de mensagem, página "Sobre", contato, autoridade, estrutura de preços, canais de aquisição e sinais de retenção. Termina com oportunidades de receita separadas por prazo, com esforço e impacto estimados.

## Quando usar

- Dentro de uma auditoria de marketing completa.
- Para uma revisão de estratégia antes de um planejamento trimestral.
- Quando você quer saber qual mudança teria o maior efeito no crescimento.

**Exemplos de pedido:**

- "/market audit kenlo.com.br"
- "Roda o market-strategy no site da Kenlo."
- "Avalia nossa página de preços e os canais de aquisição que estamos usando."

## Como funciona

1. Lê a página inicial, a página "Sobre" e a de preços.
2. Dá nota de 0 a 10 para marca: consistência, arquitetura de confiança e sinais de autoridade.
3. Dá nota de 0 a 10 para crescimento: estratégia de preços, canais de aquisição e retenção e expansão.
4. Lista oportunidades em três prazos: ganhos rápidos (1-2 semanas), médio prazo (1-3 meses) e iniciativas estratégicas (3-6 meses).
5. Para cada uma, estima esforço, impacto, prazo e efeito na receita, e aponta a principal alavanca de crescimento.

## O que você recebe

- Nota de marca e confiança e nota de crescimento e estratégia.
- Tabelas de avaliação por dimensão.
- Oportunidades de receita por prazo.
- Análise de preços e de canais, com o próximo canal recomendado.

## Arquivos do agente

| Arquivo | O que tem |
|---|---|
| `AGENT.md` | Instruções que o agente segue: etapas, critérios de nota, formato da resposta e regras |

## Cuidados

- As estimativas de receita são aproximadas e baseadas só no que é público no site; confira com os números reais da Kenlo.
- O agente não vê dados internos (MRR, churn, CAC); para isso, use as skills de finanças SaaS.
- Revise o resultado antes de compartilhar.

## Relacionadas

- [`market-audit`](../../../skills/01-marketing-estrategia/market-audit/README.md) — a skill que lança este agente.
- [`pricing`](../../../skills/01-marketing-estrategia/pricing/README.md) — para aprofundar a estratégia de preços.
- [`market-competitive`](../market-competitive/README.md) — agente irmão que olha os concorrentes.
- [`saas-metrics`](../../../skills/11-financas-customer-success/saas-metrics/README.md) — para cruzar com as métricas internas.
