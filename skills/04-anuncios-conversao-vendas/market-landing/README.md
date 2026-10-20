# market-landing

> Faz uma análise de conversão (CRO) seção por seção de uma landing page, com nota e lista priorizada de correções. Faz parte da suíte `market-*`.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/market-landing` (ou `/market landing <url>` / `/market cro <url>` pela skill `market`) — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. O Claude precisa conseguir acessar a página |

## Para que serve

Pega uma landing page e a desmonta em partes: topo da página, proposta de valor, prova social, recursos e benefícios, tratamento de objeções e demais blocos. Cada parte recebe nota de 1 a 10 com peso definido, e o resultado é uma nota geral de 0 a 100, uma estimativa de conversão atual e alvo, e uma lista de correções por prazo.

## Quando usar

- Tem uma landing com tráfego e quer saber exatamente o que corrigir.
- Precisa de um diagnóstico para apresentar ao time ou a um cliente.
- Quer sugestões de testes A/B e de layout para a nova versão.

**Exemplos de pedido:**

- "/market landing https://exemplo.com.br/demo"
- "Audita a landing de captação de imobiliárias e me diz o que corrigir primeiro."
- "Por que essa página de webinar converte tão pouco?"

## Como funciona

1. Identifica o tipo de página (captura de lead, cadastro SaaS, e-commerce, webinar, app, lista de espera, agendamento, doação) e as taxas de conversão de referência.
2. Aplica o roteiro de 7 pontos, com checklist e critério de nota para cada seção (o topo da página pesa 25%).
3. Avalia o texto (copy), o formulário, a versão mobile e o impacto da velocidade da página.
4. Gera recomendações de teste A/B e orientações para ler mapas de calor.
5. Escreve o relatório final.

## O que você recebe

- Arquivo `LANDING-CRO.md` com nota geral, tipo de página, conversão estimada e alvo.
- Análise de cada seção com nota e achados.
- Avaliação de copy, formulário e mobile.
- Correções em três prazos (esta semana, este mês, este trimestre).
- Sugestões de layout "antes e depois" em texto.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue (sem cabeçalho de metadados; o nome vem da pasta) |

## Cuidados

- A conversão "estimada" é um palpite educado com base nos achados, não um dado medido. Confirme no seu analytics.
- Velocidade da página é avaliada de forma indicativa; para números exatos, use ferramentas como PageSpeed Insights.
- Revise as sugestões com design e produto antes de mudar a página.

## Relacionadas

- [`market`](../../01-marketing-estrategia/market/README.md) — ponto de entrada da suíte `market-*`
- [`cro`](../cro/README.md) — análise de conversão mais ampla (home, preços, formulários)
- [`ab-testing`](../ab-testing/README.md) — planeja os testes sugeridos
- [`market-copy`](../../02-copy-conteudo/market-copy/README.md) — reescreve o texto da página
