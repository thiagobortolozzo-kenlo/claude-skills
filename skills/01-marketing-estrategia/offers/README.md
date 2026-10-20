# offers

> Ajuda a construir e melhorar a oferta em si (o que você vende, bônus, garantia, urgência, nome e forma de pagamento), antes de mexer no texto da página.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/offers` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Parte de uma ideia simples: um texto melhor em cima de uma oferta fraca rende pouco; uma oferta forte com texto mediano converte logo. A skill usa a "equação de valor" (resultado desejado e probabilidade de alcançar, divididos por tempo de espera e esforço) para descobrir qual alavanca está fraca, confere se a oferta tem os seis componentes de uma oferta completa e propõe mudanças honestas, sem escassez falsa nem garantia exagerada.

## Quando usar

- Uma oferta não está convertendo e você não sabe se o problema é a página ou a oferta.
- Vai criar um pacote de serviço, curso, consultoria ou proposta B2B de valor alto.
- Precisa escolher o tipo certo de garantia ou criar bônus que façam sentido.
- Quer dar nome à oferta e definir forma de pagamento.

**Exemplos de pedido:**

- "Nossa oferta de implantação assistida para imobiliárias não converte. Onde está o problema?"
- "Crie um pacote de onboarding premium da Kenlo com bônus e garantia que façam sentido."
- "Que tipo de garantia faz sentido para um contrato anual de software para imobiliárias?"

## Como funciona

1. Lê o contexto de produto, se existir, e identifica o tipo de negócio (serviço, curso, mentoria, produto digital, SaaS, agência, B2B), porque cada um tem seu manual.
2. Escreve a oferta atual em linguagem simples: nome, preço, o que inclui, garantia e prazo.
3. Dá nota de 1 a 10 às quatro alavancas da equação de valor; a mais baixa é o gargalo.
4. Audita os seis componentes: entrega principal, bônus, garantia, escassez ou urgência, nome, preço e pagamento.
5. Escolhe uma alavanca para corrigir nesta rodada e redige o componente novo.
6. Projeta o ganho com honestidade: a maioria das mudanças em um componente rende de 10% a 40%.

## O que você recebe

- Diagnóstico da oferta atual com nota por alavanca.
- Lista de componentes ausentes ou fracos.
- Componente novo redigido (bônus, garantia, urgência real, nome ou plano de pagamento).
- Projeção honesta do impacto esperado.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais: equação de valor, anatomia da oferta, ciclo de diagnóstico e o que evitar |
| `references/value-equation.md` | A equação de valor em detalhe e como diagnosticar a alavanca quebrada |
| `references/offer-anatomy.md` | Os seis componentes de uma oferta completa, com exemplos |
| `references/guarantee-design.md` | Oito tipos de garantia, como escolher e quando não oferecer nenhuma |
| `references/bonus-stacking.md` | Como usar bônus para responder objeções sem desvalorizar o principal |
| `references/scarcity-urgency.md` | Escassez e urgência reais e os padrões falsos a evitar |
| `references/offer-formats.md` | Manuais por tipo de negócio (serviço, curso, mentoria, B2B, agência, SaaS) |
| `references/saas-offers.md` | A armadilha do desconto em SaaS e quatro ofertas SaaS comentadas |
| `references/examples.md` | Seis exemplos de oferta antes e depois |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- Para SaaS com planos de assinatura (como a maior parte da Kenlo), a própria skill recomenda começar pela `pricing`; use esta para pacotes, serviços e ofertas de lançamento.
- Escassez falsa e "garantia de 100%" sem condições podem violar o Código de Defesa do Consumidor; revise com o jurídico.
- A skill evita palavras como "revolucionário" e "segredo"; mantenha isso nos textos finais.

## Relacionadas

- [`pricing`](../pricing/README.md) — nível de preço, planos e métrica de cobrança.
- [`copywriting`](../../02-copy-conteudo/copywriting/README.md) — escreve a página que apresenta a oferta.
- [`launch`](../launch/README.md) — o momento de colocar a oferta no ar.
- [`marketing-psychology`](../marketing-psychology/README.md) — os vieses que fazem uma oferta funcionar ou não.
