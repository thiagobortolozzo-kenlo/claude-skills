# chatbot-whatsapp

> Ajuda a projetar e montar chatbots de WhatsApp com ferramentas no-code/low-code (Make, n8n, Zapier) e IA, para atendimento e vendas.

| | |
|---|---|
| **Área** | WhatsApp, CRM e automação |
| **Como chamar** | `/chatbot-whatsapp` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Acesso à WhatsApp Business API (via provedor BSP ou Meta Cloud API), uma ferramenta de automação (Make, n8n ou Zapier) e, para respostas com IA, uma chave de API de IA. Tokens e chaves ficam em variáveis de ambiente ou nas credenciais da ferramenta, nunca no repositório |

## Para que serve

Mostra o caminho para ter um chatbot funcionando no WhatsApp: receber mensagens por webhook, processar com IA, responder, usar botões e enviar mensagens ativas com templates aprovados pela Meta. Traz fluxos passo a passo, modelos de mensagem, checklist, métricas de referência e os erros mais comuns.

## Quando usar

- Quer um bot de atendimento que responda dúvidas frequentes no WhatsApp.
- Precisa enviar notificações automáticas (ex.: lembretes) a partir de uma planilha.
- O bot atual não recebe mensagens e você suspeita do webhook.

**Exemplos de pedido:**

- "Como monto um chatbot de suporte no WhatsApp com Make e IA?"
- "Cria um fluxo no n8n que manda lembrete de visita agendada pelo WhatsApp a partir do Google Sheets."
- "Desenha o menu de boas-vindas com botões para o WhatsApp da imobiliária."

## Como funciona

1. Começa pelo acesso à WhatsApp Business API e pela configuração do webhook no Make ou n8n.
2. Monta um fluxo de resposta simples e testa a conexão.
3. Fluxo 1: chatbot de suporte com Make e IA, que recebe a mensagem, gera a resposta e devolve pelo WhatsApp.
4. Fluxo 2: mensagens ativas com n8n e Google Sheets, usando templates aprovados.
5. Entrega modelos de mensagem (boas-vindas com botões, notificação), checklist e métricas.
6. Lista erros comuns: token de verificação do webhook, janela de 24 horas e limites de envio.

## O que você recebe

- Passo a passo do fluxo de automação escolhido.
- Modelos de mensagem e de template para aprovação na Meta.
- Checklist de implantação e métricas de referência.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |

## Cuidados

- Fora da janela de 24 horas após a última mensagem do cliente, só é possível enviar templates aprovados (e pagos).
- Mensagens ativas exigem opt-in do cliente, conforme a LGPD e as regras do WhatsApp.
- Bots com IA podem errar: deixe sempre uma opção de falar com uma pessoa e revise as respostas antes de ir ao ar.
- As chamadas de API de IA e as mensagens de template têm custo.

## Relacionadas

- [`whatsapp-cloud-api`](../whatsapp-cloud-api/README.md) — integração técnica direta com a API oficial
- [`whatsapp-scripts`](../whatsapp-scripts/README.md) — textos das mensagens do bot
- [`n8n-workflow`](../n8n-workflow/README.md) — montagem dos fluxos no n8n
- [`crm-automation`](../crm-automation/README.md) — liga o bot ao CRM
