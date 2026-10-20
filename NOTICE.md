# Origem e licenças

Este repositório é **interno da Kenlo** e reúne skills de várias fontes. Os arquivos de licença que vieram com cada skill (como `LICENSE.txt`) foram mantidos nas pastas. A origem de cada skill também aparece no `README.md` dela.

## Importadas de github.com/kursku/skills (outubro de 2026)

São 78 skills, auditadas antes da importação: sem malware, sem segredos e sem execução remota. O kursku/skills é um agregador, e as skills vêm de várias fontes:

| Fonte | Licença | Skills |
|---|---|---|
| Kit PT-BR ("Cafe Code AI") | MIT | skills em português de marketing, jurídico, finanças, CS, WhatsApp e nichos |
| [impeccable](https://github.com/pbakaus/impeccable) | ver a pasta | `adapt`, `animate`, `bolder`, `clarify`, `colorize`, `critique`, `delight`, `distill`, `harden`, `normalize`, `polish`, `quieter`, `teach-impeccable` |
| Anthropic | Apache 2.0 | `algorithmic-art`, `canvas-design`, `slack-gif-creator`, `theme-factory` |
| Remotion | ver a pasta | `remotion` |
| Supabase | ver a pasta | `postgres-best-practices` |
| Comunidade (antigravity-awesome-skills e outros) | ver cada pasta | `airflow-dag-patterns`, `dbt-transformation-patterns`, `data-quality-frameworks`, `gitlab-ci-patterns`, `kpi-dashboard-design`, `mermaid-expert`, `n8n-workflow-patterns`, `whatsapp-cloud-api`, `avoid-ai-writing`, `ai-studio-image`, `stability-ai`, `image-studio`, `ui-ux-pro-max`, `product-design`, `frontend-slides`, `scroll-experience`, `screenshots`, `favicon`, `fixing-accessibility`, `fixing-motion-performance`, `youtube-summarizer` |

Os caminhos fixos `C:\Users\renat\...` de `ai-studio-image` e `image-studio` foram trocados por `%USERPROFILE%\.claude\skills`. O que ficou de fora e por quê está em [docs/radar-kursku.md](docs/radar-kursku.md) e [docs/auditoria-kursku.md](docs/auditoria-kursku.md).

## Acervo do time

As outras 71 skills e os 7 agentes já estavam em uso pelo Thiago:
- a suíte de marketing (`market-*`, `marketing-*`, copy, SEO, anúncios, CRO etc.);
- `video-social-pack`;
- as rotinas internas `kenlo-social-*`.

Em outubro de 2026, as skills e os agentes `market-*` ganharam o frontmatter (`name` e `description`) que faltava.

## Conteúdo interno

As rotinas `kenlo-social-*` citam IDs internos da Kenlo: o espaço do Google Chat e os IDs das páginas no Meta, LinkedIn e YouTube. Não são segredos, mas são internos. Por isso o repositório precisa continuar **privado**. Os exemplos com dados de clientes reais foram trocados por exemplos fictícios.
