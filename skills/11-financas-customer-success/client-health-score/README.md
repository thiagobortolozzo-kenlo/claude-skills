# client-health-score

> Cria um "termômetro de saúde" do cliente (health score de 0 a 100) e planos de ação para quem está em risco — para times de Customer Success e de contas que querem agir antes do cancelamento.

| | |
|---|---|
| **Área** | Finanças SaaS e Customer Success |
| **Como chamar** | `/client-health-score` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude (os dados de uso e relacionamento vêm do seu CRM ou de planilhas) |

## Para que serve

O health score junta, numa nota só, sinais de que o cliente está bem ou mal: frequência de uso, participação em reuniões, chamados de suporte, metas atingidas, abertura de e-mails. Cada sinal recebe um peso, e a nota coloca o cliente em uma faixa: alto risco (0-40), atenção (41-70) ou saudável (71-100). A skill ajuda a montar esse modelo, acompanhá-lo e, quando a nota cai, planejar a conversa e as ações de recuperação.

## Quando usar

- O time de CS quer priorizar quais imobiliárias clientes acompanhar primeiro.
- Clientes estão cancelando "de surpresa" e você quer sinais de alerta antecipados.
- Um cliente importante caiu de nota e você precisa preparar uma reunião de alinhamento.

**Exemplos de pedido:**

- "Monta um health score para as imobiliárias clientes da Kenlo com base em uso do CRM, chamados e pagamento em dia."
- "Este cliente caiu de 75 para 45 no score. Cria um plano de ação e o roteiro da reunião."
- "Quais pesos devo dar para cada indicador do health score?"

## Como funciona

1. O Claude define com você o propósito do score (prever cancelamento, achar oportunidade de expansão).
2. Escolhe os indicadores e os pesos, somando 100%.
3. Sugere como juntar os dados (CRM, planilhas, automações) e testa com 5 a 10 clientes.
4. Define as faixas de risco e o que fazer em cada uma.
5. Para clientes em queda: analisa a causa, coleta informações qualitativas, monta um plano personalizado e acompanha a evolução.
6. Revisa o modelo periodicamente para ver se a nota realmente prevê o que acontece.

## O que você recebe

- Modelo de health score com indicadores, pesos e faixas.
- Modelo de relatório mensal de saúde do cliente.
- Roteiro de reunião para cliente em risco (agenda de 45 minutos).
- Checklist, métricas de referência e erros comuns.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções, dois fluxos (implantação e intervenção), modelos de relatório e de reunião, checklist |

## Cuidados

- Os exemplos da skill são de uma consultoria de marketing; adapte os indicadores para a realidade de um SaaS para imobiliárias (uso de módulos, logins, leads atendidos, chamados).
- Os nomes de empresas e pessoas nos modelos são fictícios.
- Ao trabalhar com dados reais de clientes, prefira identificadores ou nomes de empresa; evite expor dados pessoais de contatos (LGPD).
- O score é um apoio à decisão: valide os pesos com o histórico real de cancelamentos.

## Relacionadas

- [`quarterly-business-review`](../quarterly-business-review/README.md) — reunião trimestral para mostrar valor ao cliente
- [`saas-metrics`](../saas-metrics/README.md) — churn, NRR e outras métricas da base
- [`churn-prevention`](../../04-anuncios-conversao-vendas/churn-prevention/README.md) — fluxos de cancelamento e ofertas de retenção
- [`client-onboarding`](../client-onboarding/README.md) — um bom começo evita score baixo depois
