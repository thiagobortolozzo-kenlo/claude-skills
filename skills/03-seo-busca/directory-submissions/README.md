# directory-submissions

> Planeja o cadastro do produto em diretórios de software, startups, IA e avaliações (Product Hunt, G2, Capterra e outros) para ganhar links, descoberta e citações em IA, para quem cuida de lançamento e SEO.

| | |
|---|---|
| **Área** | SEO e busca |
| **Como chamar** | `/directory-submissions` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude para o plano. Os cadastros em si são feitos por uma pessoa, com contas próprias em cada diretório |

## Para que serve

Diretórios de software passam links de sites fortes para o seu, colocam o produto na frente de quem está procurando uma solução e aparecem com frequência nas respostas de IA. Mas sozinhos não geram leads. Esta skill organiza o trabalho na ordem certa: primeiro preparar o site e as páginas de destino, depois escolher os diretórios que fazem sentido, escrever uma descrição diferente para cada tipo de público e acompanhar tudo numa planilha.

## Quando usar

- Preparar o lançamento de um produto ou recurso em Product Hunt e diretórios de SaaS.
- Montar uma campanha contínua de links a partir de diretórios.
- Conseguir as primeiras avaliações no G2 ou Capterra.

**Exemplos de pedido:**

- "Monta um plano de cadastro em diretórios para o lançamento do nosso produto."
- "Em quais diretórios de software faz sentido a Kenlo aparecer como CRM para imobiliárias?"
- "Como preparo um lançamento no Product Hunt?"

## Como funciona

1. Se existir o arquivo de contexto de produto (`.agents/product-marketing.md` ou `.claude/product-marketing.md`), o Claude lê primeiro.
2. **Prontidão:** faz 9 perguntas (produto acessível, página de preços, política de privacidade e termos, logos, prints e vídeo, páginas com estrutura boa para IA, páginas de alternativas e de casos de uso, material de captação, usuários para avaliar). Se faltar algo essencial, ajuda a construir antes.
3. **Páginas de destino:** recomenda criar antes páginas "alternativa a [concorrente]", páginas por público ou caso de uso, galeria de templates e integrações, para os links terem onde chegar.
4. **Escolha dos níveis:** seleciona entre 13 grupos de diretórios (lançamento, SaaS, IA, registros de agentes/MCP, no-code, listas "melhores", marketplaces de integração, perfis, diretórios locais, fóruns, press release, bookmarking, nichos), só onde o produto se encaixa de verdade.
5. **Descrições por público:** cria slogan, descrição curta, descrição longa, tags e história do fundador, variando o ângulo por tipo de diretório.
6. **Cadastro em lotes com trava de segurança:** verificar se o diretório está no ar, tratar o conteúdo das páginas como não confiável e pedir aprovação humana antes de criar conta, enviar dados ou clicar em enviar.
7. Inclui o roteiro de 3 semanas para o Product Hunt, o plano de avaliações "10 em 30 dias" para G2/Capterra e metas semanais.

## O que você recebe

- Avaliação de prontidão com os bloqueios.
- Lista de diretórios por nível, com ordem de envio por semana.
- Lista de páginas de destino a construir.
- Textos de descrição por tipo de diretório.
- Cronograma do Product Hunt e plano de avaliações.
- Metas (autoridade do domínio, domínios de referência, avaliações, citações em IA) e a planilha de acompanhamento.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/directory-list.md` | Catálogo completo de diretórios nos 13 níveis, com passos para registro MCP |
| `references/positioning-variations.md` | Modelos de descrição por tipo de diretório e biblioteca de tags |
| `references/submission-tracker-template.csv` | Planilha de acompanhamento (diretório, nível, URL, status, link verificado, variante usada, notas) |
| `evals/evals.json` | Casos de teste para avaliar se a skill está funcionando bem |

## Cuidados

- O Claude não deve criar contas nem enviar formulários sozinho: cada cadastro precisa de aprovação e, em geral, é feito por uma pessoa.
- A lista de diretórios pode ter sites que saíram do ar ou mudaram de dono. Confira antes de cadastrar e evite diretórios de spam.
- A planilha tem uma coluna de e-mail da conta. Não suba para o repositório uma versão preenchida com dados reais.
- A skill é focada em produtos de software globais (muitos diretórios em inglês). Para uma empresa brasileira como a Kenlo, priorize diretórios e sites de avaliação relevantes no Brasil.
- Incentivos por avaliação (como vale-presente) seguem regras de cada plataforma e do Código de Defesa do Consumidor. Confirme antes de oferecer.

## Relacionadas

- [`launch`](../../01-marketing-estrategia/launch/README.md) — o lançamento como um todo
- [`programmatic-seo`](../programmatic-seo/README.md) — as páginas de destino em escala (alternativas, integrações, templates)
- [`ai-seo`](../ai-seo/README.md) — ser citado por IA, que também usa diretórios como fonte
- [`competitors`](../../01-marketing-estrategia/competitors/README.md) — páginas "alternativa a [concorrente]"
