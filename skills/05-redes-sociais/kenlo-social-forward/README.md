# kenlo-social-forward

> Transforma os casos de suporte vindos das redes em mensagens curtas para o espaço "Customer & Marketing" no Google Chat e só posta depois da aprovação do Thiago.

| | |
|---|---|
| **Área** | Redes sociais |
| **Como chamar** | `/kenlo-social-forward` — ou responda `aprovo 1, 3` sobre casos pendentes |
| **Idioma da skill** | Inglês (as mensagens saem em português) |
| **Origem** | Interna da Kenlo (criada pelo Thiago Bortolozzo) |
| **Requer** | Claude in Chrome conectado ao navegador "Chrome Kenlo", logado na conta Google do Thiago com acesso ao Google Chat. Resultado da `kenlo-social-triage` |

## Para que serve

Leva os casos de suporte encontrados nas redes até o time que resolve, com uma mensagem no tom do time: curta, em um parágrafo, terminando com um pedido direto ("Alguém consegue assumir?"), mais o link da conversa. Nada é postado sem um "aprovo" explícito do Thiago na conversa.

## Quando usar

- Depois da triagem diária, para encaminhar os casos ao time.
- Quando o Thiago responde `aprovo 1, 3`, `aprovo todos` ou `descarta 2` sobre os rascunhos do dia.

**Exemplos de pedido:**

- "aprovo 1, 3"
- "Encaminha os casos de suporte de hoje para o Customer & Marketing."
- "descarta 2 e aprova o resto."

## Como funciona

Fase 1, rascunho e aprovação:

1. Pega só os casos marcados para encaminhar e que não são repetidos, do P1 ao P3.
2. Abre o espaço no Chrome e lê as últimas 48 horas, para não postar de novo um cliente já citado.
3. Escreve um rascunho por caso, acrescentando CSM, idade do chamado ou incidente conhecido quando o Kenlo Brain trouxe isso.
4. Salva os rascunhos num arquivo de pendentes e mostra a lista numerada, pedindo aprovação.
5. Envia uma cópia dos rascunhos por mensagem direta para a segunda conta do Thiago no Google Chat, só como aviso.

Fase 2, postagem (só o que foi aprovado):

1. Abre o espaço e confere que o cabeçalho mostra "Customer & Marketing". Se não mostrar, ou se pedir login, para.
2. Posta cada mensagem aprovada como mensagem nova, uma por vez, e confere que ela apareceu.
3. Marca cada rascunho como postado ou descartado e informa o resultado.

## O que você recebe

- Rascunhos numerados para aprovar, editar ou descartar.
- Arquivo `~/.claude/kenlo-social-listener/pendentes-AAAA-MM-DD.json` com o status de cada um.
- Relatório final: postados, descartados e falhas (com motivo).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue: regras do navegador, as duas fases e o modelo de mensagem |

## Cuidados

- Nunca posta sem aprovação do Thiago nesta conversa. Uma resposta no Google Chat não vale como aprovação.
- Nunca edita, apaga ou reage a mensagens de outras pessoas, nem mexe em outros espaços.
- Dados pessoais de clientes (telefone, CPF, e-mail, endereço) são mascarados.
- Configurada para o navegador "Chrome Kenlo", a conta do Thiago, o endereço do espaço e o nome da DM de aviso. Outra pessoa precisa adaptar esses pontos antes de usar.

## Relacionadas

- [`kenlo-social-triage`](../kenlo-social-triage/README.md) — passo anterior: escolhe e valida os casos.
- [`kenlo-social-scan`](../kenlo-social-scan/README.md) — coleta inicial das redes.
- [`kenlo-social-reply`](../kenlo-social-reply/README.md) — fluxo parecido, mas para responder publicamente nas redes.
