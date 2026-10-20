# sms

> Planeja e escreve campanhas e automações por SMS, MMS e WhatsApp, com atenção às regras de consentimento, para quem usa mensagens de celular para vender, ativar ou reter clientes.

| | |
|---|---|
| **Área** | Copy e conteúdo |
| **Como chamar** | `/sms` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. Para enviar, uma plataforma de SMS ou WhatsApp (Twilio, Klaviyo, Brevo, Customer.io etc.), configurada fora do repo |

## Para que serve

SMS e WhatsApp são lidos em minutos, mas cada envio custa dinheiro e incomoda se não for relevante. Esta skill ajuda a decidir o que vale mandar por mensagem (e o que deveria ir por e-mail), quais fluxos criar primeiro, como escrever textos curtos que cabem num SMS e como cumprir as regras de consentimento e descadastro.

## Quando usar

- Decidir se vale começar um canal de SMS ou WhatsApp e por quais fluxos.
- Escrever mensagens de boas-vindas, lembrete, pós-compra, reativação ou avisos transacionais.
- Revisar se o programa de mensagens está dentro das regras (consentimento, horário, opção de sair).

**Exemplos de pedido:**

- "Vale a pena usar SMS ou WhatsApp para lembrar o cliente de uma visita agendada?"
- "Monta um fluxo de WhatsApp para reativar imobiliárias que pararam de usar o sistema há 60 dias."
- "Escreve 3 versões de SMS de boas-vindas com no máximo 160 caracteres."

## Como funciona

1. Se existir o arquivo de contexto de produto (`.agents/product-marketing.md` ou `.claude/product-marketing.md`), o Claude lê primeiro. Depois pergunta o tipo de negócio, o país dos clientes, o que já existe hoje (plataforma, lista, e-mail), como é feito o consentimento e o objetivo.
2. **Conformidade primeiro:** verifica consentimento por escrito, aviso claro na adesão, resposta a SAIR/AJUDA, horários permitidos e registro das autorizações. Bloqueios aparecem antes de qualquer estratégia.
3. **Canal certo:** compara quando SMS ganha do e-mail (urgência, carrinho, avisos) e quando não. Para clientes fora dos EUA, explica o WhatsApp: janela de 24 horas, modelos aprovados pela Meta, cobrança por mensagem e nota de qualidade.
4. **Fluxos:** boas-vindas, carrinho abandonado, navegação abandonada, pós-compra, reativação, campanhas e transacionais, com gatilho, intervalo e texto.
5. **Texto:** identificação da marca, gancho, valor, um link curto e rodapé de descadastro. Conta caracteres (160 por SMS; emojis e acentos reduzem para 70 e aumentam o custo).
6. Recomenda plataforma e plano de medição (taxa de adesão, cliques, conversão, receita e descadastros por envio).

## O que você recebe

- Checagem de conformidade com os bloqueios em destaque.
- Estratégia com os fluxos priorizados.
- Desenho de cada fluxo: gatilho, intervalo, texto com contagem de caracteres, CTA e segmentação.
- Recomendação de plataforma, plano de métricas e fila de testes A/B.
- Textos obrigatórios de adesão e respostas para SAIR e AJUDA.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/compliance.md` | Regras de EUA (TCPA, A2P 10DLC), Europa, Canadá e Austrália, e checklist de auditoria |
| `references/sequence-templates.md` | Modelos de mensagens por fluxo, com contagem de caracteres |
| `references/platforms.md` | Comparativo de plataformas (Klaviyo, Postscript, Attentive, Twilio, Brevo, Plivo, Customer.io e outras) |
| `references/whatsapp.md` | WhatsApp Business: janela de 24h, categorias de modelo, adesão, qualidade, preços (out/2026), anúncios de clique para WhatsApp |
| `evals/evals.json` | Casos de teste para avaliar se a skill está funcionando bem |

## Cuidados

- As regras de SMS da skill são dos EUA, Europa, Canadá e Austrália. No Brasil, valem a LGPD e as regras da Anatel e das operadoras; para WhatsApp, as políticas da Meta. Valide com o jurídico antes de lançar.
- Número de telefone é dado pessoal: só envie para quem autorizou e ofereça sempre como sair.
- Os preços de plataformas e do WhatsApp mudam com frequência. Confirme no site do fornecedor.
- A skill planeja e escreve; ela não dispara mensagens.

## Relacionadas

- [`emails`](../emails/README.md) — canal irmão; o e-mail leva o conteúdo longo, o SMS o lembrete urgente
- [`whatsapp-scripts`](../../06-whatsapp-crm-automacao/whatsapp-scripts/README.md) — roteiros de conversa no WhatsApp
- [`reactivation-sms-whatsapp`](../../06-whatsapp-crm-automacao/reactivation-sms-whatsapp/README.md) — campanhas de reativação por SMS e WhatsApp
- [`lgpd-compliance-check`](../../10-juridico-lgpd/lgpd-compliance-check/README.md) — checar o uso de dados de contato pela LGPD
