# whatsapp-cloud-api

> Integração técnica com a WhatsApp Business Cloud API oficial da Meta: envio de mensagens, templates, webhooks seguros e automação de atendimento, com projetos prontos em Node.js e Python.

| | |
|---|---|
| **Área** | WhatsApp, CRM e automação |
| **Como chamar** | `/whatsapp-cloud-api` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português (com trechos em inglês) |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Conta Meta Business, app no Meta for Developers com o produto WhatsApp, número verificado e as variáveis de ambiente `WHATSAPP_TOKEN`, `PHONE_NUMBER_ID`, `WABA_ID`, `APP_SECRET` e `VERIFY_TOKEN` (num arquivo `.env` fora do repositório, nunca commitado). Para os scripts: Python com `httpx`; para o boilerplate: Node.js ou Python. Em desenvolvimento, ngrok para expor o webhook |

## Para que serve

É a skill para quando o time de desenvolvimento vai integrar o WhatsApp diretamente com a API oficial, sem plataforma intermediária. Ela explica todos os tipos de mensagem (texto, template, mídia, botões, listas, localização), como receber mensagens por webhook validando a assinatura HMAC-SHA256, como gerenciar templates, como montar um menu e uma máquina de estados para o atendimento e como ligar o bot a uma IA. Também cobre custos, limites de envio e regras de qualidade.

## Quando usar

- O time vai construir um atendimento próprio no WhatsApp da empresa.
- Precisa enviar notificações por template (ex.: confirmação, lembrete) a partir de um sistema.
- O webhook não recebe mensagens ou a API devolve erro 401/400.

**Exemplos de pedido:**

- "Cria um projeto Node.js que recebe mensagens do WhatsApp e responde com um menu."
- "Como envio um template aprovado avisando o inquilino que o boleto vence amanhã?"
- "Valida a minha configuração da WhatsApp Cloud API."

## Como funciona

1. Usa uma árvore de decisão: se for setup inicial, segue o guia de criação de conta; senão, pergunta a linguagem e o objetivo.
2. Para projeto novo, o script `setup_project.py` copia o boilerplate (Node.js ou Python) e cria o `.env` a partir do exemplo.
3. Mostra como enviar texto, templates e mensagens interativas, com exemplos nas duas linguagens.
4. Configura o webhook: verificação inicial (GET) e recebimento (POST) com validação da assinatura.
5. Orienta a automação: menu, máquina de estados, janela de 24 horas e integração com IA mantendo a passagem para humano.
6. Cobre recursos avançados (Flows, catálogo, canais, anúncios Click-to-WhatsApp, status de entrega), compliance e solução de problemas.

## O que você recebe

- Código de exemplo e projeto base pronto para rodar (Express/TypeScript ou Flask).
- Scripts para validar credenciais e enviar uma mensagem de teste.
- Exemplos de payload JSON (templates, menus, webhooks, Flows).
- Checklist de compliance e tabela de solução de problemas.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/setup-guide.md` | Criar conta Meta e configurar a API do zero |
| `references/message-types.md` | Exemplos completos de todos os tipos de mensagem |
| `references/webhook-setup.md` | Webhooks com validação HMAC |
| `references/automation-patterns.md` | Chatbot, filas, máquina de estados e IA |
| `references/template-management.md` | Criar, listar e apagar templates via API |
| `references/advanced-features.md` | Flows, catálogo, canais, anúncios e status |
| `references/compliance.md` | LGPD/GDPR, opt-in, qualidade e limites de envio |
| `references/api-reference.md` | Endpoints, erros, limites e preços |
| `scripts/setup_project.py` | Cria um projeto a partir do boilerplate |
| `scripts/validate_config.py` | Verifica variáveis de ambiente e conexão com a API |
| `scripts/send_test_message.py` | Envia uma mensagem de teste |
| `assets/boilerplate/nodejs/` | Projeto base em TypeScript/Express |
| `assets/boilerplate/python/` | Projeto base em Python/Flask |
| `assets/examples/` | Exemplos de JSON: templates, menu interativo, webhooks e Flow |

## Cuidados

- O token do WhatsApp dá acesso ao número da empresa: guarde no `.env`, nunca no código ou no Git, e use System User Token em produção.
- Mensagens de template são cobradas por categoria (marketing, utilidade, autenticação). Os preços e limites citados são de 2026 e podem mudar.
- Só envie para quem deu opt-in, ofereça saída (ex.: "SAIR") e registre o consentimento, conforme a LGPD.
- Os scripts acessam apenas a API oficial (`graph.facebook.com`). Revise o código antes de rodar.

## Relacionadas

- [`chatbot-whatsapp`](../chatbot-whatsapp/README.md) — alternativa no-code com Make ou n8n
- [`whatsapp-scripts`](../whatsapp-scripts/README.md) — textos das mensagens e templates
- [`lgpd-compliance-check`](../../10-juridico-lgpd/lgpd-compliance-check/README.md) — revisão de consentimento e dados pessoais
- [`n8n-workflow`](../n8n-workflow/README.md) — orquestrar a integração com outros sistemas
