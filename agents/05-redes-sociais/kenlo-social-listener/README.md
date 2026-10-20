# kenlo-social-listener

> Rotina diária de escuta das redes da Kenlo: lê comentários, DMs e menções, separa só os clientes com problema de produto ou de atendimento, valida no Kenlo Brain e prepara mensagens para o time Customer & Marketing.

| | |
|---|---|
| **Área** | Redes sociais |
| **Como chamar** | Peça: "roda o social listener" ou "vê quem pediu ajuda nas redes". Também roda pela tarefa agendada diária |
| **Skills que usa** | `kenlo-social-scan`, `kenlo-social-triage`, `kenlo-social-forward` |
| **Origem** | Interna da Kenlo (criada pelo Thiago Bortolozzo) |
| **Requer** | Claude in Chrome no navegador "Chrome Kenlo", logado nas contas da Kenlo (Meta Business Suite, LinkedIn, TikTok, YouTube Studio) e no Google Chat. Conector Kenlo Brain. Opcional: Postiz |

## Para que serve

Garante que nenhum cliente que reclama nas redes de problema no produto, suporte lento ou falta de atendimento passe despercebido. O agente faz a varredura, a triagem e os rascunhos, e devolve um relatório curto. Ele mesmo nunca posta nada: a postagem no Google Chat só acontece depois que o Thiago aprova na conversa principal.

## Quando usar

- Todo dia, pela manhã, pela tarefa agendada.
- Quando alguém quer saber se algum cliente pediu ajuda nas redes.

**Exemplos de pedido:**

- "Roda o social listener."
- "Vê quem pediu ajuda nas redes hoje."
- "Algum cliente reclamou de suporte no Instagram da Kenlo?"

## Como funciona

1. **Varredura** (`kenlo-social-scan`): coleta as últimas 24 horas (72 às segundas) e grava o arquivo do dia. Se a varredura já rodou, só lê o arquivo.
2. **Triagem e validação** (`kenlo-social-triage`): fica só com problema de produto, demora e falta de atendimento; confere cliente, chamados abertos e incidentes conhecidos no Kenlo Brain; reserva esses itens para que o responder não mexa neles.
3. **Rascunhos** (fase 1 da `kenlo-social-forward`): checa repetições no espaço, escreve as mensagens no tom do time e salva o arquivo de pendentes. Não envia a DM de aviso; a conversa principal faz isso.
4. **Relatório** em português para quem chamou.

## O que você recebe

- Itens lidos por rede e redes bloqueadas (com motivo).
- Casos para encaminhar, numerados, com prioridade, validação do Kenlo Brain e rascunho pronto.
- Lista "ficou de fora" e leads para Vendas.
- Caminho do arquivo de pendentes.

## Arquivos do agente

| Arquivo | O que tem |
|---|---|
| `AGENT.md` | Instruções do agente: ordem da rotina, formato do relatório e regras rígidas |

## Cuidados

- Rotina interna da Kenlo, configurada para o navegador "Chrome Kenlo" e para a aprovação do Thiago. Outra pessoa precisa adaptar esses pontos (nome do navegador, contas, espaço do Google Chat, quem aprova) antes de usar.
- Só lê nas redes: nunca responde, curte, segue, apaga ou manda mensagem.
- Nunca digita senha, resolve CAPTCHA ou aceita termos; se uma rede pedir login, pula e avisa.
- Dados pessoais (telefone, CPF, e-mail, endereço) são mascarados em tudo que escreve.
- O Kenlo Brain é usado só para consulta, nunca para enviar mensagens.

## Relacionadas

- [`kenlo-social-scan`](../../../skills/05-redes-sociais/kenlo-social-scan/README.md) — passo 1 da rotina.
- [`kenlo-social-triage`](../../../skills/05-redes-sociais/kenlo-social-triage/README.md) — passo 2 da rotina.
- [`kenlo-social-forward`](../../../skills/05-redes-sociais/kenlo-social-forward/README.md) — rascunhos e postagem aprovada.
- [`kenlo-social-responder`](../kenlo-social-responder/README.md) — agente que roda depois e cuida de elogios, críticas e parcerias.
