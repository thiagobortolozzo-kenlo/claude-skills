# animate

> Analisa uma funcionalidade e adiciona animações e microinterações com propósito (feedback, transições, momentos de destaque). Para quem cria ou melhora interfaces.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/animate` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: impeccable (pbakaus) via kursku/skills |
| **Requer** | Nada além do Claude. A skill pede para consultar antes a skill `frontend-design` (plugin), se estiver instalada. |

## Para que serve

Interfaces sem movimento parecem "duras": o botão não responde ao clique, o modal aparece de repente, o usuário não percebe que algo foi salvo. A skill identifica onde o movimento ajuda a entender e dar retorno, planeja uma animação principal e um conjunto enxuto de microinterações, e implementa com tempos e curvas de aceleração adequados, respeitando quem prefere menos movimento.

## Quando usar

- Ações sem retorno visual (clicar em salvar e "nada acontece").
- Mudanças de estado bruscas (abrir/fechar painel, trocar de aba, carregar página).
- Você quer um momento de destaque na abertura de uma landing page, sem exagero.

**Exemplos de pedido:**

- "Adiciona microinterações nos botões e no formulário desta página."
- "Quero uma animação de entrada elegante no hero da landing page."
- "No CRM, quando o corretor move um lead de etapa no funil, quero um feedback visual claro."

## Como funciona

1. Coleta contexto obrigatório: público, casos de uso, personalidade da marca e limites de desempenho. Se não tiver certeza, para e pergunta antes de seguir.
2. Consulta a skill `frontend-design` para princípios e antipadrões.
3. Mapeia oportunidades: falta de feedback, transições bruscas, relações pouco claras, pontos de orientação.
4. Planeja em camadas: um momento principal, camada de feedback, camada de transição e camada de encanto.
5. Implementa entradas, microinterações, transições de estado e navegação com durações recomendadas (100 a 800 ms conforme o caso) e curvas suaves (sem "bounce" ou "elastic").
6. Garante desempenho (só `transform` e `opacity`) e suporte a `prefers-reduced-motion`.
7. Verifica fluidez (60 fps), tempo adequado e que nada bloqueia a interação.

## O que você recebe

- Plano de animação explicando o porquê de cada movimento.
- Código CSS/JS das animações (ou com Framer Motion/GSAP, se o projeto já usa).
- Versão alternativa sem movimento para quem configurou "reduzir movimento".

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `.skillshare-meta.json` | Metadados de instalação (origem no repositório impeccable, versão) |

## Cuidados

- A skill vai fazer perguntas antes de começar; responda sobre público e tom da marca para evitar animação demais.
- Animação em excesso cansa e pesa. Uma animação bem feita vale mais que várias espalhadas.
- Em telas de produto da Kenlo, use os tempos e padrões de movimento do KDLS quando existirem.

## Relacionadas

- [`fixing-motion-performance`](../fixing-motion-performance/README.md) — corrige animações que travam ou pesam.
- [`delight`](../delight/README.md) — momentos de encanto além do movimento (texto, ilustração, celebração).
- [`scroll-experience`](../scroll-experience/README.md) — animações guiadas pela rolagem da página.
- [`quieter`](../quieter/README.md) — quando o movimento passou do ponto e precisa ser suavizado.
