# marketing-plan

> Produz um plano de marketing completo de 12 meses, nível "CMO terceirizado", organizado pelo funil AARRR e ajustado ao orçamento, equipe e estágio reais da empresa.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/marketing-plan` — ou peça em linguagem natural (ver exemplos). Aceita o nome do cliente: `/marketing-plan kenlo` |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. Opcional: conectores de dados (GA4, Ahrefs, Stripe e similares) para usar números reais. Chaves dessas ferramentas ficam em variáveis de ambiente ou na configuração do conector, nunca no repositório |

## Para que serve

Junta diagnóstico, estratégia e execução em um único documento de cerca de 8 a 12 mil palavras, pronto para colar no Notion. O plano segue o funil AARRR (Aquisição, Ativação, Retenção, Indicação, Receita), dá nota ao estado atual do marketing, sequencia ações em 90 dias e 12 meses, mostra que skills e ferramentas executam cada ação e explica o que muda quando o orçamento aumenta. Também ajuda a dimensionar o mercado (TAM, SAM, SOM).

## Quando usar

- Você precisa de um roteiro de marketing de 12 meses para apresentar à diretoria ou a investidores.
- Quer consolidar pesquisas, auditorias e documentos soltos em um plano coerente.
- Já tem uma auditoria com nota e quer transformá-la em plano de ação.
- Precisa estimar o tamanho do mercado antes de decidir o investimento.

**Exemplos de pedido:**

- "/marketing-plan kenlo"
- "Monte um plano de marketing de 12 meses para a Kenlo crescer entre imobiliárias de médio porte."
- "Qual é o TAM, SAM e SOM de um CRM para imobiliárias no Brasil?"

## Como funciona

1. Verifica se já existe um plano em andamento na pasta `~/marketing-plans/<cliente>/` e retoma de onde parou; planos finalizados nunca são sobrescritos sem perguntar.
2. Fase 1 (pesquisa): lê os materiais disponíveis, puxa dados das ferramentas conectadas e faz uma entrevista estruturada (financiamento, equipe, orçamento, canais, o que já foi feito, o que está travado, ferramentas).
3. Dá nota de 0 a 5 em 17 aspectos do marketing atual e aplica o teste de qualidade do mercado (tamanho x frequência do problema).
4. Fase 2 (revisão): apresenta cada uma das 13 seções no chat para você aprovar, ajustar ou aprofundar, salvando cada seção aprovada.
5. Fase 3 (finalização): compila tudo em `final_plan.md`, confere referências cruzadas e, se você quiser, oferece publicar em um repositório do time.

## O que você recebe

- Arquivo `final_plan.md` com 13 seções: resumo executivo, enquadramento estratégico, estado atual com nota, aquisição, ativação, retenção, indicação, receita, roteiro de 90 dias com responsáveis, visão de 12 meses, pilha de skills e ferramentas, banco das 139 ideias com status (agora, depois, descartada) e métricas, RACI e decisões em aberto.
- Pasta do cliente com materiais, registro de pesquisa, progresso e seções aprovadas.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais: as três fases, estrutura do plano e critérios de qualidade |
| `references/methodology.md` | Passo a passo completo, controle de progresso e questionário de entrevista |
| `references/plan-template.md` | Modelo das 13 seções |
| `references/current-state-rubric.md` | Critérios para dar nota aos 17 aspectos do marketing atual |
| `references/aarrr-framework.md` | Explicação do funil AARRR e como achar o gargalo |
| `references/budget-planning.md` | Métodos para definir o orçamento de marketing e calcular CAC |
| `references/funding-stage-unlocks.md` | O que o marketing pode fazer em cada estágio de investimento |
| `references/growth-patterns.md` | Como o crescimento de SaaS realmente acontece (curvas em S, regra 70/20/10) |
| `references/market-sizing.md` | Como estimar TAM, SAM e SOM com quatro métodos |
| `references/measurement-framework.md` | Métrica norte, indicadores por etapa, cadência de revisão e critérios de corte |
| `references/ops-stack-mapping.md` | Que skills e conectores executam cada etapa do funil |
| `references/team-and-agency-model.md` | O que manter no time e o que terceirizar, e o primeiro contratado de marketing |
| `references/client-types.md` | Variações do plano por modelo de negócio |
| `references/idea-cross-reference.md` | As 139 ideias da skill `marketing-ideas` ligadas a cada etapa do funil |
| `references/example-quietude.md` | Exemplo completo de plano pronto |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- O plano fica salvo na sua pasta pessoal (`~/marketing-plans/`); ele pode conter dados internos e de clientes, então não compartilhe a pasta sem revisar.
- As faixas de orçamento por estágio estão em dólar e pensadas para startups com investimento de risco; ajuste à realidade da Kenlo.
- Se o CAC (custo de aquisição) não for conhecido, a skill lista isso como decisão em aberto; as projeções de receita dependem dele.
- É um trabalho longo e interativo, seção por seção; reserve tempo para revisar cada uma.

## Relacionadas

- [`product-marketing`](../product-marketing/README.md) — rode antes, para registrar posicionamento, ICP e voz.
- [`marketing-ideas`](../marketing-ideas/README.md) — fonte das 139 táticas do banco de ideias.
- [`customer-research`](../customer-research/README.md) — aprofunda o ICP e a voz do cliente.
- [`saas-metrics`](../../11-financas-customer-success/saas-metrics/README.md) — métricas de SaaS que alimentam a parte de receita.
