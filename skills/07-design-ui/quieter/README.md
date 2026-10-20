# quieter

> Suaviza designs agressivos demais (cores saturadas, tudo em negrito, animação em excesso), deixando-os mais refinados sem perder impacto. Para quem cria ou revisa interfaces e peças.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/quieter` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: impeccable (pbakaus) via kursku/skills |
| **Requer** | Nada além do Claude. A skill pede para consultar antes a skill `frontend-design` (plugin), se estiver instalada. |

## Para que serve

Quando tudo grita, nada se destaca e a tela cansa. A skill identifica de onde vem o excesso (saturação, contraste, peso visual, movimento, decoração, escala) e reduz a intensidade com precisão: cores menos saturadas, pesos de fonte menores, mais respiro, menos efeitos. "Mais calmo" não é "sem graça": a personalidade e a hierarquia continuam.

## Quando usar

- Uma página parece "barulhenta" ou cansativa de ler.
- Um painel de uso diário tem cores e animações de landing page.
- Depois de usar `bolder`, o resultado passou do ponto.

**Exemplos de pedido:**

- "Essa tela está muito carregada, deixa mais calma e elegante."
- "Reduz as animações e a saturação desta página."
- "O painel que o gestor da imobiliária usa o dia todo está agressivo demais; suaviza sem perder a hierarquia."

## Como funciona

1. Coleta contexto obrigatório: público, casos de uso e personalidade da marca. Se faltar algo, para e pergunta.
2. Consulta a skill `frontend-design` para princípios e antipadrões.
3. Identifica as fontes de intensidade e o que já funciona e deve ser preservado.
4. Define a abordagem: dessaturar, decidir o que continua em destaque (pouca coisa), o que pode sair e como transmitir qualidade pela contenção.
5. Refina cor (saturação de 70% a 85%, neutros tingidos), peso visual (fontes mais leves, bordas mais finas), simplificação (menos sombras e brilhos), movimento (distâncias menores, curvas suaves) e composição (grid, ritmo uniforme).
6. Verifica se continua funcional, com personalidade e mais fácil de ler.

## O que você recebe

- Diagnóstico do que deixa o design agressivo.
- Alterações no código com a versão refinada.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `.skillshare-meta.json` | Metadados de instalação (origem no repositório impeccable, versão) |

## Cuidados

- Mais calmo não significa cinza: a skill evita tirar toda a cor e toda a hierarquia.
- Em telas de produto da Kenlo, a suavização deve continuar dentro dos tokens do KDLS.
- Compare antes e depois com quem usa a tela no dia a dia.

## Relacionadas

- [`bolder`](../bolder/README.md) — o caminho oposto.
- [`distill`](../distill/README.md) — remove elementos em vez de só suavizá-los.
- [`colorize`](../colorize/README.md) — reequilibra o uso de cor.
- [`fixing-motion-performance`](../fixing-motion-performance/README.md) — quando o problema é animação pesada.
