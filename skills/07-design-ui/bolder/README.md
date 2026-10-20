# bolder

> Deixa um design "seguro demais" ou sem graça mais marcante e memorável, sem perder a usabilidade. Para quem cria landing pages, peças e interfaces.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/bolder` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: impeccable (pbakaus) via kursku/skills |
| **Requer** | Nada além do Claude. A skill pede para consultar antes a skill `frontend-design` (plugin), se estiver instalada. |

## Para que serve

Muitas telas ficam genéricas: fontes padrão, cores tímidas, tudo do mesmo tamanho. A skill identifica o que deixa o design apagado e aumenta o impacto com escolhas intencionais de tipografia, cor, espaço, composição e movimento. Ela evita de propósito os "truques de IA" (gradiente roxo-azul, vidro fosco, neon em fundo escuro), porque ousado significa distinto, não "mais efeitos".

## Quando usar

- Uma landing page de campanha está correta, mas ninguém lembra dela.
- O hero de uma página parece igual ao de qualquer outro site.
- Você quer uma versão mais expressiva de uma peça para testar contra a versão atual.

**Exemplos de pedido:**

- "Essa landing page está muito sem graça, deixa mais ousada."
- "Quero um hero com mais personalidade e hierarquia forte."
- "A página do evento da Kenlo para imobiliárias precisa chamar mais atenção. Pode deixar mais bold?"

## Como funciona

1. Coleta contexto obrigatório: público, casos de uso, personalidade da marca. Se faltar algo, para e pergunta.
2. Consulta a skill `frontend-design` para princípios e antipadrões.
3. Diagnostica a fraqueza: escolhas genéricas, escala tímida, pouco contraste, hierarquia plana.
4. Define um ponto focal, uma direção de personalidade e quanto risco é aceitável.
5. Amplifica em várias frentes: tipografia (saltos de 3x a 5x, contraste de peso), cor (uma cor dominante, acentos fortes), espaço (assimetria, respiro generoso), efeitos com textura e movimento de entrada.
6. Verifica: não pode parecer "feito por IA", precisa continuar legível, acessível (WCAG) e rápido.

## O que você recebe

- Diagnóstico do que deixa o design apagado.
- Direção visual escolhida e justificada.
- Alterações no código (CSS/HTML/componentes) com a versão mais ousada.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `.skillshare-meta.json` | Metadados de instalação (origem no repositório impeccable, versão) |

## Cuidados

- "Ousado" não é "caótico": confira se o texto continua legível e o contraste atende acessibilidade.
- Em telas de produto da Kenlo, a liberdade é limitada pelo KDLS; use esta skill principalmente em peças de marketing.
- Revise o resultado com a marca antes de publicar.

## Relacionadas

- [`quieter`](../quieter/README.md) — o caminho oposto, quando passou do ponto.
- [`colorize`](../colorize/README.md) — foco específico em cor.
- [`critique`](../critique/README.md) — avaliação antes e depois da mudança.
- [`market-landing`](../../04-anuncios-conversao-vendas/market-landing/README.md) — revisão de conversão da landing page.
