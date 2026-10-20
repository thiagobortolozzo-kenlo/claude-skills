# prospecting

> Encontra, qualifica e organiza listas de prospects (empresas e contatos) prontas para abordagem, em vendas SaaS, B2B ou negócios locais.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/prospecting` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude para pesquisa manual em fontes públicas. Fica muito mais rápido com ferramentas de dados como Apollo, Clay, ZoomInfo ou Hunter (conectores ou contas próprias) |

## Para que serve

Transforma a definição do cliente ideal (ICP) em uma planilha de leads verificada e pontuada. A skill escolhe o caminho certo para o tipo de venda (SaaS, B2B tradicional, pequenos negócios locais ou busca dos primeiros clientes por sinais públicos), define onde buscar, como qualificar, como priorizar e como pesquisar uma conta antes do contato.

## Quando usar

- Precisa montar uma lista de empresas-alvo para o time de vendas.
- Quer achar contas com sinais de compra (contratando, recebeu investimento, trocou de fornecedor).
- Vai fazer uma reunião e quer pesquisar a conta antes.

**Exemplos de pedido:**

- "Monta uma lista de 50 imobiliárias de médio porte em Campinas que ainda não usam CRM."
- "Quais sinais indicam que uma imobiliária está pronta para trocar de sistema?"
- "Pesquisa essa empresa antes da minha reunião de amanhã."

## Como funciona

1. Pergunta o contexto e escolhe o ramo: SaaS, B2B, local ou sinais de demanda.
2. Fase 1: define o ICP (setor, porte, região, tecnologia, sinais).
3. Fase 2: monta a lista de candidatos combinando fontes.
4. Fase 3: qualifica cada candidato e verifica e-mails.
5. Fase 4: pontua e prioriza.
6. Fase 5: entrega a planilha, sempre com a fonte e a data de cada contato.

## O que você recebe

- Tabela no chat ou arquivo CSV (acima de 25 linhas) com empresa, contato, cargo, e-mail verificado, sinal, nota, motivo e fontes.
- Resumo com próximos passos e alertas de qualidade.
- Dossiê de conta, quando pedido.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/` | 9 guias: prospecção SaaS, B2B e local, sinais de demanda, jogadas por sinal, fontes de dados, coleta e enriquecimento, pesquisa de contas e compliance |
| `evals/evals.json` | Casos de teste da skill |

## Cuidados

- A skill não faz raspagem em massa de LinkedIn ou Google Maps (viola os termos de uso e pode bloquear contas). O navegador é usado só para pesquisa assistida.
- Dados de contato são dados pessoais: guarde fonte e data, use só para a sua própria abordagem e siga a LGPD. Não revenda listas.
- Sempre verifique os e-mails antes de colocar em uma sequência de envio.

## Relacionadas

- [`cold-email`](../../02-copy-conteudo/cold-email/README.md) — escreve a abordagem para a lista
- [`sales-enablement`](../sales-enablement/README.md) — materiais de apoio para o contato
- [`revops`](../revops/README.md) — distribuição dos leads e registro no CRM
- [`lgpd-compliance-check`](../../10-juridico-lgpd/lgpd-compliance-check/README.md) — confere o uso de dados pessoais
