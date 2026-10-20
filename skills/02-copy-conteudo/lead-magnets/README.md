# lead-magnets

> Planeja iscas digitais (e-book, checklist, template, webinar, quiz) que trocam conteúdo útil por contatos qualificados, para quem cuida de geração de leads.

| | |
|---|---|
| **Área** | Copy e conteúdo |
| **Como chamar** | `/lead-magnets` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Ajuda a decidir o que oferecer em troca do e-mail (e em que formato), como fechar o acesso, como montar a página de captura e por onde divulgar. O foco é atrair leads que realmente combinam com o produto, não só aumentar a lista.

## Quando usar

- Criar a primeira isca digital do site ou do blog.
- Uma isca existente atrai muitos contatos, mas de baixa qualidade.
- Decidir o formato certo para cada etapa da jornada (descoberta, avaliação, decisão).

**Exemplos de pedido:**

- "O que podemos oferecer em troca do e-mail no nosso blog?"
- "Monta um plano de isca digital para donos de imobiliária que estão pensando em trocar de sistema."
- "Transforma nosso artigo sobre captação de imóveis em um checklist para download."

## Como funciona

1. Se existir o arquivo de contexto de produto (`.agents/product-marketing.md` ou `.claude/product-marketing.md`), o Claude lê primeiro. Depois pergunta sobre o negócio, como os leads são captados hoje, que conteúdos já existem para reaproveitar e qual o objetivo.
2. Aplica os princípios: resolver um problema específico, combinar com a etapa do comprador, parecer valioso e ser consumido em menos de 30 minutos, levar naturalmente ao produto.
3. Escolhe o formato numa tabela de tipos (checklist, cheat sheet, template, swipe file, e-book, mini-curso, quiz, webinar, biblioteca, teste grátis), com esforço e tempo de criação.
4. Define o nível de bloqueio (total, parcial, aberto, ou "upgrade" dentro de um post) e quais campos pedir. Regra: o mínimo necessário, pois cada campo extra reduz a conversão.
5. Estrutura a página de captura, a forma de entrega e a página de agradecimento.
6. Planeja a divulgação (blog, popups, redes, anúncios, parceiros) e as métricas.

## O que você recebe

- Recomendação de isca: formato, tema, etapa do comprador, justificativa e esforço.
- Roteiro do conteúdo.
- Plano de captura: o que bloquear, campos do formulário, estrutura da página.
- Plano de divulgação e de medição, com ideias de teste A/B.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/format-guide.md` | Como criar cada formato (e-book, checklist, cheat sheet, template, swipe file, mini-curso, quiz, webinar) |
| `references/benchmarks.md` | Referências de conversão, qualidade de lead, custo e prazos |
| `evals/evals.json` | Casos de teste para avaliar se a skill está funcionando bem |

## Cuidados

- Formulário de captura coleta dados pessoais: informe a finalidade, peça só o necessário e tenha a política de privacidade visível (LGPD).
- Os benchmarks são de mercado americano; use como referência, não como meta.
- Prova social como "baixado por 5.000 pessoas" só com número real.
- A skill planeja a isca; o conteúdo em si pode ser escrito com a skill `copywriting`.

## Relacionadas

- [`free-tools`](../free-tools/README.md) — quando a isca é uma ferramenta interativa (calculadora, quiz)
- [`emails`](../emails/README.md) — sequência de nutrição depois da captura
- [`popups`](../../04-anuncios-conversao-vendas/popups/README.md) — captura via popup no site
- [`content-strategy`](../../01-marketing-estrategia/content-strategy/README.md) — escolher temas a partir do plano de conteúdo
