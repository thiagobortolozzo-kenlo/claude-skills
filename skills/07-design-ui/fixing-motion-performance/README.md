# fixing-motion-performance

> Audita e corrige animações que travam ou pesam (layout recalculado a cada quadro, blur em áreas grandes, animação ligada à rolagem mal feita). Para quem constrói ou revisa interfaces com movimento.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/fixing-motion-performance` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: ibelick/ui-skills |
| **Requer** | Nada além do Claude |

## Para que serve

Animação que engasga passa sensação de produto lento, principalmente em celulares mais simples. A skill traz regras priorizadas sobre como o navegador desenha a tela (composição, pintura e layout) e aponta o que está fazendo a animação pesar. Pode ser usada como "regra da conversa" ou para revisar um arquivo, sempre com correções dentro da biblioteca de animação que o projeto já usa.

## Quando usar

- Uma animação ou transição está travando.
- Efeitos ligados à rolagem da página deixam tudo lento.
- Revisão de componentes que usam `will-change`, blur, filtros ou medições de tamanho.

**Exemplos de pedido:**

- "/fixing-motion-performance src/components/Hero.tsx"
- "A animação do menu lateral está engasgando, descobre por quê."
- "O efeito de rolagem na página de lançamento de empreendimento trava no celular. Corrige sem tirar o efeito."

## Como funciona

1. Sem arquivo: aplica as regras a toda animação criada na conversa.
2. Com arquivo: revisa contra as regras e, para cada problema, cita o trecho, explica em uma frase e propõe a correção em código.
3. Segue a prioridade: padrões proibidos (ler e escrever layout no mesmo quadro, animar pela posição de rolagem, loops sem fim) e escolha do mecanismo (preferir `transform` e `opacity`) primeiro; depois medição (técnica FLIP), rolagem (Scroll/View Timelines, IntersectionObserver), pintura, camadas, blur e filtros, e transições de página.
4. Respeita limites: não troca de biblioteca de animação nem mistura estilos no mesmo componente sem pedido explícito.

## O que você recebe

- Relatório de problemas de desempenho com trecho, motivo e correção.
- Ou código corrigido, mantendo o efeito sempre que possível (prefere simplificar a técnica a remover o movimento).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Regras de desempenho de animação por prioridade, glossário, exemplos de correção e orientação de revisão |
| `.skillshare-meta.json` | Metadados de instalação (origem no repositório ibelick/ui-skills, versão) |

## Cuidados

- A análise é feita lendo o código; confirme o ganho com as ferramentas de desempenho do navegador.
- Teste em celular intermediário, não só no computador de desenvolvimento.

## Relacionadas

- [`animate`](../animate/README.md) — cria as animações que esta skill otimiza.
- [`scroll-experience`](../scroll-experience/README.md) — experiências guiadas por rolagem.
- [`fixing-accessibility`](../fixing-accessibility/README.md) — mesma família de regras, para acessibilidade.
- [`quieter`](../quieter/README.md) — quando a solução é ter menos movimento.
