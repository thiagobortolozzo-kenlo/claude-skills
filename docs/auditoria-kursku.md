# Auditoria e curadoria — github.com/kursku/skills

Data: 2026-10-19 · Commit analisado: `346c313` (2026-03-27)

## 1. É seguro?

**Não encontrei malware.** Varri os 3.718 arquivos (~45 MB) atrás de: pipe-to-shell, decodificação base64 executada, `eval/exec` dinâmico, leitura de chaves/credenciais, webhooks de exfiltração (Discord, Slack, pastebin, webhook.site), frases de prompt-injection, unicode oculto, flags de bypass de permissão e comandos destrutivos. Não há segredos hardcoded nem hooks/settings que se auto-instalem. O workflow de CI só gera catálogo e zip de release.

O que é o repo: um **agregador**. Cerca de 510 skills PT-BR de marketing/negócio (autor "Cafe Code AI", bem genéricas) + ~1.340 importadas de repositórios públicos (antigravity-awesome-skills, superpowers, impeccable, Azure SDK, etc.). Total: 1.853 `SKILL.md`.

### Skills que eu NÃO recomendo instalar

| Skill | Risco |
|---|---|
| `loki-mode` | Roda `claude --dangerously-skip-permissions` em loop autônomo com 100+ agentes |
| `evolution` (makepad) | Instala hooks via `curl … \| bash` |
| `codex-ask`, `gemini-ask`, `kimi-ask` | Enviam seu código/contexto para outras IAs (vazamento de dado corporativo) |
| `apify-*`, `firecrawl-scraper`, `tavily-web`, `exa-search` | Mandam dados para serviços de terceiros pagos |
| `skill-installer`, `skillshare`, `oss-hunter`, `diary` | Baixam/executam mais código ou escrevem fora do projeto |
| `linux/windows-privilege-escalation`, `metasploit-framework`, `red-team-*`, `*-penetration-testing`, `active-directory-attacks` | Conteúdo ofensivo; só faz sentido em pentest autorizado |
| `claude-code-expert` | Recomenda `--dangerously-skip-permissions` |
| `*-health-analyzer` (sexual, mental, oral…) | Fora de escopo e sensível |

Também não vale trazer o que você já tem por plugin (marketing suite, superpowers, docx/xlsx/pptx/pdf, web-artifacts-builder, frontend-design): duplicaria gatilhos.

## 2. Instalado em `~/.claude/skills` (42 skills)

**Kenlo / mercado imobiliário e SaaS B2B**
- `real-estate-marketing`, `saas-marketing`, `b2b-marketing`, `local-seo`, `google-business-optimizer`

**WhatsApp (canal nº1 no Brasil)**
- `whatsapp-scripts`, `chatbot-whatsapp`, `reactivation-sms-whatsapp`, `whatsapp-community`, `whatsapp-ads-click`
- `whatsapp-cloud-api` — boilerplates Node/Python para a API oficial da Meta (só fala com `graph.facebook.com`)

**Jurídico / LGPD**
- `lgpd-compliance-check`, `privacy-policy-generator`, `terms-of-service`, `saas-agreement`, `data-processing-agreement`, `ai-usage-policy`

**Finanças SaaS e Customer Success**
- `saas-metrics`, `unit-economics`, `revenue-forecast`, `recurring-revenue-model`
- `client-health-score`, `quarterly-business-review`, `client-onboarding`

**Social (complementa seus agentes kenlo-social-*)**
- `linkedin-post`, `instagram-caption`, `carousel-creator`, `reels-content-plan`, `social-listening`, `crisis-management-social`, `review-response`

**Automação**
- `n8n-workflow`, `n8n-workflow-patterns`, `crm-automation`

**Dados e engenharia**
- `airflow-dag-patterns`, `dbt-transformation-patterns`, `data-quality-frameworks`, `postgres-best-practices`, `gitlab-ci-patterns`, `kpi-dashboard-design`, `mermaid-expert`

**Escrita**
- `avoid-ai-writing`

## 3. O que dá para construir com elas

