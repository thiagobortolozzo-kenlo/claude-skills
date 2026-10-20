# product-marketing

> Cria e mantém o documento de contexto de produto (posicionamento, cliente ideal, concorrentes, voz e provas) que todas as outras skills de marketing leem antes de trabalhar.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/product-marketing` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Evita que você repita as mesmas informações sobre a Kenlo em cada pedido. A skill monta um arquivo único, `.agents/product-marketing.md`, com 12 seções: visão do produto, público-alvo, personas, dores, concorrentes, diferenciais, objeções, forças de troca, linguagem do cliente, voz da marca, provas e metas. Depois disso, as outras skills de marketing (copy, preço, lançamento, concorrentes, plano) leem esse arquivo automaticamente. Cada atualização ganha número de versão e registro do que mudou.

## Quando usar

- No começo de qualquer projeto de marketing novo, antes das outras skills.
- Quando o posicionamento, o público ou os concorrentes mudaram.
- Quando você percebe que está explicando o produto de novo em cada conversa.

**Exemplos de pedido:**

- "/product-marketing"
- "Monte o contexto de produto da Kenlo a partir do site e dos documentos deste repositório."
- "Atualize o contexto de produto: agora atendemos também administradoras de condomínio."

## Como funciona

1. Procura o arquivo em `.agents/product-marketing.md` (e em locais antigos, como `.claude/`). Se existir, resume o que já tem, mostra a versão e as últimas mudanças e pergunta o que atualizar.
2. Se não existir, oferece dois caminhos: rascunho automático a partir do repositório (README, páginas, textos de marketing) ou montar do zero, uma seção por vez.
3. Coleta as 12 seções, insistindo em frases reais dos clientes em vez de descrições polidas.
4. Mostra o documento completo e pede ajustes.
5. Salva com versão (v1, v2...) e uma linha no histórico dizendo o que mudou e por quê.

## O que você recebe

- Arquivo `.agents/product-marketing.md` com: visão do produto, público e jobs to be done, personas (B2B), dores, cenário competitivo, diferenciais, objeções e anti-persona, forças de troca (empurra, puxa, hábito, ansiedade), linguagem do cliente e glossário, voz da marca, provas, metas e histórico de versões.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais: fluxo, as 12 seções, modelo do documento e regras de versão |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- O arquivo fica dentro do projeto em que você está trabalhando. Se o projeto for compartilhado, todos verão o conteúdo; não inclua dados pessoais de clientes nem números confidenciais sem necessidade.
- O rascunho automático só é tão bom quanto os textos do repositório; revise cada seção.
- Mudanças de posicionamento afetam tudo o que as outras skills geram depois; registre o motivo no histórico.

## Relacionadas

- [`customer-research`](../customer-research/README.md) — traz as frases reais dos clientes para o documento.
- [`marketing-plan`](../marketing-plan/README.md) — usa este contexto como base do plano.
- [`market-brand`](../market-brand/README.md) — aprofunda a seção de voz da marca.
- [`competitor-profiling`](../competitor-profiling/README.md) — alimenta a seção de concorrentes com dados.
