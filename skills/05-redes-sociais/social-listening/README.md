# social-listening

> Ensina o Claude a planejar o monitoramento de marca nas redes: menções, sentimento, tendências e oportunidades de conteúdo. Para marketing e comunicação.

| | |
|---|---|
| **Área** | Redes sociais |
| **Como chamar** | `/social-listening` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

Ajuda a montar um processo de social listening: quais termos monitorar (marca, produtos, concorrentes), como configurar alertas, como ler volume e sentimento e como transformar isso em pauta de conteúdo e em resposta rápida a reclamações. O resultado são planos, relatórios e alertas no formato certo.

## Quando usar

- Você quer saber o que estão falando da marca e dos concorrentes.
- Precisa de um modelo de relatório semanal de menções.
- Quer descobrir temas em alta para virar conteúdo.

**Exemplos de pedido:**

- "Monta um plano de social listening para a Kenlo e os principais concorrentes."
- "Cria um modelo de relatório semanal de menções e sentimento."
- "Quais termos e hashtags devemos monitorar no mercado imobiliário?"

## Como funciona

1. Define os termos de monitoramento: marca, produtos, concorrentes, setor e combinações negativas (ex.: marca + "reclamação").
2. Sugere alertas de pico de volume e de sentimento negativo.
3. Explica como classificar e priorizar menções críticas por alcance, engajamento e gravidade.
4. Mapeia tendências por rede (Instagram, TikTok, YouTube, LinkedIn, X) e lacunas de conteúdo.
5. Fecha com relatório e ideias de conteúdo.

## O que você recebe

- Lista de termos e hashtags para monitorar.
- Modelo de relatório semanal (sumário, insights, recomendações).
- Modelo de alerta de crise para o time.
- Ideias de conteúdo por rede a partir das tendências.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue: fluxo de crise em tempo real, fluxo de tendências por rede e modelos de relatório e alerta |

## Cuidados

- O `SKILL.md` termina cortado no meio do checklist (última linha incompleta).
- Os exemplos usam uma marca fictícia de café; troque pela Kenlo e pelos concorrentes reais.
- A skill não coleta menções sozinha: ela orienta o uso de ferramentas como Brandwatch ou Sprinklr. Para a coleta diária real das redes da Kenlo, use o agente `kenlo-social-listener`.
- Ao montar relatórios com perfis de pessoas, evite expor dados pessoais (LGPD).

## Relacionadas

- [`social`](../social/README.md) — tem um guia de listening com ranking de posts para comentar.
- [`kenlo-social-scan`](../kenlo-social-scan/README.md) — coleta real dos comentários e menções da Kenlo.
- [`crisis-management-social`](../crisis-management-social/README.md) — o que fazer quando o listening acende um alerta.
- [`competitor-profiling`](../../01-marketing-estrategia/competitor-profiling/README.md) — para aprofundar nos concorrentes.
