# churn-prevention

> Ajuda a reduzir cancelamentos: fluxo de cancelamento com ofertas de retenção, sinais de risco e recuperação de pagamentos que falharam.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/churn-prevention` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. A implementação usa a plataforma de cobrança (ex.: Stripe, Chargebee) ou ferramentas de retenção (ex.: Churnkey, ProsperStack) |

## Para que serve

Churn é a perda de clientes que cancelam a assinatura. A skill trata os dois tipos: o voluntário (o cliente decide sair) e o involuntário (o cartão falhou e ninguém percebeu). Ela desenha o fluxo de cancelamento com pesquisa de saída e ofertas sob medida, define sinais de risco para agir antes, e monta a sequência de cobrança e lembretes para recuperar pagamentos.

## Quando usar

- Muitos clientes estão cancelando e você quer entender por quê.
- Precisa criar a tela e o fluxo de cancelamento com oferta de pausa ou desconto.
- Pagamentos recusados estão virando cancelamentos sem ninguém perceber.

**Exemplos de pedido:**

- "Nosso churn mensal está em 6%. Por onde começo?"
- "Desenha um fluxo de cancelamento com pesquisa de saída e ofertas de retenção."
- "Monta uma sequência de e-mails para imobiliárias com boleto ou cartão recusado."

## Como funciona

1. Pergunta a situação atual (taxa de churn, motivos conhecidos), a plataforma de cobrança, os dados de uso e as restrições.
2. Desenha o fluxo de cancelamento: pesquisa de saída, oferta dinâmica conforme o motivo (pausa, desconto, troca de plano) e confirmação.
3. Define sinais de risco e um modelo simples de saúde do cliente para intervir antes do cancelamento.
4. Monta a estratégia de recuperação de pagamento: prevenção, novas tentativas inteligentes e e-mails de cobrança.
5. Indica as métricas a acompanhar e testes A/B para o fluxo de cancelamento.

## O que você recebe

- Desenho do fluxo de cancelamento com textos e ofertas.
- Lista de sinais de risco e ações proativas.
- Sequência de e-mails de cobrança e regras de nova tentativa.
- Métricas e referências de recuperação.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/cancel-flow-patterns.md` | Padrões de fluxo de cancelamento e ofertas de retenção |
| `references/dunning-playbook.md` | Guia completo de recuperação de pagamentos falhos |
| `evals/evals.json` | Casos de teste da skill |

## Cuidados

- Não dificulte o cancelamento a ponto de virar prática enganosa; o Código de Defesa do Consumidor exige que o cliente consiga cancelar com facilidade.
- Benchmarks citados vêm de mercados SaaS em geral; valide com os seus dados.
- Revise com financeiro e jurídico antes de oferecer descontos ou pausas.

## Relacionadas

- [`client-health-score`](../../11-financas-customer-success/client-health-score/README.md) — score de saúde para detectar risco cedo
- [`onboarding`](../onboarding/README.md) — boa ativação evita churn precoce
- [`paywalls`](../paywalls/README.md) — telas de upgrade e fim de trial
- [`emails`](../../02-copy-conteudo/emails/README.md) — sequências de reconquista depois do cancelamento
