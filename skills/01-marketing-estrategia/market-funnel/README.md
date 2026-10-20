# market-funnel

> Mapeia o caminho do visitante até a compra em um site, mostra onde as pessoas desistem e recomenda correções por ordem de impacto e esforço.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/market-funnel` — ou peça em linguagem natural (ver exemplos); também é acionada por `/market funnel <url>` |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Acesso à web (WebFetch). Dados reais de tráfego e conversão deixam a análise muito melhor |

## Para que serve

Percorre o site como um visitante faria: da página de entrada até o cadastro, a demonstração ou a compra. Em cada etapa, avalia clareza, continuidade, motivação, atrito e confiança, e aponta os motivos mais comuns de abandono. Depois calcula o impacto em receita das melhorias e organiza tudo em prioridades (fazer agora, planejar, agendar, backlog).

## Quando usar

- Muita gente visita o site, mas pouca gente pede demonstração ou se cadastra.
- Você quer revisar a página de preços ou o formulário de cadastro.
- Quer saber que sequência de e-mails cada etapa do funil precisa.
- Quer decidir para qual página mandar cada fonte de tráfego (busca, anúncios, indicação).

**Exemplos de pedido:**

- "/market funnel https://www.kenlo.com.br"
- "Analise o funil do site da Kenlo do anúncio até o pedido de demonstração."
- "Onde estamos perdendo mais leads no caminho entre o blog e o formulário de contato?"

## Como funciona

1. Identifica o tipo de funil (geração de leads, teste grátis de SaaS, demonstração de SaaS, e-commerce, webinar, aplicação, comunidade, conteúdo).
2. Mapeia cada etapa: ação principal, próximo passo, pontos de saída, atritos e elementos de confiança, e desenha o funil em texto.
3. Dá nota de 0 a 10 a cada página em cinco dimensões e compara com os motivos de abandono mais comuns por tipo de página.
4. Avalia a isca de captação (e-book, modelo, checklist), se houver.
5. Calcula métricas e receita por visitante, comparando com referências do mercado.
6. Prioriza as recomendações (P1 a P5) por etapa do funil e audita página de preços e formulários.
7. Liga cada etapa à sequência de e-mails certa e cada fonte de tráfego à melhor porta de entrada.

## O que você recebe

- Arquivo `FUNNEL-ANALYSIS.md` com resumo executivo, mapa do funil, análise página a página, métricas x referências, impacto em receita, recomendações priorizadas, auditoria da página de preços, avaliação da isca, mapa de e-mails e alinhamento de tráfego.
- Resumo no terminal com nota de saúde do funil, maior gargalo e 3 correções.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais: as 5 fases da análise, tabelas de referência e modelo do relatório |

## Cuidados

- Sem dados reais, as taxas de conversão do mapa são estimativas por referência de mercado, não medições do seu site.
- Os ganhos esperados por melhoria (por exemplo, "10% a 30%") são faixas genéricas; valide com testes A/B.
- A skill só enxerga as páginas públicas; etapas depois do login precisam ser descritas por você.
- Se já existirem outros relatórios da suíte na pasta (`MARKETING-AUDIT.md`, `COPY-SUGGESTIONS.md`, `EMAIL-SEQUENCES.md`), a skill aproveita.

## Relacionadas

- [`cro`](../../04-anuncios-conversao-vendas/cro/README.md) — otimização de conversão página a página.
- [`market-landing`](../../04-anuncios-conversao-vendas/market-landing/README.md) — análise profunda de landing page da suíte market.
- [`market-emails`](../../02-copy-conteudo/market-emails/README.md) — escreve as sequências de nutrição indicadas.
- [`pricing`](../pricing/README.md) — estratégia de preços e planos por trás da página de preços.
