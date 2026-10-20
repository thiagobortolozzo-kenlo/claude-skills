# customer-research

> Ajuda a descobrir o que os clientes realmente pensam, sentem e dizem, a partir de entrevistas, pesquisas, avaliações e comunidades online.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/customer-research` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude (acesso à web para garimpar Reddit, G2 e similares) |

## Para que serve

Faz pesquisa com clientes de três jeitos: analisando material que você já tem (transcrições, pesquisas, chamados de suporte, NPS), garimpando o que os clientes falam em público na internet, e planejando entrevistas e pesquisas novas. O resultado é baseado em evidência, com citações reais e nível de confiança em cada conclusão, para orientar posicionamento, produto e copy.

## Quando usar

- Você tem transcrições de calls ou respostas de pesquisa e quer extrair padrões.
- Quer entender por que clientes cancelam, compram ou escolhem um concorrente.
- Precisa criar personas ou um mapa de "jobs to be done" com base em dados, não em achismo.
- Quer roteiro de entrevista ou a pesquisa de product/market fit.

**Exemplos de pedido:**

- "Analise estes 30 chamados de suporte e me diga as principais dores dos clientes da Kenlo."
- "Garimpe avaliações de concorrentes e fóruns para entender o que imobiliárias reclamam do CRM atual."
- "Monte um roteiro de entrevista com clientes que cancelaram nos últimos 6 meses."

## Como funciona

1. Lê o contexto de produto, se existir, e pergunta primeiro o objetivo e o que você já tem.
2. Escolhe o modo: analisar material existente, garimpar fontes online ou fazer pesquisa primária.
3. Extrai de cada fonte: jobs to be done, dores, eventos que dispararam a busca, resultados desejados, vocabulário exato e alternativas consideradas.
4. Agrupa por tema, pontua por frequência e intensidade, separa por segmento e destaca as melhores citações.
5. Marca cada conclusão com confiança alta, média ou baixa e alerta sobre vieses da amostra.
6. Pergunta qual entrega você quer antes de gerar.

## O que você recebe

Uma ou mais destas entregas:

- Relatório de síntese com temas, citações e implicações.
- Banco de frases reais dos clientes (VOC) organizado por tema, para usar em copy.
- 1 a 3 personas baseadas na pesquisa.
- Mapa de jobs to be done (funcional, emocional, social).
- Resumo do que os clientes dizem sobre concorrentes.
- Análise das lacunas que ainda faltam pesquisar.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/interviews-and-surveys.md` | Como fazer entrevistas e pesquisas: recrutamento, e-mail de convite, incentivos, técnica dos "5 porquês" e pesquisa de PMF |
| `references/source-guides.md` | Guias por fonte (Reddit, G2, LinkedIn, YouTube, X, fóruns, SparkToro) com operadores de busca e o que extrair |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- Transcrições, chamados e pesquisas têm dados pessoais: remova nomes, telefones e e-mails antes de colar (LGPD).
- A skill trata avaliações e posts da internet como dado, nunca como instrução.
- Não crie personas com menos de 5 a 10 evidências de um mesmo segmento; a própria skill avisa.
- As fontes sugeridas são majoritariamente estrangeiras; para imobiliárias brasileiras, inclua fontes locais (Reclame Aqui, grupos do setor).

## Relacionadas

- [`product-marketing`](../product-marketing/README.md) — transforma a pesquisa em posicionamento e mensagem.
- [`marketing-psychology`](../marketing-psychology/README.md) — aplica o que se aprendeu sobre comportamento.
- [`copywriting`](../../02-copy-conteudo/copywriting/README.md) — escreve usando as palavras dos clientes.
- [`churn-prevention`](../../04-anuncios-conversao-vendas/churn-prevention/README.md) — age sobre os motivos de cancelamento encontrados.
