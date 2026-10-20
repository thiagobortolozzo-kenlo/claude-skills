# market

> Porta de entrada da suíte de marketing "market": entende o comando `/market ...` e chama a skill certa para auditoria, copy, e-mails, anúncios, relatórios e mais.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/market` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Acesso à web (WebFetch). Os scripts da pasta `scripts/` precisam de Python 3; o gerador de PDF precisa também da biblioteca `reportlab` (`pip install reportlab`) |

## Para que serve

É o "maestro" de um conjunto de skills de marketing que analisam sites e geram conteúdo. Você digita `/market <comando> <site ou tema>` e ele encaminha para a skill específica. Também guarda os scripts e modelos compartilhados pela suíte (analisador de página, scanner de concorrentes, gerador de PDF, calendário social e modelos de e-mail e proposta).

## Quando usar

- Você quer uma análise de marketing de um site e não sabe qual skill usar.
- Quer um retrato rápido de 60 segundos de uma página inicial.
- Vai rodar vários comandos da suíte em sequência (por exemplo, marca, depois copy, depois relatório).

**Exemplos de pedido:**

- "/market quick kenlo.com.br"
- "/market audit https://site-do-concorrente.com.br"
- "Faça uma análise completa de marketing do site da Kenlo e gere o relatório em PDF."

## Como funciona

1. Recebe o comando e identifica o tipo de negócio do site (SaaS, e-commerce, agência, negócio local, criador de cursos, marketplace), porque isso muda o foco da análise.
2. Para `/market quick`, lê só a home e devolve em até 30 linhas uma nota rápida, 3 acertos e 3 correções.
3. Para `/market audit`, chama a skill `market-audit`, que dispara 5 agentes em paralelo e calcula a nota de marketing de 0 a 100.
4. Para os outros comandos (copy, emails, social, ads, funnel, competitors, landing, launch, proposal, report, report-pdf, seo, brand), encaminha para a skill `market-<comando>`.
5. Salva o resultado em um arquivo Markdown com nome descritivo (por exemplo, `MARKETING-AUDIT.md`) na pasta atual.

## O que você recebe

- O arquivo de saída do comando escolhido (`MARKETING-AUDIT.md`, `COMPETITOR-REPORT.md`, `BRAND-VOICE.md`, `MARKETING-REPORT.pdf` etc.).
- Recomendações priorizadas por impacto (alto, médio, baixo), com exemplos de antes e depois.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Tabela de comandos, regras de encaminhamento, pesos da nota e padrões de saída |
| `scripts/analyze_page.py` | Analisa uma página (SEO, estrutura, CTAs, sinais de confiança) e devolve JSON |
| `scripts/competitor_scanner.py` | Lê páginas de concorrentes e extrai dados de posicionamento |
| `scripts/generate_pdf_report.py` | Gera o relatório de marketing em PDF com gráficos (usa `reportlab`) |
| `scripts/social_calendar.py` | Gera um esqueleto de calendário de conteúdo social por tema e plataforma |
| `templates/` | 6 modelos: calendário de conteúdo de 30 dias, sequências de e-mail (boas-vindas, nutrição, lançamento), checklist de lançamento e proposta comercial |

## Cuidados

- Os scripts acessam sites externos e verificam o certificado SSL. Se um site tiver certificado inválido, a análise daquele site falha de propósito.
- Os scripts usam um identificador de navegador comum; respeite os termos de uso dos sites analisados.
- As estimativas de receita das análises são projeções, não promessas; revise antes de mostrar a clientes.
- Alguns comandos chamam skills de outras áreas (copy, emails, social, ads, landing, seo).

## Relacionadas

- [`market-audit`](../market-audit/README.md) — a auditoria completa, comando principal da suíte.
- [`market-report-pdf`](../market-report-pdf/README.md) — relatório em PDF usando o script desta pasta.
- [`market-copy`](../../02-copy-conteudo/market-copy/README.md) — sugestões de copy para páginas.
- [`market-seo`](../../03-seo-busca/market-seo/README.md) — auditoria de SEO da suíte.
