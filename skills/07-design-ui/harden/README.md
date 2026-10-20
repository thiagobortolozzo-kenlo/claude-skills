# harden

> Deixa a interface pronta para o mundo real: textos longos, dados vazios, erros de rede, outros idiomas, cliques repetidos. Para quem constrói ou revisa telas antes de ir para produção.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/harden` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: impeccable (pbakaus) via kursku/skills |
| **Requer** | Nada além do Claude. Funciona melhor dentro do código do projeto. |

## Para que serve

Telas costumam ser desenhadas com dados perfeitos: nome curto, internet rápida, lista com 5 itens. Na prática aparecem nomes de 100 caracteres, listas com 10 mil itens, conexão caindo e erros da API. A skill testa esses cenários e reforça a interface com tratamento de texto longo, internacionalização, mensagens de erro úteis, estados vazios e de carregamento, validação e acessibilidade.

## Quando usar

- Antes de lançar uma funcionalidade, para evitar telas quebradas em produção.
- Uma tela quebra com nomes longos, muitos itens ou quando a API falha.
- O produto vai atender outro idioma ou país (formatos de data, moeda e números).

**Exemplos de pedido:**

- "Deixa esta tela resistente a erros e dados estranhos antes do lançamento."
- "O que acontece se a API cair nesta página? Trata os estados de erro."
- "A lista de imóveis quebra quando o endereço é muito longo ou a imobiliária tem milhares de imóveis. Resolve."

## Como funciona

1. Testa entradas extremas: texto muito longo ou vazio, caracteres especiais e emoji, números grandes, listas enormes, ausência de dados.
2. Testa erros: rede (offline, lenta), códigos de API (400, 401, 403, 404, 429, 500), validação, permissão, operações simultâneas.
3. Testa internacionalização: traduções maiores, idiomas da direita para a esquerda, datas, números e moedas (API `Intl`).
4. Reforça cada frente: corte e quebra de texto em CSS, layouts que se adaptam ao conteúdo, mensagens de erro com botão de tentar de novo, estados vazios com próxima ação, paginação, bloqueio de envio duplo, validação no cliente e no servidor.
5. Reforça acessibilidade (teclado, leitor de tela, movimento reduzido, alto contraste) e desempenho (conexão lenta, vazamento de memória, debounce).
6. Sugere testes manuais e automatizados para cobrir os casos.

## O que você recebe

- Lista de cenários que quebravam a tela.
- Correções aplicadas no código (CSS, componentes, tratamento de erros).
- Roteiro de testes para validar.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `.skillshare-meta.json` | Metadados de instalação (origem no repositório impeccable, versão) |

## Cuidados

- Validação no navegador não substitui validação no servidor; a skill reforça isso.
- Use dados fictícios nos testes; não cole dados reais de clientes (LGPD).
- Em telas da Kenlo, prefira os componentes de erro, vazio e carregamento do KDLS.

## Relacionadas

- [`clarify`](../clarify/README.md) — escreve as mensagens de erro e vazio.
- [`fixing-accessibility`](../fixing-accessibility/README.md) — auditoria detalhada de acessibilidade.
- [`polish`](../polish/README.md) — passada final de detalhes.
- [`adapt`](../adapt/README.md) — funcionamento em outros tamanhos de tela.
