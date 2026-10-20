# co-marketing

> Ajuda a encontrar empresas parceiras e planejar campanhas conjuntas, para quem quer usar a audiência de outra marca sem competir com ela.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/co-marketing` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Organiza o trabalho de marketing em parceria: quem são os bons parceiros (mesmo público, problema diferente), como pontuar cada um, que tipo de campanha fazer junto e como combinar as regras (quem fica com os leads, quem divulga o quê, prazos). Também explica os cinco tipos de parceria (integração, revenda, afiliados, co-marketing e marketplace) para escolher o caminho certo.

## Quando usar

- Você quer uma lista de possíveis parceiros e não sabe por onde começar.
- Já tem um parceiro e precisa de ideias de campanha conjunta (webinar, e-book, estudo de caso, landing page "melhor juntos").
- Precisa estruturar um acordo simples de co-marketing antes de começar.
- Quer medir se uma parceria valeu a pena.

**Exemplos de pedido:**

- "Quem seriam bons parceiros de co-marketing para a Kenlo entre ferramentas que imobiliárias já usam?"
- "Me dê 5 ideias de campanha conjunta com um portal imobiliário parceiro."
- "Escreva um e-mail curto convidando uma fintech de aluguel para um webinar conjunto."

## Como funciona

1. O Claude procura primeiro o arquivo de contexto de produto (`.agents/product-marketing.md` ou `.claude/product-marketing.md`) e só pergunta o que faltar.
2. Faz perguntas da tarefa: busca parceiros ou planeja com um específico, tipo de campanha, tamanho da audiência, prazo e orçamento.
3. Para achar parceiros, analisa sobreposição de público, ferramentas adjacentes no fluxo do cliente e sinais de comunidade, e dá nota de 1 a 5 em seis critérios.
4. Para planejar a campanha, cruza momentos e ativos dos dois lados e escolhe o formato (conteúdo, eventos, integração, comunidade).
5. Fecha com modelo de abordagem, roteiro do acordo, métricas e checklist.

## O que você recebe

- Lista de parceiros com pontuação por critério.
- Ideias de campanha conjunta com esforço e objetivo de cada formato.
- E-mail de primeiro contato com o parceiro e lista do que levar para a call.
- Esboço de acordo de co-marketing (responsabilidades, leads, marca, custos, métricas).
- Checklist de identificação, planejamento, execução e pós-campanha.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/partnership-types.md` | Os cinco tipos de parceria com exemplos, economia e como escolher por onde começar |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- Os números de mercado citados (por exemplo, programa de parceiros da HubSpot) são exemplos de fora do Brasil; use como inspiração, não como meta.
- Ferramentas como Crossbeam, Reveal e PartnerStack são citadas, mas a skill não se conecta a elas.
- Antes de enviar qualquer e-mail ou fechar acordo com parceiro, revise com o time comercial e jurídico.

## Relacionadas

- [`referrals`](../referrals/README.md) — programas de indicação e afiliados (detalhes de comissão e mecânica).
- [`launch`](../launch/README.md) — lançamentos com parceiros como canal "emprestado".
- [`events`](../events/README.md) — execução de webinars e eventos conjuntos.
- [`sales-enablement`](../../04-anuncios-conversao-vendas/sales-enablement/README.md) — materiais para o parceiro vender junto.
