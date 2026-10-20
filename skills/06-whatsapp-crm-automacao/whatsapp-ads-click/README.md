# whatsapp-ads-click

> Monta e otimiza anúncios que levam a pessoa direto para uma conversa no WhatsApp (Click-to-WhatsApp), no Meta Ads e no Google Ads.

| | |
|---|---|
| **Área** | WhatsApp, CRM e automação |
| **Como chamar** | `/whatsapp-ads-click` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude para planejar. Para executar: conta de WhatsApp Business ligada ao Gerenciador de Negócios da Meta e acesso ao Gerenciador de Anúncios ou Google Ads |

## Para que serve

Ensina a criar campanhas cujo objetivo é abrir uma conversa no WhatsApp em vez de mandar a pessoa para um site. Cobre a ligação do WhatsApp Business ao Gerenciador de Negócios, a configuração da campanha no Meta, extensões de mensagem no Google, a mensagem automática de boas-vindas e as métricas, como custo por conversa.

## Quando usar

- Quer gerar leads que já chegam conversando no WhatsApp.
- O time comercial atende melhor pelo WhatsApp do que por formulário.
- Precisa reduzir o custo por conversa de uma campanha existente.

**Exemplos de pedido:**

- "Cria uma campanha no Meta que leva imobiliárias direto para o WhatsApp comercial da Kenlo."
- "Escreve o texto do anúncio e a mensagem de boas-vindas no WhatsApp."
- "Meu custo por conversa está alto. O que eu ajusto?"

## Como funciona

1. Liga o número de WhatsApp Business ao Gerenciador de Negócios da Meta.
2. Cria a campanha no Meta com destino "app de mensagens / WhatsApp".
3. Configura a extensão de mensagem ou ligação no Google Ads.
4. Testa a mensagem automática de boas-vindas antes de lançar.
5. Fluxo 1: criação e otimização de campanha no Meta. Fluxo 2: aceleração de vendas com extensões de WhatsApp no Google.
6. Traz modelos de anúncio e de boas-vindas, checklist, métricas e erros comuns.

## O que você recebe

- Passo a passo de configuração da campanha.
- Textos de anúncio e mensagem de boas-vindas.
- Checklist e métricas de referência (custo por conversa, taxa de resposta).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |

## Cuidados

- Tenha alguém (ou um bot) pronto para responder rápido: conversa sem resposta desperdiça verba.
- Os nomes de menus das plataformas mudam com frequência; confira na interface atual.
- Revise os textos com o time de marca antes de publicar.

## Relacionadas

- [`ads`](../../04-anuncios-conversao-vendas/ads/README.md) — estratégia geral de mídia paga
- [`chatbot-whatsapp`](../chatbot-whatsapp/README.md) — automatiza o atendimento das conversas geradas
- [`whatsapp-scripts`](../whatsapp-scripts/README.md) — roteiros para conduzir a conversa até a venda
- [`ad-creative`](../../04-anuncios-conversao-vendas/ad-creative/README.md) — variações de criativo em escala
