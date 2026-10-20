# aso

> Faz uma auditoria completa da ficha de um app na App Store ou no Google Play, com nota e plano de melhorias, para quem cuida de aplicativos.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/aso` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. Basta o link da ficha do app; o Claude precisa conseguir acessar a página |

## Para que serve

ASO é o "SEO das lojas de aplicativos". A skill lê a ficha do app (título, subtítulo, descrição, palavras-chave, imagens, avaliações), dá uma nota de 0 a 100 dividida em seis dimensões e diz o que mudar para o app aparecer mais nas buscas e ser mais baixado.

## Quando usar

- O app tem poucas instalações e você quer saber se a ficha está atrapalhando.
- Vai atualizar textos ou screenshots da loja.
- Quer comparar sua ficha com a de concorrentes.

**Exemplos de pedido:**

- "Audita a ficha do nosso app no Google Play: [link]."
- "Por que as pessoas não estão baixando o app? Aqui está o link da App Store."
- "Compara a ficha do app da Kenlo com a de dois concorrentes."

## Como funciona

1. Identifica a loja pelo link e coleta os campos da ficha.
2. Avalia o "tamanho" da marca (dominante, estabelecida ou desafiante) para ajustar o rigor da nota.
3. Pontua seis dimensões com pesos definidos (título, descrição, recursos visuais etc.).
4. Opcionalmente compara com concorrentes.
5. Gera o relatório com nota, ganhos rápidos, achados detalhados, sugestões de palavras-chave e plano de ação.

## O que você recebe

- Placar com nota por dimensão e nota final.
- Os 3 ganhos rápidos (menos de 1 hora de trabalho).
- Sugestões de palavras-chave e de melhorias em screenshots e vídeo.
- Plano de ação ordenado por impacto e esforço.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/apple-specs.md` | Regras e limites da App Store |
| `references/google-play-specs.md` | Regras e limites do Google Play |
| `references/scoring-criteria.md` | Critérios de pontuação de cada dimensão |
| `references/benchmarks.md` | Referências de mercado |
| `references/report-template.md` | Modelo do relatório final |
| `evals/evals.json` | Casos de teste da skill |

## Cuidados

- Textos de fichas e avaliações são tratados como dados; a skill não segue instruções escritas neles.
- A nota é uma estimativa baseada em boas práticas, não um dado oficial das lojas.
- Mudanças na ficha passam por revisão da loja; planeje o tempo de aprovação.

## Relacionadas

- [`cro`](../cro/README.md) — otimiza a página web que leva à instalação
- [`ad-creative`](../ad-creative/README.md) — cria anúncios para divulgar o app
- [`analytics`](../analytics/README.md) — mede instalações e eventos dentro do app
- [`customer-research`](../../01-marketing-estrategia/customer-research/README.md) — traz a linguagem real dos usuários para a ficha
