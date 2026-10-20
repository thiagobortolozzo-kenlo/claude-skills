# market-proposal

> Monta uma proposta de serviços de marketing pronta para enviar ao cliente, com diagnóstico, escopo, cronograma, preço em três níveis e projeção de retorno.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/market-proposal` — ou peça em linguagem natural (ver exemplos); também é acionada por `/market proposal <cliente>` |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Escreve uma proposta comercial de marketing que vende, e não só descreve: começa pelos problemas e metas do cliente, mostra o diagnóstico, apresenta a estratégia em fases, define o que está e o que não está no escopo e apresenta o investimento em três opções, ligado ao retorno esperado. Se já houver uma auditoria feita pela suíte market, usa os dados dela.

## Quando usar

- Você fez a reunião de descoberta e precisa formalizar a proposta.
- Ainda vai fazer a reunião e quer as perguntas certas.
- Quer um modelo padrão de proposta para projetos de marketing.
- Precisa se preparar para objeções e para o follow-up depois do envio.

**Exemplos de pedido:**

- "/market proposal Imobiliária Exemplo"
- "Escreva uma proposta de projeto de marketing digital para uma imobiliária parceira da Kenlo, com três níveis de pacote."
- "Me dê as perguntas da reunião de descoberta antes de eu montar a proposta."

## Como funciona

1. Coleta informações do cliente (negócio, situação atual, dores, metas, orçamento, prazo, decisores) e dos serviços (o que será oferecido, modelo de contrato, prazo, casos de sucesso).
2. Se a reunião de descoberta ainda não aconteceu, entrega 10 perguntas essenciais e algumas extras.
3. Procura resultados de `/market audit` ou `/market competitors` na pasta e usa no diagnóstico.
4. Escreve as 11 seções: capa, resumo executivo, diagnóstico, estratégia em fases, escopo, cronograma, investimento em três níveis, projeção de retorno, equipe, casos e próximos passos.
5. Sugere a sequência de follow-up (dias 0, 2, 5, 7, 14 e 21), respostas para objeções comuns e os itens essenciais de termos e condições.

## O que você recebe

- Arquivo `CLIENT-PROPOSAL.md` com sumário, todas as seções preenchidas e apêndice (termos e condições, detalhamento de entregas, ferramentas).
- Roteiro de perguntas da reunião de descoberta.
- Sequência de e-mails de follow-up e tabela de respostas para objeções.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais: passos, estrutura de cada seção, modelos de preço e formato de saída |

A pasta [`../market/templates/`](../market/templates/) tem um modelo complementar: `proposal-template.md`.

## Cuidados

- As faixas de preço e os modelos de cobrança estão em dólar e refletem o mercado de agências dos Estados Unidos; defina os valores com o comercial.
- Projeções de retorno precisam ser conservadoras e em faixas; a própria skill pede isso. Nunca prometa resultado garantido.
- Termos e condições são um ponto de partida; o contrato final deve passar pelo jurídico.
- Casos de sucesso e números de clientes só podem ser usados com autorização deles.

## Relacionadas

- [`market-audit`](../market-audit/README.md) — gera o diagnóstico que deixa a proposta baseada em dados.
- [`market-report-pdf`](../market-report-pdf/README.md) — relatório em PDF para anexar à proposta.
- [`offers`](../offers/README.md) — ajuda a montar pacote, bônus e garantia da proposta.
- [`sales-enablement`](../../04-anuncios-conversao-vendas/sales-enablement/README.md) — materiais de apoio para a negociação.
