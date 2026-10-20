# favicon

> Gera o conjunto completo de favicons (ícone da aba do navegador, ícone da tela inicial do celular e do app web) a partir de uma única imagem e já atualiza o HTML do projeto. Para quem cuida de sites e landing pages.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/favicon <caminho da imagem>` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: Shpigford |
| **Requer** | ImageMagick 7 ou superior instalado (comando `magick`). Roda dentro da pasta do projeto do site. |

## Para que serve

Um site precisa de vários tamanhos de ícone: para a aba do navegador, para quando alguém salva o site na tela do iPhone e para apps web. Fazer isso à mão é chato e fácil de errar. A skill pega uma imagem (de preferência SVG ou PNG quadrado), gera todos os arquivos, cria o `site.webmanifest` e coloca as tags certas no HTML do projeto.

## Quando usar

- Um site ou landing page nova ainda está com o ícone padrão do framework.
- A marca mudou e o ícone da aba precisa ser trocado.
- O site vai ser salvo como atalho no celular e o ícone aparece cortado ou borrado.

**Exemplos de pedido:**

- "/favicon assets/logo.svg"
- "Gera os favicons deste site a partir do logo."
- "Troca o favicon da landing page do evento da Kenlo usando o símbolo novo da marca."

## Como funciona

1. Confere se o ImageMagick está instalado; se não, mostra como instalar e para.
2. Valida a imagem de origem (PNG, JPG, SVG, WEBP ou GIF).
3. Detecta o tipo de projeto (Next.js, Vite, Rails, Astro, Angular, HTML estático e outros) e a pasta de arquivos estáticos. Se houver dúvida, pergunta antes.
4. Descobre o nome do app (manifesto existente, `package.json` ou nome da pasta).
5. Gera `favicon.ico` (16, 32 e 48 px), `favicon-96x96.png`, `apple-touch-icon.png` (180 px), ícones de 192 e 512 px e copia o `favicon.svg` se a origem for SVG.
6. Cria ou atualiza o `site.webmanifest`, preservando cores já definidas.
7. Atualiza o layout/HTML com as tags corretas, ou mostra o trecho para colar manualmente.
8. Resume o que foi gerado e o que foi sobrescrito.

## O que você recebe

- Arquivos de ícone em todos os tamanhos na pasta estática do projeto.
- `site.webmanifest` criado ou atualizado.
- HTML/layout atualizado com as tags de favicon.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue, com os comandos do ImageMagick e os trechos de HTML por framework |

## Cuidados

- A skill pode sobrescrever favicons existentes; faça commit antes de rodar.
- As instruções de instalação do ImageMagick citam só macOS e Linux. No Windows, instale pelo site oficial ou por `winget`.
- Use uma imagem quadrada e simples; logos com muito detalhe ficam ilegíveis em 16 px.
- O manifesto vem com cor branca padrão; ajuste para a cor da marca se quiser.

## Relacionadas

- [`screenshots`](../screenshots/README.md) — outro material visual gerado direto do site.
- [`polish`](../polish/README.md) — acabamento final antes de publicar.
- [`market-landing`](../../04-anuncios-conversao-vendas/market-landing/README.md) — revisão da landing page como um todo.
