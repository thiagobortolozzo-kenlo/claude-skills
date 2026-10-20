# n8n-workflow

> Ajuda a projetar, configurar e corrigir workflows no n8n, a ferramenta de automação que liga sistemas sem precisar programar tudo.

| | |
|---|---|
| **Área** | WhatsApp, CRM e automação |
| **Como chamar** | `/n8n-workflow` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Uma instância do n8n (a skill sugere Docker) e as credenciais dos serviços conectados (ex.: Google Sheets, Slack, Telegram), cadastradas no próprio n8n ou em variáveis de ambiente, nunca no repositório |

## Para que serve

Ensina a montar workflows no n8n do jeito certo: gatilhos (webhook, agendamento), nós de processamento, expressões, transformação de dados com JavaScript, credenciais, tratamento de erros e sub-workflows. Traz exemplos completos e dicas para fluxos que aguentam volume.

## Quando usar

- Vai criar a primeira automação no n8n e não sabe por onde começar.
- Um workflow está dando erro e você precisa entender o que acontece entre os nós.
- Quer organizar fluxos grandes em partes reutilizáveis.

**Exemplos de pedido:**

- "Cria um workflow no n8n que recebe leads do site por webhook, salva no Google Sheets e avisa no Slack."
- "Meu nó HTTP Request está falhando com erro 401. O que reviso?"
- "Como divido o envio de 1.000 e-mails em lotes de 50 no n8n?"

## Como funciona

1. Quick start: instalar o n8n, criar o primeiro workflow com webhook, adicionar um nó de código, testar com uma requisição e ativar.
2. Fluxo 1: captura de leads por webhook, gravação no Google Sheets e aviso no Slack.
3. Fluxo 2: monitoramento de disponibilidade de produto com aviso por Telegram.
4. Modelos prontos: webhook para Discord e função JavaScript para filtrar e transformar dados.
5. Checklist, métricas de referência, erros comuns e dicas avançadas (lotes, variáveis de ambiente, sub-workflows).

## O que você recebe

- Desenho do workflow nó a nó, com configurações.
- Trechos de código e expressões prontos para colar.
- Checklist de testes e de ativação.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |

## Cuidados

- Teste com dados fictícios antes de ativar o workflow; depois de ativo, ele roda sozinho.
- Webhooks públicos podem ser chamados por qualquer pessoa: proteja com autenticação.
- Não exporte workflows com credenciais embutidas para repositórios ou para outras pessoas.

## Relacionadas

- [`n8n-workflow-patterns`](../n8n-workflow-patterns/README.md) — padrões de arquitetura para escolher a estrutura do fluxo
- [`crm-automation`](../crm-automation/README.md) — automações de CRM que podem rodar no n8n
- [`chatbot-whatsapp`](../chatbot-whatsapp/README.md) — chatbot de WhatsApp montado com n8n
- [`airflow-dag-patterns`](../../12-dados-engenharia/airflow-dag-patterns/README.md) — para pipelines de dados mais pesados
