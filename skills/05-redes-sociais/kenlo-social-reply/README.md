# kenlo-social-reply

> Escreve respostas da Kenlo para elogios, parcerias, posts de colaboradores e críticas nas redes, pede aprovação item por item e só publica o que o Thiago aprovar.

| | |
|---|---|
| **Área** | Redes sociais |
| **Como chamar** | `/kenlo-social-reply` — ou responda `responde 1, 3` sobre respostas pendentes |
| **Idioma da skill** | Inglês (as respostas saem em português ou no idioma do autor) |
| **Origem** | Interna da Kenlo (criada pelo Thiago Bortolozzo) |
| **Requer** | Claude in Chrome no navegador "Chrome Kenlo", logado nas contas da Kenlo (Meta Business Suite, LinkedIn, TikTok Studio, YouTube Studio) e no Google Chat. Node.js para rodar o validador local `~/.claude/kenlo-social-responder/validate-drafts.mjs`. Arquivo de tom de voz `~/.claude/kenlo-social-responder/tom-de-voz.md`. Ambos ficam fora deste repositório |

## Para que serve

Garante que quem elogia, propõe parceria ou critica a Kenlo receba uma resposta cuidadosa, sempre na voz da empresa ("nós da Kenlo", no plural). Funciona em duas fases: primeiro rascunha e pede aprovação, depois publica só o que foi aprovado, conferindo que está respondendo como Kenlo e não como pessoa.

## Quando usar

- Depois da `kenlo-social-reply-triage`, como parte do agente `kenlo-social-responder`.
- Quando o Thiago responde `responde 1, 4`, `responde todos` ou `descarta 2`.

**Exemplos de pedido:**

- "responde 1, 4"
- "Escreve as respostas para os elogios e críticas de hoje."
- "descarta 2 e muda o texto da 3 para ..."

## Como funciona

Fase 1, rascunho e aprovação:

1. Lê o tom de voz da Kenlo e marca como expirados os rascunhos antigos ainda pendentes.
2. Escreve por categoria: agradecimento com o primeiro nome (elogio); agradecimento e pedido de nome da empresa e e-mail, sem prometer nada (parceria); curtida e comentário caloroso (colaborador); resposta curta e empática, sem se defender, mais a primeira mensagem de DM (crítica).
3. Nunca promete preço, prazo, desconto ou recurso; nunca discute nem culpa o cliente.
4. Salva o arquivo de pendentes e roda o validador até ele aprovar todos os textos.
5. Mostra os rascunhos numerados (alertas primeiro), a lista de parcerias e os itens "parece suporte". `responde todos` não inclui itens com alerta.
6. Envia a mesma lista por DM para a segunda conta do Thiago no Google Chat, só como aviso.

Fase 2, publicação (um item por vez):

1. Confere que o item não foi reservado pelo listener e que o texto original ainda está lá, sem mudança.
2. Confirma que a conta que vai responder é a Kenlo. Se não der para confirmar, não publica.
3. Faz a ação aprovada (curtida, resposta pública, DM), confere que apareceu e anota o status no arquivo antes de ir para o próximo.

## O que você recebe

- Rascunhos numerados para aprovar, editar ou descartar.
- Arquivo `~/.claude/kenlo-social-responder/respostas-pendentes-AAAA-MM-DD.json` com o status de cada resposta.
- Relatório final: publicados, descartados e falhas (com motivo).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue: regras do navegador, as duas fases e as regras rígidas |

## Cuidados

- Nada é publicado sem aprovação do Thiago digitada nesta conversa. Resposta no Google Chat não vale como aprovação, e um subagente nunca publica.
- Ações permitidas: responder, comentar, curtir e mandar DM, só nos itens aprovados. Nunca apaga, oculta, bloqueia, denuncia, segue ou mexe em configurações.
- Nunca digita senha nem resolve CAPTCHA; se uma rede pedir login, pula e avisa.
- Configurada para o navegador "Chrome Kenlo", as contas da Kenlo e a aprovação do Thiago. Outra pessoa precisa adaptar esses pontos e criar o próprio tom de voz e validador.

## Relacionadas

- [`kenlo-social-reply-triage`](../kenlo-social-reply-triage/README.md) — passo anterior: classifica os itens.
- [`kenlo-social-forward`](../kenlo-social-forward/README.md) — fluxo parecido para casos de suporte.
- [`crisis-management-social`](../crisis-management-social/README.md) — para críticas que viram crise.
- [`review-response`](../../02-copy-conteudo/review-response/README.md) — respostas a avaliações públicas.
