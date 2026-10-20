# n8n-workflow-patterns

> Catálogo de padrões de arquitetura usados em workflows reais do n8n, para escolher a estrutura certa antes de montar uma automação.

| | |
|---|---|
| **Área** | WhatsApp, CRM e automação |
| **Como chamar** | `/n8n-workflow-patterns` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude para o desenho. Para criar e publicar workflows direto do Claude, um conector MCP do n8n (opcional) |

## Para que serve

Antes de arrastar nós, vale decidir o "formato" da automação. A skill apresenta os 5 padrões principais (processar webhook, integrar com API HTTP, operar banco de dados, agente de IA e tarefa agendada), quando usar cada um, os componentes comuns (gatilhos, fontes, transformação, saídas, erros) e os fluxos de dados (linear, com ramificação, paralelo, em loop, com tratamento de erro).

## Quando usar

- Vai começar uma automação nova e quer escolher a melhor estrutura.
- Um workflow cresceu demais e ficou difícil de manter.
- Precisa de um checklist de planejamento, implementação, validação e publicação.

**Exemplos de pedido:**

- "Qual padrão de n8n uso para receber leads do site e mandar para o CRM?"
- "Desenha a arquitetura de um agente de IA no n8n que responde dúvidas de corretores."
- "Monta um relatório semanal agendado que busca dados de uma API e manda no Slack."

## Como funciona

1. Identifica qual dos 5 padrões resolve o problema, usando o guia de escolha.
2. Lista os componentes do fluxo: gatilho, fonte de dados, transformação, saída e tratamento de erro.
3. Escolhe o fluxo de dados adequado (linear, ramificado, paralelo, loop).
4. Aplica o checklist de criação, das fases de planejamento à publicação.
5. Alerta para armadilhas comuns: estrutura dos dados do webhook, vários itens de entrada, autenticação, ordem de execução e erros de expressão.
6. Dá exemplos rápidos (webhook para Slack, relatório agendado, sincronização de banco, assistente de IA, integração de API).

## O que você recebe

- Recomendação do padrão e desenho da arquitetura do workflow.
- Checklist de criação e lista de cuidados.
- Exemplo de estrutura de nós para começar.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |

## Cuidados

- O texto cita arquivos de detalhe por padrão (ex.: `webhook_processing.md`) e outras skills de n8n (expressões, validação, ferramentas MCP) que não estão nesta pasta. O conteúdo principal está todo no `SKILL.md`.
- O cabeçalho da skill a marca como de "risco crítico", porque workflows publicados podem agir em sistemas reais. Valide antes de ativar.
- Proteja webhooks e credenciais.

## Relacionadas

- [`n8n-workflow`](../n8n-workflow/README.md) — configuração prática dos nós e expressões
- [`crm-automation`](../crm-automation/README.md) — aplicações em CRM
- [`chatbot-whatsapp`](../chatbot-whatsapp/README.md) — padrão de agente de IA aplicado ao WhatsApp
- [`mermaid-expert`](../../12-dados-engenharia/mermaid-expert/README.md) — desenhar o diagrama do fluxo
