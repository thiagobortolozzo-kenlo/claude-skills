# market-launch

> Gera um playbook de lançamento semana a semana, com tarefas, e-mails, posts, imprensa, parceiros e métricas, pronto para executar.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/market-launch` — ou peça em linguagem natural (ver exemplos); também é acionada por `/market launch <produto>` |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Transforma "vamos lançar algo" em um plano tático de 8 semanas: base (posicionamento, landing page, rastreamento), construção de audiência, aquecimento, semana do lançamento dia a dia e pós-lançamento. Já entrega os modelos de e-mail, posts para cada rede, release para imprensa, roteiro com parceiros, painel de métricas e divisão de orçamento.

## Quando usar

- Você tem uma data de lançamento e precisa de um cronograma com tarefas.
- Quer os textos de e-mail e redes sociais já estruturados para o lançamento.
- Precisa coordenar parceiros e imprensa no mesmo calendário.
- Quer uma retrospectiva organizada depois do lançamento.

**Exemplos de pedido:**

- "/market launch novo aplicativo da Kenlo para corretores"
- "Monte o playbook de lançamento de uma nova funcionalidade da Kenlo, com lançamento em 6 semanas."
- "Preciso de um plano de lançamento com orçamento baixo, só com e-mail e redes."

## Como funciona

1. Pergunta o contexto: o que será lançado, público, objetivo, data, canais disponíveis, preço, clientes existentes e orçamento.
2. Escolhe o tipo de lançamento (Product Hunt, lista de e-mail, redes sociais, anúncios pagos, comunidade, parceiros ou híbrido).
3. Monta a linha do tempo de 8 semanas, contando para trás a partir da data.
4. Detalha a semana do lançamento dia a dia: acesso VIP, anúncio público, prova social, objeções, urgência e encerramento.
5. Escreve as sequências de e-mail (3 de pré-lançamento e 4 de lançamento) e modelos de post para X, LinkedIn e Instagram.
6. Inclui release e e-mail para jornalistas, cronograma com parceiros, painel de métricas, divisão de orçamento por faixa e roteiro de retrospectiva.

## O que você recebe

- Arquivo `LAUNCH-PLAYBOOK.md` com plano semana a semana em checklist, sequências de e-mail, posts por plataforma, plano de parceiros e influenciadores, checklist do dia do lançamento, painel de métricas, orçamento e plano de pós-lançamento.
- Uma versão "lançamento mínimo viável" para quem tem poucos recursos.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais: os 11 passos do playbook, modelos e formato de saída |

A pasta [`../market/templates/`](../market/templates/) tem modelos complementares da suíte, como `launch-checklist.md` e `email-launch.md`.

## Cuidados

- As faixas de orçamento estão em dólar; converta e ajuste à realidade da Kenlo.
- Os modelos de urgência (preço promocional, vagas limitadas) só devem ser usados se forem verdadeiros.
- Os textos são modelos para adaptar; revise tom de voz e promessas antes de enviar ou publicar.

## Relacionadas

- [`launch`](../launch/README.md) — estratégia de lançamento em fases e modelo de canais (próprios, alugados, emprestados).
- [`offers`](../offers/README.md) — monta a oferta de lançamento com bônus e garantia honestos.
- [`market-emails`](../../02-copy-conteudo/market-emails/README.md) — aprofunda as sequências de e-mail.
- [`public-relations`](../public-relations/README.md) — imprensa e pauta para o lançamento.
