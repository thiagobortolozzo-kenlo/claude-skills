# cro

> Analisa páginas e formulários de marketing e diz o que mudar para converter mais visitantes em leads ou clientes.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/cro` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. Mande o link, um print ou o texto da página |

## Para que serve

CRO (otimização da taxa de conversão) é melhorar uma página para que mais gente faça a ação desejada: cadastrar, pedir demo, comprar. A skill avalia proposta de valor, título, botões, hierarquia visual, prova social, objeções e atritos, e entrega uma lista priorizada de mudanças, ideias de teste e textos alternativos. Também cobre otimização de formulários.

## Quando usar

- Uma landing page recebe tráfego mas quase ninguém converte.
- Vai redesenhar a home, a página de preços ou uma página de recurso.
- O formulário de contato ou de demo tem muitos abandonos.

**Exemplos de pedido:**

- "Essa landing não está convertendo. O que está errado? [link]"
- "Revisa a página de preços da Kenlo e sugere melhorias."
- "Nosso formulário de demonstração tem 9 campos. Quais posso cortar?"

## Como funciona

1. Faz uma avaliação inicial: tipo de página, objetivo de conversão e público.
2. Analisa a página em sete pontos, do mais ao menos impactante: clareza da proposta de valor, título, CTA, hierarquia visual, sinais de confiança, tratamento de objeções e atritos.
3. Aplica o roteiro específico do tipo de página (home, landing, preços, recurso, blog).
4. Para formulários, consulta o guia de campos, formulários em etapas e mensagens de erro.
5. Organiza o resultado em ganhos rápidos, mudanças de alto impacto, ideias de teste e alternativas de texto.

## O que você recebe

- Lista de ganhos rápidos para aplicar agora.
- Mudanças de alto impacto priorizadas.
- Ideias de teste A/B.
- Alternativas de título, subtítulo e CTA.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/form.md` | Guia de otimização de formulários (campos, etapas, erros) |
| `references/experiments.md` | Banco de ideias de experimentos por tipo de página |
| `evals/evals.json` | Casos de teste da skill |

## Cuidados

- As recomendações são hipóteses fortes, não garantias. Teste as mudanças grandes antes de aplicar para todos.
- Se a página tiver pouco tráfego, priorize as mudanças óbvias em vez de testes.

## Relacionadas

- [`ab-testing`](../ab-testing/README.md) — testa as mudanças recomendadas
- [`signup`](../signup/README.md) — quando o problema está no cadastro em si
- [`popups`](../popups/README.md) — captura complementar na página
- [`copywriting`](../../02-copy-conteudo/copywriting/README.md) — reescrita completa do texto da página
