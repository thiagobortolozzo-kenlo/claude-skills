# scroll-experience

> Ajuda a construir páginas que contam uma história conforme a pessoa rola: parallax, seções fixas, revelações e rolagem horizontal, no estilo de páginas de produto da Apple. Para quem cria landing pages e páginas de campanha.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/scroll-experience` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: vibeship-spawner-skills (Apache 2.0) |
| **Requer** | Nada além do Claude. O código gerado pode usar bibliotecas como GSAP ScrollTrigger, Framer Motion, Locomotive Scroll ou Lenis, ou CSS nativo. |

## Para que serve

A rolagem pode ser usada como narrativa: cada seção revela uma parte da história até chegar ao chamado para ação. A skill traz as ferramentas e padrões para isso (animações ligadas à rolagem, camadas de parallax com velocidades diferentes, seções fixas, rolagem horizontal) e alerta para os erros comuns, como tirar o controle da rolagem do usuário ou fazer algo que só funciona no desktop.

## Quando usar

- Página de lançamento de produto que precisa contar uma história visual.
- Apresentação de funcionalidades passo a passo, com a imagem fixa e o texto mudando.
- Comparações antes/depois ou galerias com rolagem horizontal.

**Exemplos de pedido:**

- "Quero uma landing page com storytelling na rolagem para o lançamento."
- "Cria uma seção fixa que mostra as funcionalidades uma a uma enquanto a pessoa rola."
- "Monta a página de um empreendimento imobiliário com parallax mostrando fachada, área de lazer e planta."

## Como funciona

1. Escolhe a ferramenta certa para o caso (GSAP ScrollTrigger para animações complexas, Framer Motion em React, CSS `scroll-timeline` para casos simples).
2. Estrutura a narrativa em etapas: gancho, contexto, jornada, clímax e resolução (chamado para ação).
3. Aplica os padrões: camadas de parallax, revelação de texto, seções fixas e rolagem horizontal.
4. Evita os antipadrões: sequestro da rolagem, animação em excesso e experiência só para desktop.
5. Aponta os pontos sensíveis: travamentos, parallax quebrando no celular, acessibilidade e conteúdo importante escondido atrás de animação.

## O que você recebe

- Estrutura narrativa da página.
- Código de exemplo das animações de rolagem (JavaScript/CSS).
- Recomendações de desempenho e versão simplificada para celular.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Papel, padrões, exemplos de código, antipadrões e pontos sensíveis |

## Cuidados

- A maior parte do tráfego vem do celular: teste em aparelho real e simplifique os efeitos lá.
- Respeite quem configurou "reduzir movimento" no sistema.
- Algumas skills citadas no arquivo (`3d-web-experience`, `landing-page-design`) não existem nesta biblioteca.
- Revise o resultado em vários navegadores antes de publicar.

## Relacionadas

- [`fixing-motion-performance`](../fixing-motion-performance/README.md) — corrige travamentos de animação na rolagem.
- [`animate`](../animate/README.md) — microinterações e animações com propósito.
- [`market-landing`](../../04-anuncios-conversao-vendas/market-landing/README.md) — revisão de conversão da landing page.
- [`real-estate-marketing`](../../01-marketing-estrategia/real-estate-marketing/README.md) — marketing para o mercado imobiliário.
