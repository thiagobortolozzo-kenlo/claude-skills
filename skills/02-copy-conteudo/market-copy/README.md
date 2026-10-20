# market-copy

> Analisa a copy de uma página do site a partir da URL, dá uma nota e propõe versões melhores com exemplos de antes e depois, para quem quer melhorar os textos de um site existente.

| | |
|---|---|
| **Área** | Copy e conteúdo |
| **Como chamar** | `/market-copy` — ou peça em linguagem natural (ver exemplos). Faz parte da suíte `market`, onde aparece como `/market copy <url>` |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Acesso à internet pelo Claude (ferramenta WebFetch) para ler a página. Nenhuma chave de API |

## Para que serve

Você passa o endereço de uma página e o Claude lê o texto inteiro dela (títulos, seções, botões, rodapé, meta description, provas sociais), identifica o tipo de página e a voz da marca, e dá uma nota de 0 a 100. Depois escreve alternativas concretas, sempre mostrando o texto atual, o texto sugerido e o porquê da mudança.

## Quando usar

- Revisar a home, uma landing page ou a página de preços antes de uma campanha.
- Comparar o texto do seu site com o de concorrentes (junto com outras skills da suíte).
- Conseguir um banco de títulos, subtítulos e textos de botão para testar.

**Exemplos de pedido:**

- "Roda o market copy na home da Kenlo e me diz o que melhorar."
- "Analisa a copy dessa landing page e gera 10 opções de título."
- "/market copy https://exemplo.com.br/precos"

## Como funciona

1. **Leitura da página:** o Claude busca a URL e extrai título principal, subtítulo, seção de abertura, títulos de seção, textos, todos os botões, menu, rodapé, meta title e description e elementos de prova social.
2. **Tipo de página e voz:** identifica se é home, landing, preços, sobre, produto, recurso, blog ou contato, e avalia a voz em 5 eixos (formalidade, emoção, complexidade, humor, autoridade) para manter o tom da marca.
3. **Análise:** aplica o teste dos 5 segundos ao título, dá nota de 0 a 10 em clareza, persuasão, especificidade, emoção e ação, e preenche um quadro de proposta de valor (cliente, problema, solução, diferencial, benefício, prova), apontando o que falta.
4. **Geração:** escreve títulos com fórmulas conhecidas (PAS, AIDA, Antes-Depois-Ponte, 4U), sugere a estrutura ideal para o tipo de página e analisa cada botão (texto, posição, cor).
5. **Antes e depois:** pelo menos 5 pares (título, subtítulo, botão principal, um parágrafo e meta description).
6. Se existirem `BRAND-VOICE.md`, `MARKETING-AUDIT.md` ou `COMPETITOR-REPORT.md` de outras skills da suíte, usa essas informações.

## O que você recebe

- Resumo no chat: tipo de página, perfil de voz, nota por dimensão e as 3 correções mais importantes.
- Arquivo `COPY-SUGGESTIONS.md` com resumo executivo, notas justificadas, análise da proposta de valor, 10 títulos alternativos, sugestões seção por seção, análise dos botões, pares de antes e depois, banco de alternativas (títulos, subtítulos, botões, meta descriptions) e prioridade de implementação.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue: fases de leitura, análise, geração e o formato do relatório |

## Cuidados

- A análise é de uma página por vez e depende de o Claude conseguir ler a URL (páginas atrás de login ou muito dinâmicas podem falhar).
- Os exemplos de "depois" usam números de efeito (ex.: "corte 40% dos chamados"). Só publique números que a Kenlo consegue provar.
- Algumas recomendações (como urgência e "restam 12 vagas") precisam ser verdadeiras; urgência falsa prejudica a confiança.
- O arquivo `COPY-SUGGESTIONS.md` é criado na pasta em que você está trabalhando.

## Relacionadas

- [`market`](../../01-marketing-estrategia/market/README.md) — a suíte de onde vem o comando `/market copy`
- [`market-landing`](../../04-anuncios-conversao-vendas/market-landing/README.md) — análise aprofundada de landing pages
- [`market-brand`](../../01-marketing-estrategia/market-brand/README.md) — define a voz da marca usada nesta análise
- [`copywriting`](../copywriting/README.md) — para escrever a página do zero
