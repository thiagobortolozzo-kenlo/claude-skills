# public-relations

> Ajuda a conseguir espaço na imprensa, em podcasts e newsletters, e a responder a crises, com pautas, pitches para jornalistas e notas oficiais.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/public-relations` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude (acesso à web ajuda a pesquisar jornalistas, notícias e podcasts) |

## Para que serve

Trata assessoria de imprensa como multiplicador de distribuição, não como fonte direta de vendas: matéria traz autoridade, links, citações em assistentes de IA e argumento para o time comercial. A skill cobre quatro frentes (reagir a notícias do momento, propor pautas, responder pedidos de jornalistas e manter uma sala de imprensa) e também o lado de crise: vazamento de dados, falha no serviço, reclamação viral.

## Quando usar

- Você tem um dado, um marco ou uma história e quer saber se rende matéria.
- Quer aproveitar uma notícia do setor imobiliário para posicionar a Kenlo.
- Vai participar de um podcast e quer se preparar.
- Precisa montar a página de imprensa e o kit de mídia.
- Algo deu errado e você precisa de uma nota rápida e correta.

**Exemplos de pedido:**

- "Que pauta a Kenlo pode oferecer a jornalistas com os dados de mercado que temos?"
- "Saiu uma notícia sobre a nova lei do inquilinato. Como a Kenlo pode comentar?"
- "Tivemos uma instabilidade de 3 horas. Escreva uma nota inicial para os clientes."

## Como funciona

1. Lê o contexto de produto, se existir, e avalia se PR vale a pena agora: há uma história real, tempo de porta-voz e um destino para a atenção?
2. Escolhe a frente: reativa (aproveitar notícia), proativa (pauta própria), pedidos de jornalistas ou canal próprio (sala de imprensa).
3. Encaixa a história em um dos três ângulos: história de fundação, Davi contra Golias ou "um inimigo" (um sistema quebrado, nunca um concorrente).
4. Monta lista de jornalistas, pontua o encaixe e escreve o pitch, que precisa passar no checklist de qualidade (menos de 150 palavras, gancho claro, pedido claro).
5. Em crise: define o nível de gravidade, segue o checklist dos primeiros 60 minutos, nomeia um porta-voz e publica uma nota inicial; envolve o jurídico em casos de dados, processo ou regulador.
6. Mede pelo que importa: qualidade das publicações, tráfego, aumento de buscas pela marca, citações em IA e conversas de vendas.

## O que você recebe

- Ângulos de pauta e pitches prontos para jornalistas.
- Lista de veículos e jornalistas com nota de encaixe.
- Respostas para pedidos de imprensa.
- Briefing de preparação para podcast.
- Checklist da sala de imprensa e do kit de mídia.
- Notas de crise (inicial, incidente, vazamento, falha, desculpas, erro de cobrança).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/story-angles.md` | Os três ângulos de história, pautas com dados e como construir relacionamento com a imprensa |
| `references/newsjacking.md` | Como aproveitar notícias do momento, com critério de relevância e biblioteca de ângulos |
| `references/journalist-pitching.md` | Como montar lista de jornalistas, pontuar e escrever pitches por ângulo |
| `references/press-platforms.md` | Plataformas de pedidos de jornalistas (HARO, Qwoted e outras), rotina diária e modelo de resposta |
| `references/media-outlets.md` | Lista de veículos, newsletters e podcasts por tema |
| `references/podcast-guest-prep.md` | Roteiro de pesquisa e briefing para participar de podcasts |
| `references/crisis-communications.md` | Níveis de gravidade, primeiros 60 minutos e ordem dos canais em crise |
| `references/statement-templates.md` | Modelos de notas oficiais para cada tipo de incidente |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- As listas de veículos e plataformas são majoritariamente americanas; peça ao Claude veículos do setor imobiliário e de tecnologia no Brasil.
- Em incidentes com dados pessoais, a LGPD exige comunicação à ANPD e aos titulares em certos casos; envolva jurídico e DPO antes de publicar.
- A skill não envia pitches nem publica notas; tudo deve ser revisado e aprovado antes.

## Relacionadas

- [`launch`](../launch/README.md) — quando a pauta é um lançamento.
- [`events`](../events/README.md) — imprensa e palestras em eventos.
- [`crisis-management-social`](../../05-redes-sociais/crisis-management-social/README.md) — o lado das redes sociais em uma crise.
- [`directory-submissions`](../../03-seo-busca/directory-submissions/README.md) — cadastro em diretórios de software, que é outra frente.
