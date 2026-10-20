# paywalls

> Cria e otimiza telas de upgrade, paywalls e bloqueios de recurso dentro do produto, para converter usuários gratuitos ou em trial em pagantes.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/paywalls` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Paywall é o momento em que o produto pede para o usuário pagar ou subir de plano: ao tentar usar um recurso bloqueado, ao bater um limite de uso ou quando o trial acaba. A skill define quando mostrar essas telas, o que colocar nelas e como evitar que irritem, sempre mostrando valor antes de pedir dinheiro.

## Quando usar

- Usuários do plano gratuito não sobem de plano.
- Vai criar a tela de "limite atingido" ou de "fim do período de teste".
- Quer revisar a frequência e o momento em que o produto oferece upgrade.

**Exemplos de pedido:**

- "Desenha a tela de fim de trial para o nosso SaaS."
- "Os usuários batem no limite de imóveis cadastrados e não fazem upgrade. O que mudo na tela?"
- "Quantas vezes por semana posso mostrar a oferta de upgrade sem incomodar?"

## Como funciona

1. Pergunta o modelo de preço, os planos, onde os usuários travam e os números atuais.
2. Aplica quatro princípios: valor antes do pedido, mostrar em vez de só dizer, caminho sem atrito e respeitar o "não".
3. Mapeia os pontos de gatilho (recurso bloqueado, limite de uso, fim do trial, tempo de uso).
4. Detalha os componentes da tela e modelos para cada tipo de paywall.
5. Define regras de momento e frequência e o fluxo do paywall até o pagamento.
6. Sugere testes A/B e alerta para práticas enganosas a evitar.

## O que você recebe

- Desenho e textos das telas de upgrade.
- Regras de quando mostrar e quando não mostrar.
- Lista de testes e métricas a acompanhar.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/experiments.md` | Banco de experimentos para paywalls e telas de upgrade |
| `evals/evals.json` | Casos de teste da skill |

## Cuidados

- A skill desaconselha "dark patterns" (botão de fechar escondido, culpa no texto, cobrança surpresa). Mantenha isso: além de ruim para a marca, pode gerar problema com o Código de Defesa do Consumidor.
- Revise preços e condições com o time comercial antes de publicar.

## Relacionadas

- [`onboarding`](../onboarding/README.md) — leva o usuário ao valor antes do pedido de upgrade
- [`churn-prevention`](../churn-prevention/README.md) — retenção depois que o cliente paga
- [`pricing`](../../01-marketing-estrategia/pricing/README.md) — estrutura de planos e preços
- [`ab-testing`](../ab-testing/README.md) — testa variações da tela
