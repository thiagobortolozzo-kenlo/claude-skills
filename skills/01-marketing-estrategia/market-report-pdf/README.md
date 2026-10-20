# market-report-pdf

> Gera o relatório de marketing em PDF com capa, gráficos de nota, achados e plano de ação, pronto para enviar a cliente ou apresentar.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/market-report-pdf` — ou peça em linguagem natural (ver exemplos); também é acionada por `/market report-pdf <url>` |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Python 3 com a biblioteca `reportlab` (`pip install reportlab`) e o script `generate_pdf_report.py`, que fica em [`../market/scripts/`](../market/scripts/) |

## Para que serve

Pega os resultados das análises da suíte market, organiza em um arquivo de dados (JSON) e roda um script que desenha um PDF profissional: medidor de nota na capa, gráfico de barras por área, tabela de achados por gravidade, plano de ação em três prazos, comparação com concorrentes e página de metodologia. É a versão para cliente; a versão em Markdown (`market-report`) é melhor para uso interno e edição.

## Quando usar

- Vai enviar o diagnóstico de marketing por e-mail ou apresentar em reunião.
- Quer um material visual para abrir conversa comercial com um prospect.
- Já rodou a auditoria e quer transformá-la em entregável bonito.

**Exemplos de pedido:**

- "/market report-pdf kenlo.com.br"
- "Transforme a auditoria que fizemos em um PDF para a apresentação de amanhã."
- "Gere um PDF de diagnóstico de marketing do site de uma imobiliária parceira."

## Como funciona

1. Procura na pasta os resultados de análises anteriores (`MARKETING-AUDIT.md`, `SEO-AUDIT.md`, `LANDING-CRO.md`, `BRAND-VOICE.md`, `FUNNEL-ANALYSIS.md` e outros).
2. Se não houver nada, recomenda rodar `/market audit` antes; se você insistir, analisa o site direto (pode usar o script `analyze_page.py`).
3. Monta o JSON com URL, data, marca, nota geral, notas das 6 áreas, achados por gravidade, ações (rápidas, médio prazo, estratégicas) e até 3 concorrentes.
4. Confere se o `reportlab` está instalado e roda o script, gerando `MARKETING-REPORT-<dominio>.pdf`.
5. Verifica se o arquivo foi criado, informa caminho e tamanho e apaga o JSON temporário.

## O que você recebe

- Arquivo `MARKETING-REPORT-<dominio>.pdf` com 5 a 7 páginas: capa com nota e resumo, notas por área, achados, plano de ação, concorrentes (se houver dados) e metodologia.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais: coleta de dados, formato do JSON campo a campo, comando do script, cores e solução de problemas |

O script usado fica em outra pasta: [`../market/scripts/generate_pdf_report.py`](../market/scripts/generate_pdf_report.py). Rodado sem argumentos, ele gera um PDF de exemplo.

## Cuidados

- O PDF sai em inglês e com a identidade visual padrão do script (azul-marinho e laranja), não com a marca da Kenlo. Peça ao Claude para escrever os textos em português; mudar cores exige editar o script.
- O `SKILL.md` chama o script como `scripts/generate_pdf_report.py`; nesta biblioteca ele fica em `../market/scripts/`.
- A skill pode instalar o `reportlab` automaticamente com `pip`; se preferir, instale você antes.
- Cada nota precisa ser justificável pelos achados. Revise números e textos antes de enviar.

## Relacionadas

- [`market-report`](../market-report/README.md) — mesmo relatório em Markdown, fácil de editar.
- [`market-audit`](../market-audit/README.md) — gera os dados que alimentam o PDF.
- [`market`](../market/README.md) — onde ficam o script e os modelos da suíte.
- [`market-proposal`](../market-proposal/README.md) — proposta comercial para acompanhar o relatório.
