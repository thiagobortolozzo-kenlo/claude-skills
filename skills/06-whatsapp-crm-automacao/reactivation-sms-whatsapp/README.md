# reactivation-sms-whatsapp

> Cria campanhas de reativação de clientes inativos e de recuperação de carrinho abandonado por SMS e WhatsApp.

| | |
|---|---|
| **Área** | WhatsApp, CRM e automação |
| **Como chamar** | `/reactivation-sms-whatsapp` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude para planejar e escrever. Para enviar: uma plataforma de mensagens (ex.: Twilio, Zenvia, Manychat) |

## Para que serve

Ajuda a trazer de volta quem parou de comprar ou abandonou uma compra. A skill orienta a separar o público inativo, criar uma oferta atraente, escrever mensagens curtas para SMS (até 160 caracteres) e WhatsApp, montar a sequência com gatilhos e intervalos e acompanhar os resultados.

## Quando usar

- Tem uma base de clientes que não compra há mais de 90 dias.
- Quer recuperar carrinhos ou cadastros abandonados rapidamente.
- Precisa de modelos de mensagem com oferta e urgência.

**Exemplos de pedido:**

- "Cria uma campanha de reativação por WhatsApp para imobiliárias que pararam de usar o portal."
- "Escreve um SMS de 160 caracteres para clientes inativos há 90 dias com uma oferta."
- "Monta a sequência de mensagens para quem começou o cadastro e não terminou."

## Como funciona

1. Identifica o segmento de inativos (ex.: 90 dias sem compra, carrinho parado há 48 horas).
2. Define a oferta de reengajamento.
3. Escreve as mensagens de SMS e WhatsApp com CTA claro.
4. Monta a sequência na plataforma de automação, com gatilhos e intervalos.
5. Testa com um grupo pequeno e acompanha entrega, cliques e conversão.
6. Traz dois fluxos completos (reativação de 90+ dias e recuperação de carrinho), modelos, checklist, métricas e erros comuns.

## O que você recebe

- Plano da campanha com segmento, oferta e sequência.
- Textos de SMS e WhatsApp prontos para revisão.
- Checklist e métricas de referência.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |

## Cuidados

- Só envie para quem deu consentimento (opt-in) e ofereça uma forma simples de sair. É exigência da LGPD e das regras do WhatsApp.
- No WhatsApp, mensagens fora da janela de 24 horas precisam de templates aprovados.
- Os exemplos da skill são de varejo; adapte as ofertas à realidade de um SaaS B2B como a Kenlo.

## Relacionadas

- [`whatsapp-scripts`](../whatsapp-scripts/README.md) — mais modelos de texto para WhatsApp
- [`sms`](../../02-copy-conteudo/sms/README.md) — boas práticas de SMS marketing
- [`churn-prevention`](../../04-anuncios-conversao-vendas/churn-prevention/README.md) — estratégia completa de retenção
- [`lgpd-compliance-check`](../../10-juridico-lgpd/lgpd-compliance-check/README.md) — confere consentimento e base legal
