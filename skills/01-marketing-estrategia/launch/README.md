# launch

> Planeja o lançamento de um produto, funcionalidade ou site, do teste interno ao anúncio público, para quem vai colocar algo novo no ar.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/launch` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude (para gerar changelog a partir do código, precisa de acesso ao repositório do produto) |

## Para que serve

Organiza o lançamento como um processo em fases, e não como um dia só. Usa o modelo ORB (canais próprios, alugados e emprestados) para que toda atenção conquistada volte para canais que a empresa controla, como e-mail e site. Também ajuda a decidir quanto barulho cada atualização merece e a transformar o que foi entregue pelo time de produto em anúncios e notas de versão.

## Quando usar

- Vai lançar um produto ou funcionalidade nova e precisa de um plano.
- Quer saber se o produto está pronto para lançar ou se está adiando demais.
- Vai lançar no Product Hunt ou abrir uma lista de espera ou beta.
- Precisa transformar as entregas da semana em changelog e anúncios.
- Vai lançar um site novo ou migrar o site e quer um checklist de QA.

**Exemplos de pedido:**

- "Planeje o lançamento do novo módulo de locação da Kenlo para a base de clientes."
- "Essa atualização merece campanha completa ou só nota no changelog?"
- "Monte o checklist de pré-lançamento, dia do lançamento e pós-lançamento."

## Como funciona

1. Lê o contexto de produto, se existir, e pergunta: o que será lançado, tamanho da audiência, canais próprios, prazo e lançamentos anteriores.
2. Aplica o "portão de prontidão" SLC (Simples, Amável, Completo) para evitar lançar cedo demais ou adiar para sempre.
3. Distribui as ações pelos canais próprios, alugados e emprestados.
4. Planeja as cinco fases: interno, alfa, beta, acesso antecipado e lançamento completo.
5. Se for usar Product Hunt, prepara antes, durante e depois do dia.
6. Planeja o pós-lançamento (onboarding, páginas de comparação, demo interativa) e a classificação das próximas atualizações em grandes, médias e pequenas.

## O que você recebe

- Plano de lançamento por fases com ações e objetivos.
- Mapa de canais (próprios, alugados, emprestados).
- Checklist de pré-lançamento, dia do lançamento e pós-lançamento.
- Plano para Product Hunt, quando fizer sentido.
- Changelog semanal e rascunhos de anúncio gerados a partir das entregas, quando o Claude tem acesso ao repositório.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/shipped-changes.md` | Como transformar entregas do código (pull requests) em changelog, anúncios e lista de páginas a atualizar, sem prometer o que não foi entregue |
| `references/site-launch-qa.md` | Checklist de QA para lançamento ou migração de site (antes, na virada e nas duas primeiras semanas) |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- Os casos citados (Superhuman, Notion, Product Hunt) são de startups americanas; para o público de imobiliárias, priorize canais próprios e eventos do setor.
- Anúncios gerados a partir do código precisam ser revisados pelo time de produto antes de sair.
- A skill planeja; não envia e-mails nem publica posts.

## Relacionadas

- [`market-launch`](../market-launch/README.md) — playbook de lançamento detalhado da suíte market, com cronograma e e-mails.
- [`offers`](../offers/README.md) — monta a oferta que vai ser lançada.
- [`emails`](../../02-copy-conteudo/emails/README.md) — sequências de lançamento e onboarding.
- [`co-marketing`](../co-marketing/README.md) — lançar junto com parceiros.
