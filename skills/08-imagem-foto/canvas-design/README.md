# canvas-design

> Cria pôsteres e peças visuais estáticas de alto acabamento, em PNG ou PDF, a partir de uma "filosofia de design" — para quem quer uma peça com cara de obra de designer.

| | |
|---|---|
| **Área** | Imagem e foto |
| **Como chamar** | `/canvas-design` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Anthropic, via kursku/skills |
| **Requer** | Nada além do Claude (o Claude gera a peça por código; pode precisar de fontes instaladas) |

## Para que serve

A skill primeiro inventa um "movimento estético" para a peça (com nome e princípios de forma, cor, espaço e ritmo) e depois o transforma em uma composição visual com pouquíssimo texto. A ideia é sair do genérico: a peça deve parecer feita à mão por alguém muito experiente, com margens corretas, nada sobreposto e tipografia cuidada.

## Quando usar

- Você precisa de um pôster para evento, convite ou capa de material.
- Você quer uma peça visual conceitual (ex.: capa de relatório anual, arte para parede do escritório).
- Você quer várias páginas no mesmo estilo, como um pequeno livro visual.

**Exemplos de pedido:**

- "Cria um pôster minimalista para o nosso evento de corretores."
- "Quero uma peça visual em PDF sobre 'a chave do primeiro imóvel', com pouco texto."
- "Faz uma capa artística para o relatório de mercado imobiliário da Kenlo."

## Como funciona

1. O Claude escreve uma filosofia de design (4 a 6 parágrafos) com nome do movimento, e salva como `.md`.
2. Identifica uma referência sutil ao tema do pedido para "esconder" na composição.
3. Cria a peça em uma página (PNG ou PDF), com 90% visual e 10% texto, usando padrões, formas e paleta limitada.
4. Confere que nada sai da página ou se sobrepõe, e faz uma segunda passada só para refinar o que já existe (sem acrescentar elementos).
5. Se você pedir mais páginas, cria variações no mesmo estilo, contando uma pequena história.

## O que você recebe

- Um arquivo `.png` ou `.pdf` com a peça final (ou várias páginas, se pedir).
- Um arquivo `.md` com a filosofia de design usada.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `LICENSE.txt` | Licença Apache 2.0 |

## Cuidados

- O `SKILL.md` manda procurar fontes numa pasta `./canvas-fonts`, que não existe neste repositório; o Claude pode precisar usar fontes do sistema ou baixar fontes livres.
- A skill é pensada para arte, não para peças com muita informação (tabelas, preços, regras de campanha). Para isso use outras skills de design.
- Confira cores e logotipo da marca antes de publicar: a skill tem liberdade criativa e não segue o manual da Kenlo sozinha.

## Relacionadas

- [`algorithmic-art`](../algorithmic-art/README.md) — versão interativa, gerada por código, com variações por semente
- [`theme-factory`](../../07-design-ui/theme-factory/README.md) — temas de cor e fonte prontos
- [`critique`](../../07-design-ui/critique/README.md) — avaliação crítica do design antes de publicar
