# frontend-slides

> Cria apresentações em HTML, com animações e visual próprio, que abrem direto no navegador. Também converte arquivos PowerPoint (.pptx) para esse formato. Para quem apresenta ideias, propostas ou treinamentos.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/frontend-slides` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: github.com/zarazhangrui/frontend-slides |
| **Requer** | Nada além do Claude para criar do zero. Para converter PowerPoint: Python com `python-pptx`. Para tratar imagens: Python com `Pillow`. |

## Para que serve

Em vez de um slide padrão de PowerPoint, você recebe um único arquivo HTML, sem dependências, que roda em qualquer navegador, com animações, navegação por teclado e visual pensado para não parecer "feito por IA". A skill mostra três prévias de estilo para você escolher vendo, em vez de descrever em palavras. Cada slide cabe exatamente na tela, sem rolagem.

## Quando usar

- Pitch, apresentação interna ou palestra que precisa de um visual marcante.
- Converter um .pptx antigo para uma versão web mais bonita.
- Melhorar uma apresentação HTML que já existe.

**Exemplos de pedido:**

- "Cria uma apresentação de 10 slides sobre os resultados do trimestre."
- "Converte este PowerPoint em uma apresentação HTML animada."
- "Monta um deck para apresentar o novo módulo do CRM para as imobiliárias parceiras."

## Como funciona

1. Identifica o modo: apresentação nova, conversão de PowerPoint ou melhoria de uma existente.
2. Faz todas as perguntas de uma vez: objetivo, tamanho, se o conteúdo está pronto e se você quer editar o texto direto no navegador.
3. Se houver imagens, avalia cada uma e monta o roteiro dos slides junto com elas.
4. Pergunta a sensação desejada (confiança, energia, calma, inspiração) e gera 3 prévias de estilo a partir de 12 presets; você escolhe ou mistura.
5. Gera o arquivo HTML completo usando o CSS base obrigatório, o modelo de estrutura e os padrões de animação.
6. Na conversão de PowerPoint, extrai textos, imagens e notas com o script Python e confirma com você antes de estilizar.
7. Entrega: remove as prévias, abre o arquivo e explica navegação, personalização e edição.

## O que você recebe

- Um arquivo `.html` único com a apresentação completa.
- Navegação por setas, espaço, rolagem, toque e pontos de navegação.
- Opcionalmente, modo de edição de texto no navegador (tecla E, salvar com Ctrl+S).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `STYLE_PRESETS.md` | 12 estilos visuais prontos (cores, fontes, elementos marcantes) e padrões a evitar |
| `html-template.md` | Estrutura HTML, recursos de JavaScript, edição no navegador e tratamento de imagens |
| `animation-patterns.md` | Trechos de animação e guia de qual efeito combina com cada sensação |
| `viewport-base.css` | CSS obrigatório que faz cada slide caber exatamente na tela |
| `scripts/extract-pptx.py` | Script Python que extrai textos, imagens e notas de um .pptx |

## Cuidados

- As fontes vêm do Google Fonts ou Fontshare; a apresentação precisa de internet para carregá-las.
- A edição no navegador salva no próprio navegador (localStorage); exporte o arquivo para não perder alterações.
- Para apresentações com a marca Kenlo, peça para usar as cores e fontes oficiais em vez dos presets.
- Revise números e textos antes de apresentar.

## Relacionadas

- [`theme-factory`](../theme-factory/README.md) — temas prontos de cor e fonte para slides e documentos.
- [`market-report`](../../01-marketing-estrategia/market-report/README.md) — conteúdo de relatório para virar apresentação.
- [`market-proposal`](../../01-marketing-estrategia/market-proposal/README.md) — propostas comerciais para apresentar.
- [`animate`](../animate/README.md) — princípios de animação com propósito.
