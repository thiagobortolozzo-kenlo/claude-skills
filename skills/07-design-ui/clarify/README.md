# clarify

> Reescreve textos de interface confusos (mensagens de erro, rótulos, botões, instruções, estados vazios) para que o usuário entenda na hora. Para quem escreve ou revisa telas.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/clarify` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês (os exemplos da skill são em inglês, mas ela reescreve textos em português normalmente) |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: impeccable (pbakaus) via kursku/skills |
| **Requer** | Nada além do Claude |

## Para que serve

Texto ruim de interface gera erro, frustração e chamado de suporte. A skill encontra jargão, ambiguidade, voz passiva, falta de contexto e tom inadequado, e reescreve cada texto com uma regra simples: dizer o que aconteceu, o que fazer em seguida, sem culpar o usuário. O resultado são textos curtos, específicos e consistentes.

## Quando usar

- Mensagens de erro técnicas ("Erro 403", "Entrada inválida").
- Botões genéricos ("OK", "Enviar", "Clique aqui") e campos sem rótulo claro.
- Estados vazios, de carregamento e confirmações que não orientam o próximo passo.

**Exemplos de pedido:**

- "Revisa os textos desta tela de cadastro, estão confusos."
- "Reescreve as mensagens de erro do formulário para ficarem mais humanas."
- "Melhora os textos da tela de importação de imóveis do CRM; os corretores abrem chamado porque não entendem o erro."

## Como funciona

1. Avalia os textos atuais procurando jargão, ambiguidade, excesso ou falta de palavras, suposições e tom errado.
2. Entende o contexto: quem lê, em que estado emocional (erro gera estresse), qual ação se espera e quais limites de espaço existem.
3. Define a mensagem principal, a ação esperada e o tom de cada texto.
4. Reescreve por tipo: erros, rótulos de formulário, botões, ajuda/tooltips, estados vazios, sucesso, carregamento, confirmações e navegação.
5. Aplica as regras: ser específico, conciso, ativo, humano, útil e consistente (o mesmo termo para a mesma coisa).
6. Verifica compreensão, clareza da próxima ação, brevidade e tom.

## O que você recebe

- Lista de textos problemáticos com a versão reescrita.
- Alterações aplicadas no código, quando a skill roda dentro do projeto.
- Termos padronizados para usar em toda a interface.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `.skillshare-meta.json` | Metadados de instalação (origem no repositório impeccable, versão) |

## Cuidados

- Confira se os termos novos batem com o vocabulário que o cliente da Kenlo já usa (imóvel, lead, corretor, captação).
- Não use humor em mensagens de erro; a skill recomenda empatia.
- Revise o resultado antes de publicar, principalmente textos legais ou de cobrança.

## Relacionadas

- [`copy-editing`](../../02-copy-conteudo/copy-editing/README.md) — revisão de textos fora da interface.
- [`harden`](../harden/README.md) — trata os estados de erro e vazio que esses textos acompanham.
- [`distill`](../distill/README.md) — corta texto e elementos desnecessários.
- [`avoid-ai-writing`](../../02-copy-conteudo/avoid-ai-writing/README.md) — remove cara de texto escrito por IA.
