# polish

> Passada final de qualidade antes de publicar: alinhamento, espaçamento, estados de interação, textos, ícones e consistência. Para quem vai entregar uma tela ou página.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/polish` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: impeccable (pbakaus) via kursku/skills |
| **Requer** | Nada além do Claude. A skill pede para consultar antes a skill `frontend-design` (plugin), se estiver instalada. |

## Para que serve

A diferença entre "entregue" e "bem acabado" está nos detalhes: um espaçamento de 13px no meio de um padrão de 8, um botão sem estado de foco, um ícone de outra família, um texto com letra maiúscula diferente. A skill percorre a tela de forma sistemática e corrige esses detalhes. Na Kenlo, também é o momento de conferir se tudo usa os tokens e componentes do KDLS.

## Quando usar

- A funcionalidade está pronta e vai para produção em breve.
- Algo "parece estranho" na tela, mas ninguém sabe apontar o quê.
- Antes de tirar prints para material de marketing.

**Exemplos de pedido:**

- "Faz um polish final nesta página antes de publicar."
- "Revisa espaçamentos, estados de hover e foco e textos desta tela."
- "A nova tela de relatórios do CRM está pronta; faz a passada final e confere aderência ao KDLS."

## Como funciona

1. Consulta a skill `frontend-design` para princípios e antipadrões.
2. Avalia se a tela está funcionalmente completa (não se faz polish em algo inacabado), qual o nível de qualidade esperado e o prazo.
3. Revisa por dimensão: alinhamento e espaçamento, tipografia, cor e contraste (tokens, sem cores fixas), estados de interação (padrão, hover, foco, ativo, desabilitado, carregando, erro, sucesso), transições, textos, ícones e imagens, formulários, estados de borda, responsividade, desempenho e qualidade do código.
4. Passa por um checklist de cerca de 20 itens (ex.: alvos de toque de 44x44px, contraste WCAG AA, navegação por teclado, sem erros no console, sem deslocamento de layout).
5. Verificação final: usar a tela de verdade, testar em aparelhos reais, comparar com o design original e checar todos os estados.

## O que você recebe

- Lista de problemas de acabamento encontrados.
- Correções aplicadas no código.
- Checklist preenchido de qualidade antes do lançamento.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `.skillshare-meta.json` | Metadados de instalação (origem no repositório impeccable, versão) |

## Cuidados

- Polish é o último passo. Se a tela ainda está mudando, espere.
- Se o mesmo problema aparece em todo lugar, o ajuste deve ser no sistema (tokens do KDLS), não tela a tela.
- Peça para outra pessoa olhar também; olhos novos pegam o que escapa.

## Relacionadas

- [`normalize`](../normalize/README.md) — alinha a tela ao KDLS antes do acabamento.
- [`harden`](../harden/README.md) — trata erros e dados extremos.
- [`fixing-accessibility`](../fixing-accessibility/README.md) — auditoria detalhada de acessibilidade.
- [`screenshots`](../screenshots/README.md) — prints de marketing depois do acabamento.
