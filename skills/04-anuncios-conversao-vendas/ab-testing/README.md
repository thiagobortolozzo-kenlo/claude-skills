# ab-testing

> Ajuda a planejar, rodar e ler testes A/B (e programas contínuos de experimentação) para quem quer saber, com dados, qual versão funciona melhor.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/ab-testing` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. Para rodar o teste de verdade você precisa de uma ferramenta de testes (ex.: PostHog, Optimizely, VWO) |

## Para que serve

Evita o "achismo" na hora de mudar uma página, um botão ou um texto. A skill monta uma hipótese bem escrita, calcula quanto tráfego e quanto tempo o teste precisa, define o que medir e explica como interpretar o resultado sem cair em armadilhas estatísticas. Também ajuda a montar um programa de experimentos com backlog e priorização.

## Quando usar

- Você quer comparar duas versões de um título, CTA ou página e saber qual converte mais.
- Precisa saber se tem tráfego suficiente para testar algo (e por quantas semanas).
- O time quer criar uma rotina de experimentos com backlog priorizado.

**Exemplos de pedido:**

- "Quero testar dois títulos na home. Temos 15 mil visitas por mês e 3% de cadastro. Como faço?"
- "Vale a pena testar 4 cores de botão na página de preços?"
- "Monta um backlog de experimentos para a landing de captação de imobiliárias da Kenlo, com nota ICE."

## Como funciona

1. Se existir um arquivo de contexto do produto (`.agents/product-marketing.md`), o Claude lê primeiro; depois pergunta o que você quer melhorar, a taxa de conversão atual e o volume de tráfego.
2. Escreve a hipótese no formato "Porque [observação], acreditamos que [mudança] vai causar [resultado] para [público]".
3. Escolhe o tipo de teste (A/B, A/B/n, multivariado, split de URL) e estima o tamanho de amostra e a duração.
4. Define métrica principal, métricas secundárias e métricas de proteção (as que não podem piorar).
5. Dá um checklist de pré-lançamento, orienta a não "espiar" o resultado antes da hora e explica como ler significância e intervalos de confiança.
6. Para programas contínuos: gera hipóteses, prioriza com ICE (Impacto, Confiança, Facilidade) e registra os aprendizados num playbook.

## O que você recebe

- Plano de teste estruturado (hipótese, variantes, métricas, amostra, duração).
- Checklist de pré-lançamento e de análise.
- Leitura do resultado com a decisão recomendada.
- Templates de documentação, backlog de hipóteses e atualização para stakeholders.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/sample-size-guide.md` | Tabelas de tamanho de amostra, cálculo de duração, testes sequenciais |
| `references/test-templates.md` | Modelos de plano de teste, registro de resultado, scorecard de priorização e banco de hipóteses |
| `evals/evals.json` | Casos de teste usados para verificar se a skill responde bem |

## Cuidados

- A skill planeja e interpreta; ela não configura a ferramenta de teste nem coleta os dados por você.
- Com pouco tráfego, o resultado pode levar meses para ser confiável. Às vezes a recomendação será "não teste, faça uma mudança mais ousada".
- Revise os números de amostra em uma calculadora (ex.: Evan Miller) antes de se comprometer com prazos.

## Relacionadas

- [`cro`](../cro/README.md) — gera as ideias de melhoria que viram hipóteses de teste
- [`analytics`](../analytics/README.md) — garante que os eventos do teste estão sendo medidos
- [`copywriting`](../../02-copy-conteudo/copywriting/README.md) — escreve os textos das variantes
