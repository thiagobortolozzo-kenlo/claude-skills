# Claude Skills · Kenlo

Biblioteca do time de **skills** e **agentes** para o Claude Code, organizada por área de atuação. Instale só o que você usa e contribua com as suas.

[![Validação](https://github.com/thiagobortolozzo-kenlo/claude-skills/actions/workflows/validar.yml/badge.svg)](https://github.com/thiagobortolozzo-kenlo/claude-skills/actions/workflows/validar.yml)

**149 skills · 7 agentes · 12 áreas** · [Catálogo completo](CATALOGO.md) · [Guia rápido](docs/COMO-USAR.md) · [Como contribuir](CONTRIBUTING.md) · [Segurança](SECURITY.md)

---

## O que é isso

- **Skill** é uma pasta com instruções que ensinam o Claude uma tarefa específica: escrever um roteiro, revisar uma tela, montar um DAG do Airflow. O Claude usa a skill sozinho quando o seu pedido combina com ela, ou você chama direto com `/nome-da-skill`.
- **Agente** é um "assistente especialista" que o Claude chama para tarefas maiores. Ele trabalha em paralelo e devolve um relatório. Exemplo: a auditoria `/market audit` dispara 5 agentes ao mesmo tempo.

Cada skill e cada agente tem um `README.md` explicando, em português, para que serve, quando usar, como funciona por dentro e o que você recebe.

## Áreas

| Área | Skills | Agentes | Exemplos |
|---|:-:|:-:|---|
| [01 · Marketing e estratégia](skills/01-marketing-estrategia/README.md) | 31 | [5](agents/01-marketing-estrategia/README.md) | plano de marketing, preço, concorrência, marketing imobiliário |
| [02 · Copy e conteúdo](skills/02-copy-conteudo/README.md) | 14 | — | copy de página, e-mail, LinkedIn, texto sem cara de IA |
| [03 · SEO e busca](skills/03-seo-busca/README.md) | 9 | — | auditoria de SEO, SEO para IA, Google Meu Negócio |
| [04 · Anúncios, conversão e vendas](skills/04-anuncios-conversao-vendas/README.md) | 17 | — | Meta/Google Ads, A/B, CRO, churn, RevOps |
| [05 · Redes sociais](skills/05-redes-sociais/README.md) | 13 | [2](agents/05-redes-sociais/README.md) | Reels, YouTube, social listening, gestão de crise |
| [06 · WhatsApp, CRM e automação](skills/06-whatsapp-crm-automacao/README.md) | 9 | — | chatbot de WhatsApp, API da Meta, n8n |
| [07 · Design e UI](skills/07-design-ui/README.md) | 22 | — | crítica e polimento de telas, acessibilidade, slides |
| [08 · Imagem e foto](skills/08-imagem-foto/README.md) | 8 | — | geração de imagem (Gemini, Stability), pôsteres, GIFs |
| [09 · Vídeo e motion](skills/09-video-motion/README.md) | 6 | — | cortes 9:16, Remotion, roteiros |
| [10 · Jurídico e LGPD](skills/10-juridico-lgpd/README.md) | 6 | — | termos, privacidade, DPA, LGPD |
| [11 · Finanças SaaS e CS](skills/11-financas-customer-success/README.md) | 7 | — | MRR, forecast, health score, QBR |
| [12 · Dados e engenharia](skills/12-dados-engenharia/README.md) | 7 | — | Airflow, dbt, Postgres, GitLab CI |

## Começar em 2 minutos

**1. Clone o repositório** (precisa de acesso: peça ao Thiago).

```bash
git clone https://github.com/thiagobortolozzo-kenlo/claude-skills.git
cd claude-skills
```

**2. Instale o que for da sua área.**

Windows (PowerShell):

```powershell
.\install.ps1 -Listar                                # vê o que seria instalado
.\install.ps1 -Area 07-design-ui,09-video-motion     # só algumas áreas
.\install.ps1 -Skill remotion,polish                 # skills específicas
.\install.ps1                                        # tudo
```

Se o Windows bloquear o script, use `powershell -ExecutionPolicy Bypass -File .\install.ps1`.

macOS / Linux:

```bash
./install.sh 07-design-ui 09-video-motion
```

**3. Abra uma nova sessão do Claude Code** e peça algo, por exemplo: *"faz uma crítica de design desta tela"* ou `/critique`.

O instalador copia as skills para `~/.claude/skills/` e os agentes para `~/.claude/agents/`, e **não sobrescreve** o que você já tem. Para atualizar: `git pull` e rode de novo com `-Atualizar` (Windows) ou `ATUALIZAR=1 ./install.sh` (macOS/Linux).

> **Instale com moderação.** Cada skill instalada adiciona a descrição dela ao contexto de toda sessão. Escolha as áreas que você usa no dia a dia.

## Estrutura do repositório

```
claude-skills/
├── skills/<área>/<skill>/     SKILL.md (o que o Claude lê) + README.md (explicação) + arquivos de apoio
├── agents/<área>/<agente>/    AGENT.md (o que o Claude lê) + README.md (explicação)
├── templates/                 modelos para criar skill e agente novos
├── scripts/                   gerador do catálogo, validador, lista de áreas e resumos
├── docs/                      guias, estrutura, governança, auditorias e radar de skills
├── .github/                   CI de validação e segurança, templates de PR e issue, CODEOWNERS
├── install.ps1 / install.sh   instaladores
└── CATALOGO.md                índice de tudo (gerado automaticamente)
```

Detalhes em [docs/ESTRUTURA.md](docs/ESTRUTURA.md).

## Contribuir

Quer adicionar a sua skill ou melhorar uma existente? Siga o [CONTRIBUTING](CONTRIBUTING.md). Em resumo: crie uma branch, copie o [template](templates/skill/), escreva o `SKILL.md` e o `README.md`, rode o validador e abra um Pull Request. Combinado do time: ninguém faz push direto na `main`, tudo entra por PR revisado.

Viu uma skill boa por aí? Confira o [radar de skills](docs/radar-kursku.md) e abra uma issue **"Sugerir skill"**.

## Antes de usar

- Algumas skills precisam de **chave de API** (Gemini, Stability, WhatsApp) ou de ferramentas locais (Python, Node, ffmpeg). Isso aparece na coluna **Requer** do catálogo. Chaves vão sempre em variável de ambiente, **nunca no repositório**.
- As skills de **jurídico** geram rascunhos. Passe pelo jurídico antes de publicar.
- As rotinas `kenlo-social-*` são internas: estão configuradas para o navegador "Chrome Kenlo" e para a aprovação do Thiago. Ajuste esses pontos antes de usar com a sua conta.
- Origem e licença de cada skill de terceiros: [NOTICE.md](NOTICE.md).
- Este repositório é **privado e interno da Kenlo**. Não copie o conteúdo para repositórios públicos.
