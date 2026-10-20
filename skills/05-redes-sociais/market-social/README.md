# market-social

> Gera um calendário de 30 dias de conteúdo para redes sociais, com posts prontos, ganchos, hashtags e plano de reaproveitamento. Parte da suíte `market-*`.

| | |
|---|---|
| **Área** | Redes sociais |
| **Como chamar** | `/market-social` (ou `/market social <tema ou URL>`, pela suíte `market`) — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude (acesso à web para ler o site, quando você passa uma URL) |

## Para que serve

A partir de um tema ou do site de uma marca, monta um calendário mensal completo: escolhe 2 ou 3 redes, define pilares de conteúdo, escreve cada post com gancho, texto, hashtags, horário e formato, e mostra como reaproveitar um conteúdo longo em 10 ou mais posts. Tudo sai num arquivo `SOCIAL-CALENDAR.md`.

## Quando usar

- Você precisa de um mês inteiro de conteúdo planejado de uma vez.
- Vai entregar a pauta para um social media executar.
- Quer um ponto de partida rápido para uma marca ou um lançamento.

**Exemplos de pedido:**

- "/market social kenlo.com.br"
- "Monta um calendário de 30 dias de LinkedIn e Instagram para a Kenlo."
- "Cria a pauta do mês para divulgar o novo recurso de site para imobiliárias."

## Como funciona

1. Entende a marca: nome, setor, público, tom de voz, produtos e diferenciais (lendo o site quando há URL).
2. Escolhe 2 ou 3 redes principais conforme o tipo de negócio.
3. Define 4 a 5 pilares com uma mistura sugerida (40% educativo, 20% bastidores, 15% prova social, 15% engajamento, 10% promocional).
4. Escreve os ganchos, a estratégia de hashtags e as táticas de engajamento (perguntas, enquetes, histórias).
5. Monta o calendário de 30 dias, sem posts promocionais em dias seguidos, e o plano de reaproveitamento.
6. Se existirem arquivos de outras skills `market-*` (como `BRAND-VOICE.md` ou `COMPETITOR-REPORT.md`), usa esse material para manter a coerência.

## O que você recebe

- Arquivo `SOCIAL-CALENDAR.md` com o calendário completo semana a semana.
- Resumo no terminal com total de posts e distribuição por pilar.
- Sugestão de próximos passos (`/market copy`, `/market ads`).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue, em 8 fases, com o formato do arquivo de saída |

## Cuidados

- Os ganchos e exemplos estão em inglês; peça explicitamente o calendário em português.
- Alguns ganchos sugeridos são provocativos ("Hot take", "Change my mind"); avalie se combinam com a voz da Kenlo.
- Revise o resultado antes de publicar; a skill não publica nem agenda nada.

## Relacionadas

- [`market`](../../01-marketing-estrategia/market/README.md) — ponto de entrada da suíte `market-*`.
- [`market-brand`](../../01-marketing-estrategia/market-brand/README.md) — gera a voz da marca que este calendário reaproveita.
- [`social`](../social/README.md) — para posts avulsos e estratégia mais detalhada.
- [`market-copy`](../../02-copy-conteudo/market-copy/README.md) — mensagens do site alinhadas às redes.
