# fixing-accessibility

> Audita e corrige problemas de acessibilidade em HTML (rótulos, teclado, foco, contraste, erros de formulário) com mudanças pequenas e pontuais. Para quem constrói ou revisa telas.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/fixing-accessibility` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: ibelick/ui-skills |
| **Requer** | Nada além do Claude |

## Para que serve

Uma tela acessível funciona para quem usa teclado, leitor de tela ou tem baixa visão, e também fica melhor para todo mundo. A skill traz um conjunto de regras priorizadas e pode ser usada de dois jeitos: como "regra da conversa" (tudo que o Claude criar segue essas regras) ou como revisão de um arquivo, apontando cada violação com a linha exata, o porquê e a correção.

## Quando usar

- Ao criar ou alterar botões, links, campos, menus, modais, abas e dropdowns.
- Ao montar formulários com validação e mensagens de erro.
- Para revisar conformidade com WCAG antes de lançar.

**Exemplos de pedido:**

- "/fixing-accessibility src/components/Modal.tsx"
- "Revisa a acessibilidade deste formulário de contato."
- "Os botões só com ícone da listagem de imóveis estão acessíveis? Corrige o que faltar."

## Como funciona

1. Sem arquivo: aplica as regras a todo trabalho de interface feito na conversa.
2. Com arquivo: revisa contra todas as regras e, para cada problema, cita o trecho exato, explica em uma frase por que importa e propõe a correção em código.
3. Segue a ordem de prioridade: nomes acessíveis, acesso por teclado, foco e modais (críticos); semântica e formulários (alta); anúncios dinâmicos (média-alta); contraste e estados (média); mídia e movimento (média-baixa).
4. Respeita limites: mudanças mínimas, sem refatorar código não relacionado, sem trocar biblioteca de UI e sem ARIA quando o HTML nativo já resolve.

## O que você recebe

- Relatório de violações com trecho, motivo e correção.
- Ou código já corrigido, com mudanças pequenas e localizadas.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Regras de acessibilidade por prioridade, exemplos de correção e orientação de revisão |
| `.skillshare-meta.json` | Metadados de instalação (origem no repositório ibelick/ui-skills, versão) |

## Cuidados

- A revisão é feita lendo o código; não substitui teste com leitor de tela real nem ferramentas como axe.
- Em componentes da Kenlo, prefira corrigir no componente do KDLS para que a correção valha para todas as telas.
- Para widgets complexos (combobox, menu), a skill recomenda usar componentes acessíveis prontos em vez de criar do zero.

## Relacionadas

- [`harden`](../harden/README.md) — resiliência geral, inclui acessibilidade.
- [`polish`](../polish/README.md) — checklist final que inclui contraste e foco.
- [`fixing-motion-performance`](../fixing-motion-performance/README.md) — mesma família de regras, para animações.
- [`colorize`](../colorize/README.md) — uso de cor com contraste adequado.