1. **Bot de WhatsApp para imobiliárias**: `whatsapp-cloud-api` + `chatbot-whatsapp` + `crm-automation` + `lgpd-compliance-check`. Qualifica lead, agenda visita e manda o lead pro CRM, com webhook HMAC e consentimento LGPD.
2. **Régua de reativação de leads frios**: `reactivation-sms-whatsapp` + `whatsapp-scripts` + `n8n-workflow`, disparada por eventos do funil.
3. **Kit jurídico de produto SaaS**: Termos de uso, política de privacidade, DPA e política de uso de IA (`terms-of-service`, `privacy-policy-generator`, `data-processing-agreement`, `ai-usage-policy`). Ainda precisa de revisão do jurídico.
4. **Painel de saúde de cliente e QBR**: `client-health-score` + `saas-metrics` + `kpi-dashboard-design`, usando churn/MRR do BigQuery, e `quarterly-business-review` para o deck.
5. **Modelo de forecast de receita**: `revenue-forecast` + `unit-economics` + `recurring-revenue-model` (planilha de MRR/LTV/CAC/payback).
6. **Playbook de marketing para imobiliárias clientes**: `real-estate-marketing` + `local-seo` + `google-business-optimizer` + `whatsapp-ads-click`. Material que a Kenlo pode entregar aos clientes.
7. **Pipeline de dados com qualidade garantida**: `airflow-dag-patterns` + `dbt-transformation-patterns` + `data-quality-frameworks` + `gitlab-ci-patterns`.
8. **Plano de crise e resposta em redes**: `crisis-management-social` + `review-response` + `social-listening`, ligados aos agentes kenlo-social-listener/responder.
9. **Calendário editorial B2B**: `linkedin-post` + `carousel-creator` + `reels-content-plan` + `avoid-ai-writing`.

## 4. Segunda leva: design, motion, vídeo e foto (36 skills)

**Refinamento de interface** (suíte *impeccable*; só texto, sem código): `polish`, `critique`, `animate`, `harden`, `distill`, `clarify`, `delight`, `adapt`, `colorize`, `bolder`, `quieter`, `normalize`, `teach-impeccable` (grava o contexto de design no CLAUDE.md do projeto), `fixing-motion-performance`, `fixing-accessibility`

**Visual e marca**: `canvas-design` (pôster/peça em PNG e PDF), `algorithmic-art` (arte generativa em p5.js), `theme-factory` (10 temas para slides e páginas), `ui-ux-pro-max` (base local de estilos, paletas e pares de fontes; scripts Python só leem CSV), `product-design`, `favicon`, `screenshots` (prints de marketing do app com Playwright)

**Motion e vídeo**: `remotion` (vídeo em React, com regras de legenda, áudio e animação; complementa sua `video`), `frontend-slides` (apresentações HTML animadas, também convertendo PPTX), `slack-gif-creator` (GIF animado em Python/PIL, local), `scroll-experience` (parallax e storytelling por scroll), `youtube-summarizer` (transcreve e resume vídeo do YouTube)

**Foto e geração de imagem** (pedem sua própria API key e só falam com a API oficial): `ai-studio-image` (fotos realistas via Gemini), `stability-ai` (arte, edição, upscale e remoção de fundo), `image-studio` (escolhe entre as duas). Corrigi os caminhos fixos `C:\Users\renat\...` que vinham no original.

**Estratégia de vídeo em PT-BR**: `video-script`, `short-form-video-plan`, `content-repurposing`, `video-ads-structure`, `youtube-strategy`, `personal-brand-photography`

**Ficaram de fora**: `audit`, `optimize`, `extract` e `onboard` (nomes genéricos que brigam com `seo-audit`, `onboarding` etc.), `videodb`, `seek-and-analyze-video` e `fal-*` (serviços pagos de terceiros), `magic-animator`, `animejs-animation` e `iconsax-library` (2 KB, quase vazias), `brand-guidelines` (marca da Anthropic), `ai-image-generation` (repete sua `image`).

### O que dá para construir com a segunda leva
1. **Vídeo de produto da Kenlo em código**: `remotion` + `video-script`, com legenda no padrão Kenlo e render em 9:16 e 16:9.
2. **Pipeline de cortes**: sua `video-social-pack` + `short-form-video-plan` + `content-repurposing` + `youtube-summarizer` para pesquisar referências.
3. **Peças estáticas de campanha**: `canvas-design` ou `theme-factory`, com foto gerada por `ai-studio-image` e fundo removido pela `stability-ai`.
4. **Revisão de telas antes do MR**: `critique`, depois `polish`, `harden` e `fixing-accessibility`. Combina com o KDLS via `normalize`.
5. **Deck animado para apresentação**: `frontend-slides` a partir de um PPTX existente.
6. **Página de lançamento com scroll cinematográfico**: `scroll-experience` + `animate` + `screenshots`.

## 5. Como desfazer

Cada skill é uma pasta em `~/.claude/skills/<nome>`. Para remover, apague a pasta. O clone completo do repo está em `%LOCALAPPDATA%\Temp\ksk\skills` caso queira puxar outras.
