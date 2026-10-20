# ai-seo

> Ajuda a fazer o conteúdo da marca ser citado e recomendado por buscadores e assistentes de IA (Google AI Overviews, ChatGPT, Perplexity, Gemini, Claude, Copilot), para quem cuida de SEO e conteúdo.

| | |
|---|---|
| **Área** | SEO e busca |
| **Como chamar** | `/ai-seo` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. Opcional: ferramentas de SEO e monitoramento de IA (Semrush, Ahrefs, Search Console, GA4, Otterly, Peec AI), com acesso configurado por você fora do repo |

## Para que serve

Hoje muita gente pergunta direto para uma IA em vez de clicar em links. No SEO tradicional o objetivo é aparecer no topo; aqui o objetivo é ser **citado** na resposta da IA e, melhor ainda, **recomendado** na lista curta. A skill audita a presença atual da marca nessas respostas, mostra por que concorrentes aparecem e você não, e organiza o trabalho em três pilares: estrutura (texto fácil de extrair), autoridade (texto confiável) e presença (estar nos lugares que a IA consulta).

## Quando usar

- Descobrir se a marca aparece quando alguém pergunta a uma IA sobre a sua categoria.
- Preparar páginas importantes (produto, preços, comparativos, blog) para serem citadas.
- Decidir sobre `llms.txt`, `/pricing.md`, regras de robôs de IA no `robots.txt` e outros arquivos para agentes.

**Exemplos de pedido:**

- "A Kenlo aparece quando alguém pergunta ao ChatGPT qual o melhor CRM para imobiliária?"
- "Como deixo nosso blog mais fácil de ser citado em AI Overviews?"
- "Precisamos de um llms.txt? Quais robôs de IA devemos liberar no robots.txt?"

## Como funciona

1. Se existir o arquivo de contexto de produto (`.agents/product-marketing.md` ou `.claude/product-marketing.md`), o Claude lê primeiro. Depois pergunta sobre a visibilidade atual em IA, tipo de conteúdo, força de SEO, dados estruturados, objetivos e concorrentes.
2. Explica como cada plataforma escolhe fontes e a diferença entre a posição do Google (bom SEO normal basta, sem conteúdo "para IA") e o comportamento dos outros buscadores de IA.
3. **Auditoria de visibilidade:** testa de 10 a 20 perguntas importantes em várias plataformas, analisa quem é citado, checa se cada página tem resposta clara logo no início, tabelas, perguntas frequentes, autor, data de atualização, e revisa quais robôs de IA estão liberados ou bloqueados.
4. **Otimização:** blocos de resposta de 40 a 60 palavras, títulos no formato das perguntas, fontes e estatísticas com data, autores identificados, presença em sites de avaliação, LinkedIn, YouTube e imprensa, e perfis externos com o mesmo posicionamento.
5. Sugere arquivos legíveis por máquina (`llms.txt`, `/pricing.md`, OKF) e dados estruturados, e orienta sobre sites acessíveis a agentes (HTML semântico, conteúdo que carrega sem depender de JavaScript pesado).
6. Monta um plano de monitoramento: rodar cada pergunta de 3 a 5 vezes por plataforma, porque as respostas de IA variam.

## O que você recebe

- Tabela de auditoria por pergunta e plataforma (você é citado? quem é?).
- Checklist de "extraibilidade" das páginas prioritárias.
- Revisão das regras de robôs de IA.
- Plano de ação nos três pilares, com sugestões de arquivos para agentes e dados estruturados.
- Plano de monitoramento mensal.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/platform-ranking-factors.md` | Como cada plataforma de IA escolhe fontes e configuração de robôs no `robots.txt` |
| `references/content-patterns.md` | Modelos de blocos de conteúdo (definição, passo a passo, comparação, FAQ, estatística) |
| `references/content-types.md` | Táticas por tipo de página: produto SaaS, blog, comparativos, documentação, local e e-commerce |
| `references/format-volatility.md` | Quais formatos a IA cita e como isso mudou em 2026; método para ver as buscas internas do ChatGPT |
| `references/citations-vs-recommendations.md` | Diferença entre ser citado e ser recomendado, e o que gera recomendação |
| `references/positioning-and-consensus.md` | Como a IA associa a marca a uma categoria e como mudar isso |
| `references/agent-readiness.md` | Checklist para agentes de IA conseguirem acessar e ler o site |
| `references/linkedin-ai-citations.md` | Que tipo de conteúdo do LinkedIn é citado por IA |
| `references/youtube-ai-citations.md` | Como vídeos do YouTube são lidos e citados (transcrição, capítulos, descrição) |
| `references/okf.md` | O formato Open Knowledge Format e quando vale usar |
| `evals/evals.json` | Casos de teste para avaliar se a skill está funcionando bem |

## Cuidados

- Os números da skill (percentuais de citação, mudanças de formato) envelhecem rápido. A própria skill pede para conferir antes de repassar a alguém.
- Não crie conteúdo separado "para IA" nem páginas em massa de baixa qualidade: o Google trata isso como spam.
- Nada de avaliações falsas, prêmios inventados ou spam em Reddit e Wikipedia.
- A skill cita ferramentas de terceiros para pontuar o site (como um pacote `npx`). Rode só depois de conferir o que a ferramenta faz.
- Bloquear ou liberar robôs de IA é uma decisão de negócio; alinhe com o time antes de mudar o `robots.txt`.

## Relacionadas

- [`seo-audit`](../seo-audit/README.md) — SEO técnico e on-page, a base para aparecer em IA
- [`schema`](../schema/README.md) — implementar os dados estruturados recomendados
- [`competitors`](../../01-marketing-estrategia/competitors/README.md) — páginas de comparação com concorrentes
- [`public-relations`](../../01-marketing-estrategia/public-relations/README.md) — presença em imprensa e podcasts que a IA consulta
