# linkedin-post

> Escreve posts de LinkedIn com gancho, estrutura e chamada para ação, para quem quer gerar autoridade, leads ou engajamento na rede.

| | |
|---|---|
| **Área** | Copy e conteúdo |
| **Como chamar** | `/linkedin-post` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026); autoria original Cafe Code AI |
| **Requer** | Nada além do Claude |

## Para que serve

Ajuda a transformar uma ideia em um post de LinkedIn que faz a pessoa clicar em "ver mais" e terminar a leitura. A skill trabalha dois formatos principais: lista em "slides de texto" (dicas curtas, uma por bloco) e storytelling (uma história com aprendizado no fim).

## Quando usar

- Post de autoridade com dicas práticas sobre um tema da sua área.
- História pessoal ou da empresa com uma lição (um desafio superado, um bastidor).
- Post para gerar leads, divulgar um conteúdo ou recrutar.

**Exemplos de pedido:**

- "Escreve um post de LinkedIn em formato lista com 5 dicas de atendimento para corretores."
- "Transforma essa história do nosso time em um post de storytelling com uma pergunta no final."
- "Post para o perfil da Kenlo convidando gestores de imobiliária para o webinar, link no primeiro comentário."

## Como funciona

1. Você informa o objetivo (leads, marca, recrutamento, comunidade), o tema com 2 ou 3 pontos principais, o tom de voz e o formato preferido.
2. O Claude escreve um gancho forte para as duas primeiras linhas (pergunta, dado ou afirmação ousada).
3. No formato lista, divide o conteúdo em 3 a 7 blocos curtos. No storytelling, segue contexto, conflito, ação, aprendizado e pergunta final.
4. Fecha com uma única CTA. Se houver link, a orientação é colocá-lo no primeiro comentário para não prejudicar o alcance.
5. Sugere de 3 a 5 hashtags relevantes.

## O que você recebe

- O texto do post pronto para colar, com quebras de linha, CTA e hashtags.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue: dois fluxos de trabalho e dois templates (lista e storytelling) |

## Cuidados

- O arquivo `SKILL.md` está incompleto: o segundo template termina no meio de uma frase.
- Os templates usam bastante emoji, caixa alta e promessas como "explodir seu engajamento". Ajuste ao tom da marca e evite exageros.
- Histórias pessoais precisam ser verdadeiras. Não publique relatos inventados pelo Claude como se fossem seus.

## Relacionadas

- [`avoid-ai-writing`](../avoid-ai-writing/README.md) — tirar a cara de IA antes de publicar
- [`carousel-creator`](../carousel-creator/README.md) — quando o conteúdo funciona melhor como carrossel em PDF
- [`social`](../../05-redes-sociais/social/README.md) — estratégia e calendário de redes
- [`b2b-marketing`](../../01-marketing-estrategia/b2b-marketing/README.md) — contexto de marketing B2B para a Kenlo
