# popups

> Cria e otimiza pop-ups, modais, barras e slide-ins que capturam leads ou anunciam ofertas sem irritar o visitante.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/popups` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. A publicação usa a ferramenta de pop-up do seu site |

## Para que serve

Ajuda a decidir qual tipo de pop-up usar (captura de e-mail, material gratuito, desconto, saída da página, banner de aviso, slide-in), quando ele deve aparecer (tempo, rolagem, intenção de saída, clique), o que escrever e com que frequência mostrar. Também cobre acessibilidade, privacidade e as regras do Google para pop-ups no celular.

## Quando usar

- Quer captar e-mails no blog sem prejudicar a experiência.
- Vai criar um pop-up de saída com uma oferta.
- O pop-up atual converte pouco ou gera reclamação.

**Exemplos de pedido:**

- "Cria um pop-up de saída oferecendo nosso e-book para imobiliárias."
- "Qual o melhor momento para mostrar o pop-up no blog?"
- "Revisa esse pop-up: converte 0,5%. O que mudo?"

## Como funciona

1. Pergunta o objetivo, o tipo de site, o tráfego e o que já existe.
2. Escolhe o gatilho certo (tempo, rolagem, saída, clique, número de páginas, comportamento).
3. Indica o tipo de pop-up e as boas práticas de design, tamanho, botão de fechar e mobile.
4. Sugere títulos, subtítulos, CTAs e textos de recusa.
5. Define frequência, público e páginas onde aparece.
6. Revisa privacidade e acessibilidade, indica métricas e propõe testes.

## O que você recebe

- Especificação do pop-up (gatilho, público, textos, design, regras).
- Estratégia com vários pop-ups, quando fizer sentido.
- Hipóteses de teste e métricas de referência.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `evals/evals.json` | Casos de teste da skill |

## Cuidados

- Pop-ups que capturam e-mail precisam informar a finalidade e ter consentimento conforme a LGPD.
- No celular, pop-ups que cobrem a página podem prejudicar o SEO (regra do Google).
- Evite textos de recusa que culpam o visitante.

## Relacionadas

- [`lead-magnets`](../../02-copy-conteudo/lead-magnets/README.md) — cria o material oferecido no pop-up
- [`cro`](../cro/README.md) — otimiza a página e o formulário ao redor
- [`emails`](../../02-copy-conteudo/emails/README.md) — o que acontece depois da captura
- [`ab-testing`](../ab-testing/README.md) — testa variações
