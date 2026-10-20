# theme-factory

> Aplica um tema visual pronto (paleta de cores e par de fontes) a slides, documentos, relatórios ou páginas HTML. São 10 temas prontos, e a skill também cria um tema sob medida. Para quem produz materiais e quer um visual consistente rápido.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/theme-factory` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: Anthropic, via kursku/skills |
| **Requer** | Nada além do Claude |

## Para que serve

Escolher cores e fontes que combinam toma tempo e o resultado nem sempre fica profissional. A skill mostra um catálogo visual (PDF) com 10 temas, você escolhe um e o Claude aplica as cores e fontes de forma consistente em todo o material, cuidando de contraste e legibilidade. Se nenhum servir, ele cria um tema novo a partir de uma descrição.

## Quando usar

- Uma apresentação ou relatório interno precisa de um visual coerente e rápido.
- Você quer testar diferentes "climas" visuais para o mesmo conteúdo.
- Um material precisa de identidade, mas não há guia de marca para ele.

**Exemplos de pedido:**

- "Aplica um tema profissional nesta apresentação."
- "Me mostra os temas disponíveis para eu escolher um para o relatório."
- "Cria um tema novo, sóbrio e confiável, para o relatório trimestral para as imobiliárias parceiras."

## Como funciona

1. Mostra o arquivo `theme-showcase.pdf` com todos os temas, sem alterá-lo.
2. Pergunta qual tema aplicar e espera sua confirmação.
3. Lê o arquivo do tema escolhido na pasta `themes/`.
4. Aplica cores e fontes de forma consistente em todo o material, garantindo contraste e legibilidade.
5. Se nenhum tema servir, cria um tema personalizado com nome descritivo, mostra para revisão e só então aplica.

Temas disponíveis: Ocean Depths, Sunset Boulevard, Forest Canopy, Modern Minimalist, Golden Hour, Arctic Frost, Desert Rose, Tech Innovation, Botanical Garden e Midnight Galaxy.

## O que você recebe

- O material (slides, documento, página) com o tema aplicado.
- Ou um tema novo definido (cores em hexadecimal e fontes de título e corpo), pronto para reutilizar.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `theme-showcase.pdf` | Catálogo visual com os 10 temas |
| `themes/` | 10 arquivos, um por tema, com paleta (hex), fontes e indicação de uso |
| `LICENSE.txt` | Licença Apache 2.0 |

## Cuidados

- Os temas são genéricos, não são da marca Kenlo. Para materiais oficiais, use as cores e fontes da marca; para telas de produto, use o KDLS.
- Algumas fontes indicadas (ex.: DejaVu Sans) podem não estar instaladas em todos os computadores.
- Confira o contraste do resultado antes de imprimir ou projetar.

## Relacionadas

- [`frontend-slides`](../frontend-slides/README.md) — apresentações HTML com estilos próprios.
- [`colorize`](../colorize/README.md) — uso estratégico de cor em interfaces.
- [`market-report-pdf`](../../01-marketing-estrategia/market-report-pdf/README.md) — relatórios em PDF que podem receber um tema.
- [`canvas-design`](../../08-imagem-foto/canvas-design/README.md) — peças visuais estáticas.
