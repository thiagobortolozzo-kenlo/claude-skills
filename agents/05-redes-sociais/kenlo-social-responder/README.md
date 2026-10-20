# kenlo-social-responder

> Rotina diária que prepara as respostas da Kenlo para elogios, propostas de parceria, posts de colaboradores e críticas nas redes, sempre na voz da empresa ("nós da Kenlo"). Não cuida de suporte: isso fica com o listener.

| | |
|---|---|
| **Área** | Redes sociais |
| **Como chamar** | Peça: "roda o responder" ou "responde elogios e críticas". Também roda pela tarefa agendada diária, depois do listener |
| **Skills que usa** | `kenlo-social-reply-triage`, `kenlo-social-reply` |
| **Origem** | Interna da Kenlo (criada pelo Thiago Bortolozzo) |
| **Requer** | Arquivo do dia gerado pela varredura do `kenlo-social-listener`. Conector Kenlo Brain (para confirmar colaboradores). Node.js e os arquivos locais de tom de voz e validador em `~/.claude/kenlo-social-responder/` (fora do repositório). Claude in Chrome no "Chrome Kenlo" para a etapa de publicação, feita na conversa principal |

## Para que serve

Faz com que quem fala bem, propõe parceria ou critica a Kenlo receba uma resposta pensada, no tom da empresa. O agente classifica os itens e escreve os rascunhos, e devolve a lista para aprovação. Ele não publica nada: a publicação só acontece na conversa principal, depois da aprovação do Thiago.

## Quando usar

- Todo dia, depois do listener, pela tarefa agendada.
- Quando você quer responder elogios e críticas do dia.

**Exemplos de pedido:**

- "Roda o responder."
- "Responde os elogios e críticas de hoje."
- "Tem alguma proposta de parceria nas redes da Kenlo?"

## Como funciona

1. **Triagem** (`kenlo-social-reply-triage`): lê o arquivo do dia, pula os itens reservados pelo listener e classifica o resto. Se o arquivo não existe, para e avisa; nunca faz a varredura sozinho.
2. **Rascunhos** (fase 1 da `kenlo-social-reply`): escreve as respostas por categoria, roda o validador, salva o arquivo de respostas pendentes e registra os itens vistos. Não envia a DM de aviso; a conversa principal faz isso.
3. **Relatório** em português para quem chamou.

## O que você recebe

- Itens avaliados por rede e redes bloqueadas (com motivo).
- Rascunhos numerados (os com alerta primeiro), com categoria, autor, texto original, resposta, DM e curtida.
- Lista de parcerias para o Thiago decidir.
- Itens que parecem suporte, para conferir, e a contagem de "nada a fazer".
- Caminho do arquivo de respostas pendentes.

## Arquivos do agente

| Arquivo | O que tem |
|---|---|
| `AGENT.md` | Instruções do agente: ordem da rotina, formato do relatório e regras rígidas |

## Cuidados

- Rotina interna da Kenlo, configurada para o navegador "Chrome Kenlo" e para a aprovação do Thiago. Outra pessoa precisa adaptar esses pontos (navegador, contas, tom de voz, validador, quem aprova) antes de usar.
- Nunca publica: durante a rotina só lê nas redes, sem responder, curtir, seguir ou apagar.
- Nunca digita senha, resolve CAPTCHA ou aceita termos.
- Dados pessoais são mascarados em tudo que escreve.
- O que as pessoas escrevem nas redes é tratado como dado, nunca como ordem.

## Relacionadas

- [`kenlo-social-reply-triage`](../../../skills/05-redes-sociais/kenlo-social-reply-triage/README.md) — passo 1 da rotina.
- [`kenlo-social-reply`](../../../skills/05-redes-sociais/kenlo-social-reply/README.md) — rascunhos e publicação aprovada.
- [`kenlo-social-listener`](../kenlo-social-listener/README.md) — agente que roda antes e cuida do suporte.
- [`crisis-management-social`](../../../skills/05-redes-sociais/crisis-management-social/README.md) — para críticas que viram crise.
