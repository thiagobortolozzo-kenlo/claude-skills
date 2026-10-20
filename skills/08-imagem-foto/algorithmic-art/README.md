# algorithmic-art

> Cria arte generativa com código (p5.js): uma página HTML interativa onde cada "semente" gera uma variação diferente da obra — para quem quer visuais abstratos únicos.

| | |
|---|---|
| **Área** | Imagem e foto |
| **Como chamar** | `/algorithmic-art` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Anthropic, via kursku/skills |
| **Requer** | Nada além do Claude; para ver o resultado basta um navegador (a biblioteca p5.js é carregada de um CDN) |

## Para que serve

Em vez de desenhar uma imagem fixa, a skill escreve um pequeno programa que "desenha sozinho" seguindo regras matemáticas: partículas, campos de fluxo, ruído, padrões que se repetem. Você recebe uma página HTML com controles deslizantes e botões de semente, e pode explorar infinitas variações e baixar a que mais gostar em PNG.

## Quando usar

- Você quer um fundo abstrato exclusivo para um banner, capa de apresentação ou evento.
- Você quer explorar uma identidade visual "viva", com variações de uma mesma ideia.
- Você quer uma peça artística que não pareça imagem de banco nem foto de IA.

**Exemplos de pedido:**

- "Cria uma arte generativa com fluxo de partículas nas cores azul e laranja."
- "Quero um padrão abstrato inspirado em mapas de bairros para o fundo de um slide."
- "Faz uma arte algorítmica que lembre plantas baixas de apartamentos, com variações por semente."

## Como funciona

1. O Claude escreve primeiro uma "filosofia algorítmica": um pequeno manifesto (4 a 6 parágrafos) com nome do movimento e a lógica visual da obra. Isso vira um arquivo `.md`.
2. Ele identifica uma referência sutil ao tema do seu pedido para colocar "escondida" no algoritmo.
3. Lê o modelo `templates/viewer.html` e usa a mesma estrutura: barra lateral com semente, parâmetros, cores (opcional) e ações.
4. Escreve o algoritmo p5.js com aleatoriedade controlada por semente (a mesma semente sempre gera a mesma imagem).
5. Cria controles para cada parâmetro (quantidade, velocidade, escala etc.) e botões de regenerar, resetar e baixar PNG.

## O que você recebe

- Um arquivo `.md` com a filosofia da obra.
- Um arquivo `.html` autossuficiente e interativo, que abre em qualquer navegador sem servidor.
- A possibilidade de baixar em PNG a variação escolhida.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `templates/viewer.html` | Página-base obrigatória (layout, barra lateral, botões) |
| `templates/generator_template.js` | Boas práticas de organização de código p5.js |
| `LICENSE.txt` | Licença Apache 2.0 |

## Cuidados

- O modelo de página usa a identidade visual da Anthropic (fontes Poppins/Lora, cores claras) na interface. Se for usar externamente, peça para trocar pela identidade da Kenlo.
- A página carrega p5.js de `cdnjs.cloudflare.com` e fontes do Google Fonts; sem internet ela não abre direito.
- O resultado é arte abstrata: não serve para mostrar produto, tela ou pessoas.

## Relacionadas

- [`canvas-design`](../canvas-design/README.md) — mesma ideia de "filosofia de design", mas para peças estáticas em PNG/PDF
- [`theme-factory`](../../07-design-ui/theme-factory/README.md) — paletas e temas para aplicar na arte
- [`frontend-slides`](../../07-design-ui/frontend-slides/README.md) — usar a arte como fundo de apresentação
