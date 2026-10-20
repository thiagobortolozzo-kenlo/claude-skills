# whatsapp-scripts

> Escreve roteiros de mensagem para WhatsApp (vendas, suporte, recuperação de carrinho, pesquisa de satisfação) com estrutura persuasiva e CTA claro.

| | |
|---|---|
| **Área** | WhatsApp, CRM e automação |
| **Como chamar** | `/whatsapp-scripts` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

Ajuda a escrever mensagens de WhatsApp que as pessoas leem e respondem. A skill define objetivo e público, aplica estruturas de copy como AIDA (atenção, interesse, desejo, ação) e PAS (problema, agitação, solução), cria CTAs diretos e orienta a personalizar com nome e histórico do contato. Inclui roteiros prontos para lançamento, suporte, carrinho abandonado e NPS.

## Quando usar

- Precisa de um roteiro de abordagem comercial pelo WhatsApp.
- Quer padronizar as respostas do time de suporte.
- Vai enviar uma pesquisa de satisfação ou uma mensagem de recuperação.

**Exemplos de pedido:**

- "Escreve um roteiro de WhatsApp para o vendedor oferecer uma demo do Kenlo Imob a quem baixou o e-book."
- "Cria respostas padrão de suporte para as 5 dúvidas mais comuns."
- "Monta uma mensagem de NPS pós-implantação com botões de resposta."

## Como funciona

1. Define o objetivo (venda, suporte, pesquisa) e o público.
2. Escolhe a estrutura (AIDA ou PAS) para montar a narrativa.
3. Cria um CTA direto, com o próximo passo exato.
4. Personaliza e revisa para ficar curto e claro.
5. Fluxo 1: roteiro de vendas para lançamento. Fluxo 2: suporte proativo com resolução rápida.
6. Traz modelos, checklist, métricas, erros comuns e dicas (como usar botões interativos).

## O que você recebe

- Roteiros de mensagem prontos para revisão, com variações.
- Sugestões de botões de resposta rápida.
- Checklist antes do envio e métricas para acompanhar.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |

## Cuidados

- Envio em massa só para quem deu opt-in, com opção de sair (LGPD e regras do WhatsApp).
- Mensagens que iniciam conversa precisam ser templates aprovados pela Meta.
- Evite urgência falsa: promessas que não se cumprem prejudicam a qualidade do número e a marca.

## Relacionadas

- [`chatbot-whatsapp`](../chatbot-whatsapp/README.md) — coloca os roteiros num chatbot
- [`reactivation-sms-whatsapp`](../reactivation-sms-whatsapp/README.md) — campanhas de reativação
- [`copywriting`](../../02-copy-conteudo/copywriting/README.md) — fundamentos de copy persuasiva
- [`avoid-ai-writing`](../../02-copy-conteudo/avoid-ai-writing/README.md) — tira o "jeito de IA" dos textos
