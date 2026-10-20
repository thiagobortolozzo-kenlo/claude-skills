# teach-impeccable

> Configuração feita uma única vez por projeto: o Claude estuda o projeto, faz perguntas sobre público, marca e estética e salva esse "contexto de design" para todas as sessões futuras. Para quem vai usar as skills de design com frequência.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/teach-impeccable` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: impeccable (pbakaus) via kursku/skills |
| **Requer** | Nada além do Claude, rodando dentro da pasta do projeto (ele grava no `CLAUDE.md` da raiz). |

## Para que serve

Várias skills de design (animate, bolder, colorize, delight, distill, quieter) param e perguntam sobre público, marca e tom antes de agir. Esta skill responde essas perguntas uma vez e deixa a resposta registrada. Assim, nas próximas sessões o Claude já sabe quem usa o produto, qual a personalidade da marca e que princípios devem guiar as decisões.

## Quando usar

- No início de um projeto novo de frontend ou site.
- Quando as skills de design ficam perguntando sempre as mesmas coisas.
- Quando a direção visual do projeto mudou e o registro antigo ficou desatualizado.

**Exemplos de pedido:**

- "Roda o teach-impeccable neste projeto."
- "Quero registrar o contexto de design deste site para as próximas sessões."
- "Configura o contexto de design do app do corretor: público, tom da marca Kenlo e uso do KDLS."

## Como funciona

1. Explora o projeto antes de perguntar: README e documentação, `package.json` e configurações, componentes existentes, logos e cores, tokens e variáveis CSS, guias de estilo.
2. Pergunta só o que não conseguiu descobrir: usuários e propósito, personalidade da marca (3 palavras, referências e antirreferências), preferências estéticas (claro/escuro, cores obrigatórias ou proibidas) e requisitos de acessibilidade.
3. Escreve uma seção `## Design Context` com usuários, personalidade da marca, direção estética e 3 a 5 princípios de design.
4. Grava essa seção no `CLAUDE.md` da raiz do projeto (cria ou atualiza) e resume os princípios definidos.

## O que você recebe

- Seção "Design Context" no `CLAUDE.md` do projeto.
- Resumo dos princípios de design que passam a guiar o trabalho.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `.skillshare-meta.json` | Metadados de instalação (origem no repositório impeccable, versão) |

## Cuidados

- A skill altera o `CLAUDE.md` do projeto; revise o texto antes de fazer commit.
- Em projetos de produto da Kenlo, registre que o KDLS é o design system obrigatório, para que as outras skills respeitem isso.
- Não coloque dados de clientes ou informações sensíveis no contexto salvo.

## Relacionadas

- [`normalize`](../normalize/README.md) — usa o contexto e o design system para alinhar telas.
- [`critique`](../critique/README.md) — avalia telas com base nesse contexto.
- [`animate`](../animate/README.md) — uma das skills que deixa de perguntar quando o contexto existe.
- [`market-brand`](../../01-marketing-estrategia/market-brand/README.md) — define voz e posicionamento da marca.
