# copy-editing

> Revisa e melhora textos de marketing que já existem, em passadas organizadas, para quem tem uma página, e-mail ou post pronto e quer deixá-lo mais claro e convincente.

| | |
|---|---|
| **Área** | Copy e conteúdo |
| **Como chamar** | `/copy-editing` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Em vez de reescrever tudo do zero, esta skill melhora o que já existe, mantendo a mensagem e a voz do autor. Ela revisa o texto em sete "varreduras", cada uma olhando uma coisa só (clareza, tom, benefício, prova, especificidade, emoção e risco), e no fim remove os vícios típicos de texto gerado por IA. Também ajuda a atualizar conteúdos antigos que perderam tráfego.

## Quando usar

- Uma landing page, e-mail ou anúncio está "ok", mas não convence.
- O texto ficou longo, confuso ou com cara de IA.
- Um artigo antigo do blog tem dados velhos e está perdendo posição no Google.

**Exemplos de pedido:**

- "Revisa essa copy da landing page e deixa mais direta."
- "Esse texto está com cara de IA, faz uma limpeza."
- "Atualiza esse artigo de 2023 sobre gestão de imobiliárias com o que mudou."

## Como funciona

1. Se existir o arquivo de contexto de produto (`.agents/product-marketing.md` ou `.claude/product-marketing.md`), o Claude lê para respeitar a voz da marca. Pergunta o objetivo do texto, a ação esperada, problemas conhecidos e provas disponíveis.
2. Faz as **sete varreduras**, uma de cada vez, voltando às anteriores para não estragar o que já foi corrigido:
   - **Clareza**: o leitor entende?
   - **Voz e tom**: soa sempre igual?
   - **"E daí?"**: cada recurso vira um benefício?
   - **Prove**: cada afirmação tem evidência?
   - **Especificidade**: números, prazos e exemplos no lugar de palavras vagas.
   - **Emoção**: o texto faz o leitor sentir algo, sem manipular?
   - **Risco zero**: as dúvidas perto do botão foram respondidas?
3. Faz checagens rápidas de palavra, frase e parágrafo, e a checagem de vícios de IA (ex.: "não é X, é Y", listas de "sem isso, sem aquilo", perguntas que se respondem sozinhas).
4. Para textos importantes, simula um painel de 3 a 5 especialistas que dão nota de 1 a 10 e revisa até todos darem 7 ou mais.
5. Apresenta as mudanças com o motivo de cada uma; a decisão final é do autor.

## O que você recebe

- Lista do que foi encontrado em cada varredura, com a sugestão de edição.
- Texto revisado.
- Marcações `[NEED: ...]` onde falta um dado real (a skill não inventa números).
- Para atualizações de conteúdo: análise de lacunas e recomendação de atualizar ou reescrever.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue (as sete varreduras, painel de especialistas, checagens) |
| `references/checklist.md` | Checklist final de revisão cobrindo todas as varreduras e os vícios de IA |
| `references/content-refresh.md` | Como atualizar conteúdo antigo: análise de lacunas na busca, atualizar vs. reescrever, frequência |
| `references/plain-english-alternatives.md` | Lista de A a Z de palavras complicadas e alternativas simples (em inglês) |
| `evals/evals.json` | Casos de teste para avaliar se a skill está funcionando bem |

## Cuidados

- As listas de palavras são em inglês. Para textos em português, o método das varreduras vale igual, mas revise as trocas de palavras com cuidado.
- A skill sugere provas e números; se eles não existirem, não invente. Use os dados reais da Kenlo.
- Revise o resultado antes de publicar.

## Relacionadas

- [`copywriting`](../copywriting/README.md) — para escrever do zero; use esta skill depois do rascunho
- [`avoid-ai-writing`](../avoid-ai-writing/README.md) — foco só em remover vícios de IA
- [`cro`](../../04-anuncios-conversao-vendas/cro/README.md) — quando o problema é a estrutura da página, não só o texto
- [`ab-testing`](../../04-anuncios-conversao-vendas/ab-testing/README.md) — testar a versão revisada contra a original
