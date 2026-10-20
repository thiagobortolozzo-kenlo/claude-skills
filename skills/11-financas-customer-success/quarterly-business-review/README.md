# quarterly-business-review

> Prepara e conduz a QBR (Quarterly Business Review), a reunião trimestral que mostra ao cliente o valor entregue e combina os próximos passos — para times de contas e Customer Success.

| | |
|---|---|
| **Área** | Finanças SaaS e Customer Success |
| **Como chamar** | `/quarterly-business-review` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude (os dados de resultado do cliente vêm dos seus sistemas ou planilhas) |

## Para que serve

A QBR é uma conversa estratégica, não um relatório lido em voz alta. A skill organiza a preparação com prazos (dados 15 dias antes, análise 10 dias antes, recomendações 7 dias antes, agenda 3 dias antes) e a condução da reunião com foco em valor e em uma boa história: o que deu certo, o que ficou abaixo da meta, por quê e o que fazer nos próximos 90 dias. O objetivo é reter e fazer o cliente crescer.

## Quando usar

- Você tem clientes estratégicos e quer uma revisão trimestral padronizada.
- Um cliente está prestes a renovar e você precisa mostrar o retorno do investimento.
- Você quer abrir conversa de expansão (mais módulos, mais unidades) com base em resultados.

**Exemplos de pedido:**

- "Prepara a QBR de uma imobiliária cliente com os números de leads e visitas do trimestre."
- "Cria a agenda e os pontos-chave para enviar ao cliente antes da QBR."
- "Monta as recomendações para os próximos 90 dias com base nestes resultados."

## Como funciona

1. **Dados (D-15):** o Claude ajuda a juntar os indicadores do contrato e as metas do ciclo anterior, conferindo se estão consistentes.
2. **Análise (D-10):** identifica sucessos, desvios das metas e oportunidades.
3. **Proposta de valor (D-7):** monta as recomendações estratégicas para o próximo trimestre.
4. **Agenda (D-3):** prepara a pauta e os pontos-chave para enviar ao cliente.
5. **Reunião:** estrutura a apresentação com foco em valor e storytelling.
6. **Depois:** registra os próximos passos e responsáveis.

## O que você recebe

- Roteiro da apresentação da QBR.
- Análise de resultados com destaques e pontos de atenção.
- Recomendações para os próximos 90 dias.
- Agenda prévia para o cliente.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções e dois fluxos (preparação e condução da reunião) |

## Cuidados

- A skill usa exemplos de consultoria; adapte os indicadores ao uso do sistema e aos resultados das imobiliárias.
- Mostre só números que você consegue comprovar; QBR com dado errado destrói confiança.
- Ao compartilhar dados com o cliente, inclua apenas os dados da própria conta dele.

## Relacionadas

- [`client-health-score`](../client-health-score/README.md) — escolher quais clientes precisam de QBR primeiro
- [`saas-metrics`](../saas-metrics/README.md) — métricas para medir retenção e expansão
- [`kpi-dashboard-design`](../../12-dados-engenharia/kpi-dashboard-design/README.md) — painel para mostrar os resultados
- [`frontend-slides`](../../07-design-ui/frontend-slides/README.md) — slides para a apresentação
