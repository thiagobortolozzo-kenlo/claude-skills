# adapt

> Adapta uma tela ou componente para funcionar bem em outro tamanho de tela, dispositivo ou contexto (celular, tablet, desktop, impressão, e-mail). Para quem cria ou revisa interfaces.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/adapt` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: impeccable (pbakaus) via kursku/skills |
| **Requer** | Nada além do Claude. Funciona melhor dentro do código do projeto (HTML/CSS/componentes). |

## Para que serve

Uma tela pensada para desktop raramente funciona só "encolhendo" no celular. A skill repensa a experiência para o novo contexto: layout, tamanho dos botões, navegação, quantidade de conteúdo e forma de interação (toque, mouse, teclado). O resultado é a mesma funcionalidade, com cara de "nativa" em cada ambiente.

## Quando usar

- Uma página feita para desktop fica ruim no celular (botões pequenos, colunas espremidas).
- Você precisa levar um conteúdo da web para um e-mail marketing ou para uma versão de impressão.
- Uma tela de app mobile vai ganhar versão desktop e precisa aproveitar melhor o espaço.

**Exemplos de pedido:**

- "Adapta essa página de cadastro para funcionar bem no celular."
- "Transforma esta seção da landing page em um layout de e-mail de 600px."
- "A listagem de imóveis do CRM precisa funcionar no tablet do corretor durante a visita. Adapta?"

## Como funciona

1. Entende o contexto de origem (para que a tela foi feita e que suposições existem: tela grande, mouse, internet rápida).
2. Entende o contexto de destino: dispositivo, forma de entrada, tamanho de tela, conexão, situação de uso.
3. Lista o que não cabe, o que não funciona (ex.: hover em tela de toque) e o que é inadequado.
4. Monta uma estratégia específica: mobile (uma coluna, alvos de toque de 44x44px, navegação inferior), tablet (duas colunas, mestre-detalhe), desktop (várias colunas, atalhos), impressão (sem navegação, quebras de página) ou e-mail (600px, CSS inline, tabelas).
5. Implementa com técnicas de CSS responsivo (grid, flexbox, container queries, `clamp()`, imagens responsivas).
6. Indica como verificar: dispositivos reais, orientação retrato/paisagem, navegadores e conexão lenta.

## O que você recebe

- Diagnóstico do que quebra no novo contexto.
- Plano de adaptação por área (layout, interação, conteúdo, navegação).
- Alterações no código (CSS/HTML/componentes) já aplicadas ou sugeridas.
- Checklist de teste em dispositivos.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `.skillshare-meta.json` | Metadados de instalação (origem no repositório impeccable, versão) |

## Cuidados

- Teste em aparelhos reais; a emulação do navegador ajuda, mas não substitui.
- A skill não deve esconder funcionalidade importante no celular: se algo importa, precisa funcionar em todos os tamanhos.
- Em telas de produto da Kenlo, mantenha os componentes e breakpoints do KDLS (design system obrigatório do frontend).

## Relacionadas

- [`harden`](../harden/README.md) — deixa a tela resistente a textos longos, erros e outros idiomas depois de adaptada.
- [`polish`](../polish/README.md) — revisão final de detalhes em todos os breakpoints.
- [`normalize`](../normalize/README.md) — alinha a versão adaptada ao design system (KDLS).
- [`emails`](../../02-copy-conteudo/emails/README.md) — quando a adaptação é para e-mail marketing.
