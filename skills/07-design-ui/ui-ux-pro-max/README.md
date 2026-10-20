# ui-ux-pro-max

> Base de conhecimento pesquisável de UI/UX: estilos visuais, paletas, pares de fontes, tipos de gráfico, estruturas de landing page e boas práticas para 9 tecnologias. O Claude consulta essa base para propor um design system e implementar telas. Para quem cria ou revisa interfaces.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/ui-ux-pro-max` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Python 3 instalado (o script de busca roda localmente, sem internet e sem chave de API). |

## Para que serve

Em vez de o Claude "chutar" um estilo, ele busca em uma base com mais de 50 estilos, cerca de 97 paletas por tipo de produto, 57 pares de fontes, 99 regras de UX e 25 tipos de gráfico. O primeiro passo é sempre gerar um design system completo (padrão de página, estilo, cores, tipografia, efeitos e o que evitar) a partir do tipo de produto e do segmento. Depois ele complementa com buscas específicas e com boas práticas da tecnologia usada.

## Quando usar

- Começar uma tela, landing page ou dashboard do zero e precisar de direção visual.
- Escolher paleta e fontes adequadas ao tipo de produto.
- Revisar uma interface contra regras de acessibilidade, toque, desempenho e layout.

**Exemplos de pedido:**

- "Cria uma landing page para um SaaS de gestão, com um design system adequado."
- "Que tipo de gráfico uso para mostrar a evolução mensal de leads?"
- "Sugere estilo, cores e fontes para o site institucional de uma imobiliária de alto padrão."

## Como funciona

1. Extrai do pedido: tipo de produto, palavras de estilo, segmento e tecnologia (padrão: HTML + Tailwind).
2. Roda o script de busca com `--design-system`, que consulta 5 bases ao mesmo tempo (produto, estilo, cor, landing, tipografia) e aplica regras de decisão para recomendar um design system com justificativa.
3. Faz buscas complementares por domínio quando precisa (estilo, gráfico, UX, tipografia, landing, React, web).
4. Busca boas práticas da tecnologia: HTML/Tailwind, React, Next.js, Vue, Svelte, SwiftUI, React Native, Flutter ou shadcn/ui.
5. Implementa e passa pelo checklist antes de entregar: ícones SVG (não emoji), estados de hover sem deslocar layout, contraste em modo claro e escuro, responsividade em 375, 768, 1024 e 1440 px, acessibilidade.

## O que você recebe

- Um design system recomendado (em texto ou Markdown) com estilo, cores, fontes, efeitos e antipadrões.
- Código da interface seguindo essas recomendações.
- Checklist de qualidade verificado.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `scripts/search.py` | Script de busca (linha de comando) por domínio ou tecnologia |
| `scripts/core.py` | Motor de busca local (BM25) que lê as planilhas |
| `scripts/design_system.py` | Gera o design system recomendado a partir das buscas |
| `data/` | 12 planilhas CSV: estilos, cores, tipografia, produtos, landing, gráficos, ícones, prompts, regras de UX, interface web, desempenho em React e regras de decisão |
| `data/stacks/` | 11 planilhas CSV com boas práticas por tecnologia (React, Next.js, Vue, Nuxt, Nuxt UI, Svelte, Flutter, SwiftUI, React Native, HTML + Tailwind, shadcn) |

## Cuidados

- O caminho do script no `SKILL.md` é `.claude/skills/ui-ux-pro-max/scripts/search.py`; nesta biblioteca a pasta fica em `skills/07-design-ui/ui-ux-pro-max/`. Ajuste o caminho conforme onde a skill estiver instalada.
- Para telas de produto da Kenlo, o KDLS é obrigatório: use esta base para referência, mas cores, fontes e componentes vêm do KDLS.
- As recomendações são genéricas por segmento; valide com a marca.

## Relacionadas

- [`product-design`](../product-design/README.md) — princípios e estrutura de design system em português.
- [`critique`](../critique/README.md) — avaliação de design do resultado.
- [`kpi-dashboard-design`](../../12-dados-engenharia/kpi-dashboard-design/README.md) — desenho de dashboards de indicadores.
- [`market-landing`](../../04-anuncios-conversao-vendas/market-landing/README.md) — revisão de conversão de landing pages.
