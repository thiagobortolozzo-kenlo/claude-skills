# distill

> Simplifica uma tela até o essencial, removendo elementos, opções e textos que atrapalham o usuário a chegar ao objetivo. Para quem cria ou revisa interfaces.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/distill` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: impeccable (pbakaus) via kursku/skills |
| **Requer** | Nada além do Claude. A skill pede para consultar antes a skill `frontend-design` (plugin), se estiver instalada. |

## Para que serve

Telas acumulam botões, cards, cores e textos com o tempo, até ninguém saber o que é mais importante. A skill descobre o objetivo principal da tela e remove tudo que não ajuda a chegar nele: uma ação principal, poucas secundárias, o resto escondido até ser necessário. Simplificar não é tirar funcionalidade, é tirar obstáculos.

## Quando usar

- Uma tela tem muitos botões competindo e o usuário não sabe por onde começar.
- Um formulário pede informação demais ou tem etapas desnecessárias.
- Cards dentro de cards, várias cores e fontes sem motivo.

**Exemplos de pedido:**

- "Essa tela está poluída, simplifica."
- "Reduz este formulário de cadastro ao mínimo necessário."
- "A tela de cadastro de imóvel do CRM tem campos demais; quero só o essencial visível e o resto em 'mais detalhes'."

## Como funciona

1. Coleta contexto obrigatório: público, casos de uso e o que é essencial versus "seria bom ter". Se faltar algo, para e pergunta.
2. Consulta a skill `frontend-design` para princípios e antipadrões.
3. Identifica fontes de complexidade: elementos demais, variação sem propósito, sobrecarga de informação, ruído visual, hierarquia confusa.
4. Define o propósito único da tela, os elementos essenciais e o que pode ir para revelação progressiva (acordeões, etapas).
5. Simplifica arquitetura, visual (1 a 2 cores, uma família de fonte), layout, interação (padrões inteligentes, menos etapas), conteúdo (textos pela metade) e código (CSS e componentes mortos).
6. Verifica se as tarefas ficaram mais rápidas e se nada necessário sumiu, e documenta o que foi removido.

## O que você recebe

- Diagnóstico do que gera complexidade.
- Versão simplificada aplicada no código.
- Lista do que foi removido ou escondido, com justificativa.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `.skillshare-meta.json` | Metadados de instalação (origem no repositório impeccable, versão) |

## Cuidados

- Valide com produto antes de remover campos ou funções que algum cliente usa.
- Simples demais também confunde: rótulos claros e acessibilidade continuam obrigatórios.
- Em telas da Kenlo, use os componentes do KDLS ao reorganizar.

## Relacionadas

- [`clarify`](../clarify/README.md) — melhora os textos que sobraram.
- [`quieter`](../quieter/README.md) — reduz intensidade visual sem tirar elementos.
- [`critique`](../critique/README.md) — diagnóstico antes de simplificar.
- [`signup`](../../04-anuncios-conversao-vendas/signup/README.md) — fluxos de cadastro com menos atrito.
