# screenshots

> Gera prints de alta resolução (retina, 2x) das telas do seu app para Product Hunt, redes sociais, landing pages ou documentação, usando automação de navegador. Para marketing e produto.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/screenshots <URL do app>` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: github.com/Shpigford/skills |
| **Requer** | Node.js e Playwright instalados no projeto (`npm install -D playwright`). O app precisa estar rodando (local ou em um endereço acessível). |

## Para que serve

Tirar prints bonitos e consistentes à mão dá trabalho: tamanho diferente a cada vez, baixa resolução, menus abertos sem querer. A skill lê o código do app para descobrir as telas e funcionalidades, combina com você quais capturar e roda um script que abre cada página e salva imagens de 2880x1800 pixels, todas no mesmo padrão.

## Quando usar

- Lançamento de produto ou funcionalidade (Product Hunt, post de lançamento).
- Atualizar as imagens da landing page ou da central de ajuda.
- Montar documentação ou tutorial com prints atualizados.

**Exemplos de pedido:**

- "/screenshots http://localhost:3000"
- "Gera 5 prints das principais telas do app para a landing page."
- "Preciso de prints do novo painel de leads do CRM para o post de lançamento no LinkedIn."

## Como funciona

1. Define a URL do app (pergunta se não for informada e sugere endereços comuns de desenvolvimento).
2. Pergunta quantos prints, para que finalidade e se é preciso login.
3. Analisa o projeto: README, changelog, rotas e componentes principais (painéis, formulários, gráficos, modais).
4. Mostra as funcionalidades encontradas e confirma com você quais capturar.
5. Cria a pasta `screenshots/`, escreve um script temporário do Playwright (janela de 1440x900 em 2x) e executa. Pode clicar em elementos, esperar animações, capturar só um elemento, a página inteira ou o modo escuro.
6. Apaga o script temporário, confere resolução e tamanho e lista os arquivos gerados.

## O que você recebe

- Pasta `screenshots/` com imagens PNG nomeadas em ordem (ex.: `01-dashboard-overview.png`).
- Resumo com resolução e tamanho de cada arquivo.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue, incluindo o modelo do script Playwright |

## Cuidados

- Se o app pede login, a skill **não** pede a senha na conversa: ela lê as variáveis de ambiente `SCREENSHOTS_EMAIL` e `SCREENSHOTS_PASSWORD`. Use apenas um usuário de teste num ambiente local ou de staging, nunca sua senha pessoal ou de cliente.
- Use dados de demonstração: prints com nomes, telefones ou e-mails reais de clientes ou leads não podem ir para marketing (LGPD).
- Rode contra ambiente local ou de homologação, não contra produção.

## Relacionadas

- [`polish`](../polish/README.md) — acabamento da tela antes do print.
- [`frontend-slides`](../frontend-slides/README.md) — apresentações usando os prints.
- [`linkedin-post`](../../02-copy-conteudo/linkedin-post/README.md) — texto do post de lançamento.
- [`launch`](../../01-marketing-estrategia/launch/README.md) — plano de lançamento do produto.
