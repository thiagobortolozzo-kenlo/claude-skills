# kenlo-social-triage

> Separa, entre os comentários e mensagens das redes da Kenlo, só os clientes com problema no produto, suporte lento ou sem atendimento, e confere cada caso no Kenlo Brain.

| | |
|---|---|
| **Área** | Redes sociais |
| **Como chamar** | `/kenlo-social-triage` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês (o resultado sai em português) |
| **Origem** | Interna da Kenlo (criada pelo Thiago Bortolozzo) |
| **Requer** | Conector Kenlo Brain (ferramentas de suporte: `suporte_cliente`, `ficha_da_imobiliaria`, `suporte_chamados`, `consultar_conversa_das_salas`, `search_support_docs`). Arquivo do dia gerado pela `kenlo-social-scan` |

## Para que serve

Evita que um cliente que reclamou nas redes passe despercebido. A skill lê o arquivo do dia, fica só com três tipos de caso (problema no produto, demora no atendimento, falta de atendimento), descobre quem é o cliente, se já existe chamado aberto e se o problema é conhecido. O resultado é uma lista curta e priorizada para o time Customer & Marketing.

## Quando usar

- Logo depois da varredura diária, como parte do agente `kenlo-social-listener`.
- Quando alguém cola mensagens das redes e pergunta quem precisa de suporte.

**Exemplos de pedido:**

- "Quem precisa de suporte aqui?" (colando comentários)
- "Faz a triagem dos itens de hoje das redes."
- "Desses comentários, quais são reclamação de atendimento?"

## Como funciona

1. Lê os itens de hoje que ainda não foram avaliados.
2. Encaminha só `suporte_produto`, `prazo_atendimento` e `falta_atendimento`. Reações a posts, elogios, spam, pedidos de preço (leads) e cobrança sem reclamação de suporte ficam de fora, com uma linha explicando o motivo.
3. Dá prioridade: P1 (não consegue trabalhar, muitos dias esperando, ameaça cancelar, cita Procon, Reclame Aqui ou advogado), P2 (problema claro, hoje), P3 (dúvida de uso).
4. Valida no Kenlo Brain: quem é o cliente (código SL, cidade, produtos, CSM), chamados abertos e se o time já comentou um incidente parecido. Se não achar o cliente, diz "não identificado como cliente", sem chutar.
5. Marca os casos de suporte como reservados para o listener, para que o responder não mexa neles, e registra o que já foi avaliado.

## O que você recebe

- Lista de casos para encaminhar, com categoria, prioridade, motivo e a validação do Kenlo Brain.
- Lista "ficou de fora" e leads para Vendas.
- Arquivo do dia atualizado com as reservas.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue: categorias, prioridades, validação e formato de saída |

## Cuidados

- O Kenlo Brain é usado só para consulta; nada é enviado por ele.
- Telefone, CPF, e-mail e endereço são mascarados (`[telefone]`, `[cpf]`, `[email]`, `[endereço]`) em tudo que a skill escreve (LGPD).
- Os arquivos de controle ficam em `~/.claude/kenlo-social-listener/` na máquina de quem roda; outra pessoa precisa ter o mesmo acesso ao Kenlo Brain e adaptar esses caminhos.
- Na dúvida, a skill não encaminha. Vale olhar a lista "ficou de fora".

## Relacionadas

- [`kenlo-social-scan`](../kenlo-social-scan/README.md) — gera o arquivo que esta skill lê.
- [`kenlo-social-forward`](../kenlo-social-forward/README.md) — próximo passo: rascunha e posta os casos no Google Chat.
- [`kenlo-social-reply-triage`](../kenlo-social-reply-triage/README.md) — cuida do que não é suporte.
