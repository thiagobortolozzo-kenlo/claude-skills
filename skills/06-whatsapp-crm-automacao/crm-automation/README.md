# crm-automation

> Desenha e monta automações de CRM (qualificação, distribuição, nutrição e alerta de churn) com Make, n8n, Zapier, APIs e IA.

| | |
|---|---|
| **Área** | WhatsApp, CRM e automação |
| **Como chamar** | `/crm-automation` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Uma ferramenta de automação (Make, n8n ou Zapier) e acesso às APIs usadas nos exemplos (RD Station, Pipedrive, HubSpot, SendGrid, Slack, OpenAI). As chaves ficam em variáveis de ambiente ou nas credenciais da ferramenta, nunca no repositório |

## Para que serve

Mostra, com fluxos passo a passo, como ligar formulários, CRM, e-mail e chat para que o lead seja qualificado e encaminhado sozinho. Os exemplos vão de um fluxo simples (lead do RD Station vira negócio no Pipedrive e recebe e-mail de boas-vindas) a fluxos com IA que classificam se o lead é do perfil ideal e avisam o CS quando um cliente mostra risco de cancelar.

## Quando usar

- Leads de formulário são passados à mão para o CRM.
- Quer qualificar leads automaticamente antes de chegarem ao vendedor.
- Precisa avisar o time de CS quando um cliente para de usar o produto.

**Exemplos de pedido:**

- "Cria uma automação que pega o lead do RD Station, qualifica e cria o negócio no Pipedrive."
- "Como uso IA para dizer se um lead de imobiliária é do nosso perfil ideal?"
- "Monta um alerta no Slack quando um cliente do HubSpot ficar 30 dias sem acessar."

## Como funciona

1. Quick start: webhook do RD Station no Make, mapeamento de campos, filtro simples de pontuação, criação de pessoa e negócio no Pipedrive e e-mail via SendGrid.
2. Fluxo 1: qualificação e distribuição de leads B2B com IA, com rotas diferentes para quem é e quem não é do perfil.
3. Fluxo 2: detecção de churn potencial com dados do HubSpot e aviso ao CSM no Slack.
4. Traz modelos, checklist, métricas de referência, erros comuns e dicas avançadas.

## O que você recebe

- Desenho do fluxo de automação, módulo por módulo.
- Exemplos de chamadas de API e de prompt para a IA.
- Checklist de implantação e métricas para acompanhar.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |

## Cuidados

- Os exemplos usam marcadores como `{{YOUR_OPENAI_API_KEY}}`: troque pela credencial guardada na ferramenta, nunca cole a chave no fluxo exportado.
- Enviar dados de leads para uma IA externa é tratamento de dados pessoais; confira a base legal e o contrato com o fornecedor (LGPD).
- Teste com leads fictícios antes de ativar em produção.

## Relacionadas

- [`revops`](../../04-anuncios-conversao-vendas/revops/README.md) — define as regras de ciclo de vida e pontuação que a automação executa
- [`n8n-workflow`](../n8n-workflow/README.md) — montagem dos fluxos no n8n
- [`client-health-score`](../../11-financas-customer-success/client-health-score/README.md) — critérios para o alerta de churn
- [`data-processing-agreement`](../../10-juridico-lgpd/data-processing-agreement/README.md) — contrato de tratamento de dados com fornecedores
