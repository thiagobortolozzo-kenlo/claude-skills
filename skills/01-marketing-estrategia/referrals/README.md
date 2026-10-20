# referrals

> Desenha e otimiza programas de indicação ("indique um amigo") e de afiliados, para transformar clientes e parceiros em fonte de novos clientes.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/referrals` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Ajuda a decidir entre um programa de indicação (clientes indicando clientes) e um programa de afiliados (parceiros e criadores ganhando comissão), e a montar o ciclo completo: o momento certo de pedir a indicação, o jeito mais fácil de compartilhar, a recompensa, a conversão de quem foi indicado e a medição. Antes de tudo, verifica se o próprio produto pode gerar divulgação natural, o que costuma ser mais barato que pagar por indicações.

## Quando usar

- Você quer criar um programa para clientes indicarem outras imobiliárias.
- Já tem um programa, mas poucas pessoas indicam ou as indicações não convertem.
- Quer montar um programa de afiliados com consultores, parceiros ou criadores.
- Precisa definir valor e formato da recompensa e regras contra fraude.

**Exemplos de pedido:**

- "Crie um programa de indicação para imobiliárias clientes da Kenlo indicarem outras imobiliárias."
- "Qual é a melhor recompensa: desconto na mensalidade, crédito ou dinheiro?"
- "Monte um programa de afiliados para consultores do mercado imobiliário que revendem a Kenlo."

## Como funciona

1. Lê o contexto de produto, se existir, e pergunta: tipo de programa, B2B ou B2C, LTV, CAC atual, programa existente, recompensas já testadas, ferramentas e orçamento.
2. Avalia o potencial viral do produto e sugere mecanismos embutidos (selo "feito com", compartilhamento, convites) quando fizer sentido.
3. Desenha o ciclo de indicação: momento de pedir (logo depois do primeiro resultado, de um marco ou de um bom atendimento), forma de compartilhar, tipo de recompensa (um lado, dois lados, em níveis).
4. Propõe otimizações e testes A/B para recompensa, mensagem e posicionamento.
5. Define métricas, checklist de lançamento e sequência de e-mails.
6. Para afiliados, detalha comissão, duração do cookie, recrutamento, apoio aos afiliados e prevenção de fraude.

## O que você recebe

- Desenho do programa (tipo, gatilhos, mecanismo de compartilhamento, recompensa).
- Checklist de antes, durante e depois do lançamento.
- E-mail de lançamento do programa e sequência de lembretes.
- Plano de testes e tabela de problemas comuns com correção.
- Métricas de saúde do programa e de impacto no negócio.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/viral-mechanisms.md` | Espectro de potencial viral, os 7 mecanismos virais e a dinâmica dos afiliados |
| `references/program-examples.md` | Casos de programas de indicação (Dropbox, Uber, Morning Brew, Notion) e como dimensionar a recompensa |
| `references/affiliate-programs.md` | Como desenhar um programa de afiliados: comissões, cookie, recrutamento, ferramentas e fraude |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- Os números de referência (LTV maior, churn menor de clientes indicados) são de estudos estrangeiros; meça os da Kenlo.
- Programas com recompensa precisam de regulamento e termos claros; passe pelo jurídico e pelo financeiro.
- Ferramentas citadas (Rewardful, Tolt, PartnerStack e outras) são em sua maioria internacionais; a skill não se conecta a elas.
- Indicações envolvem dados de terceiros (quem foi indicado); siga a LGPD.

## Relacionadas

- [`co-marketing`](../co-marketing/README.md) — parcerias com outras empresas, no nível de estratégia.
- [`influencer-marketing`](../influencer-marketing/README.md) — criadores e embaixadores que podem virar afiliados.
- [`community-marketing`](../community-marketing/README.md) — defensores orgânicos e comunidade.
- [`emails`](../../02-copy-conteudo/emails/README.md) — sequências de lembrete do programa.
