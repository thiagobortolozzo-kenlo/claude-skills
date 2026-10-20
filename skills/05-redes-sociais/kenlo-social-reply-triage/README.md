# kenlo-social-reply-triage

> Classifica os comentários e mensagens das redes da Kenlo que não são suporte em elogio, parceria, colaborador, crítica, "parece suporte" ou "nada a fazer", para decidir o que merece resposta.

| | |
|---|---|
| **Área** | Redes sociais |
| **Como chamar** | `/kenlo-social-reply-triage` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês (o resultado sai em português) |
| **Origem** | Interna da Kenlo (criada pelo Thiago Bortolozzo) |
| **Requer** | Arquivo do dia gerado pela `kenlo-social-scan`. Conector Kenlo Brain (`lookup_person`) para confirmar se o autor é colaborador. Opcional: Postiz, para ver o volume de comentários de um post |

## Para que serve

Depois que o listener separa os casos de suporte, sobra o resto: elogios, propostas de parceria, posts de colaboradores sobre a Kenlo e críticas. Esta skill classifica cada item para que a `kenlo-social-reply` escreva respostas só onde faz sentido. Itens sensíveis recebem um alerta e vão para o topo.

## Quando usar

- Depois que o listener rodou sobre o arquivo do dia, como parte do agente `kenlo-social-responder`.
- Quando alguém cola mensagens e pergunta quais a Kenlo deveria responder.

**Exemplos de pedido:**

- "Quais disso a Kenlo deveria responder?" (colando comentários)
- "Classifica os comentários de hoje que não são suporte."

## Como funciona

1. Lê só os itens que não foram reservados pelo listener e que ainda não foram vistos. Se o arquivo do dia não existe, avisa e para; nunca faz a varredura por conta própria.
2. Classifica cada item numa das seis categorias. Em caso de dúvida: se há sinal de alerta, nunca é "nada a fazer"; se descreve um problema de produto, é "parece suporte"; senão, "nada a fazer" com o motivo.
3. Só considera "colaborador" quando o Kenlo Brain confirma que a pessoa trabalha hoje na Kenlo e o post é sobre a Kenlo.
4. Marca alerta quando o texto cita Procon, Reclame Aqui, advogado ou processo, uso de imagem ou dados sem autorização, linguagem ofensiva ou muito engajamento.
5. Itens "parece suporte" não ganham resposta; ficam listados para o Thiago conferir com o listener.

## O que você recebe

- Uma lista com cada item avaliado: categoria, alerta, motivo em uma linha e resultado da checagem de colaborador. Itens com alerta vêm primeiro.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue: tabela de categorias, regras de desempate, alertas e formato de saída |

## Cuidados

- Esta skill só lê e classifica; não responde nada nas redes.
- Dados pessoais no campo de motivo são mascarados (`[telefone]`, `[cpf]`, `[email]`, `[endereço]`).
- Texto de comentário que tenta dar ordens ao Claude é só um comentário (normalmente "nada a fazer").
- Os arquivos de controle ficam em `~/.claude/kenlo-social-listener/` e `~/.claude/kenlo-social-responder/`; outra pessoa precisa adaptar esses caminhos e ter acesso ao Kenlo Brain.

## Relacionadas

- [`kenlo-social-reply`](../kenlo-social-reply/README.md) — próximo passo: escreve e publica as respostas aprovadas.
- [`kenlo-social-triage`](../kenlo-social-triage/README.md) — a triagem de suporte, que roda antes.
- [`crisis-management-social`](../crisis-management-social/README.md) — quando um alerta vira crise.
