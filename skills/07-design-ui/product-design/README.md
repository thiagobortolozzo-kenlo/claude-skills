# product-design

> Guia de design de produto em português, inspirado nos princípios da Apple: design system, tokens, fluxos de UX, onboarding, estados vazios, interface por voz e crítica construtiva. Para quem desenha produto ou revisa experiência.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/product-design` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português (sem acentos no arquivo) |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

É uma base de conhecimento que o Claude usa para pensar produto de forma estruturada. Traz os 10 princípios de design atribuídos a Jony Ive/Apple, princípios de design cognitivo, a estrutura de um design system (tokens, componentes, padrões e guias), um modelo de fluxo de UX em 6 etapas, um roteiro de onboarding de 4 telas, padrões de estado vazio, princípios para interface por voz, um framework de crítica em 5 passos, checklist de UI e um roteiro de design sprint de 5 dias.

## Quando usar

- Estruturar ou revisar um design system e seus tokens.
- Mapear um fluxo de experiência (da entrada até o próximo passo) ou desenhar um onboarding.
- Dar uma crítica de UI construtiva e organizada para o time.

**Exemplos de pedido:**

- "Mapeia o fluxo de UX do primeiro acesso ao produto."
- "Faz uma crítica construtiva desta tela usando observação, princípio, impacto, alternativa e trade-off."
- "Desenha o onboarding dos primeiros 5 minutos de uma imobiliária nova no CRM da Kenlo."

## Como funciona

1. Usa os princípios (simplicidade, coerência, acessibilidade como padrão, detalhes) como critério de decisão.
2. Para design system, segue a estrutura de pastas e categorias de tokens (cores, tipografia, espaçamento, sombras, movimento, bordas).
3. Para fluxos, usa as etapas: ponto de entrada, contexto, ação, feedback, resultado e próximo passo.
4. Para crítica, aplica observação, princípio, impacto, alternativa e trade-off, mais o checklist de UI (contraste, toque de 44x44px, estados, responsividade, acessibilidade).
5. A skill lista "comandos" internos (`/design-critique`, `/design-tokens`, `/ux-flow`, `/onboarding`, `/design-system`, `/accessibility`, `/visual-identity`, `/voice-ux`) como atalhos de pedido dentro da própria skill.

## O que você recebe

- Estruturas e documentos em texto: fluxos, roteiros de onboarding, propostas de tokens, críticas e checklists.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Princípios, estruturas, exemplos e frameworks que o Claude segue |

## Cuidados

- Os tokens, paleta, tipografia e roteiros de voz do arquivo são de um produto de exemplo chamado "Auri" (roxo e rosa, fonte Inter). Não são da Kenlo: para telas Kenlo, o design system obrigatório é o KDLS.
- Os "comandos" listados na skill não são skills separadas desta biblioteca; são formas de pedir dentro dela.
- As skills relacionadas citadas no arquivo (`analytics-product`, `growth-engine` etc.) não existem nesta biblioteca.

## Relacionadas

- [`critique`](../critique/README.md) — crítica de design mais detalhada e priorizada.
- [`normalize`](../normalize/README.md) — aplica o design system (KDLS) a telas existentes.
- [`ui-ux-pro-max`](../ui-ux-pro-max/README.md) — base pesquisável de estilos, paletas e boas práticas.
- [`onboarding`](../../04-anuncios-conversao-vendas/onboarding/README.md) — estratégia de ativação de usuários.
