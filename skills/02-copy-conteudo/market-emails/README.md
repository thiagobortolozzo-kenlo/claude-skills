# market-emails

> Gera sequências de e-mail completas (boas-vindas, nutrição, lançamento, reengajamento e outras) a partir de um tema ou da URL do site, para quem precisa de fluxos de e-mail prontos para configurar.

| | |
|---|---|
| **Área** | Copy e conteúdo |
| **Como chamar** | `/market-emails` — ou peça em linguagem natural (ver exemplos). Faz parte da suíte `market`, onde aparece como `/market emails <tema ou url>` |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Acesso à internet pelo Claude (ferramenta WebFetch) quando você passa uma URL. Nenhuma chave de API |

## Para que serve

Com uma URL, o Claude lê o site para entender o negócio, o público, o produto, o preço e a voz da marca; com um tema, trabalha a partir da descrição e faz perguntas. Depois recomenda os tipos de sequência certos e escreve cada e-mail completo, com assunto, pré-visualização, texto, momento de envio, segmentação, testes e um checklist de conformidade.

## Quando usar

- Precisa de várias sequências de uma vez para um produto ou lançamento.
- Quer partir do próprio site para que os e-mails tenham o tom da marca.
- Já rodou outras skills da suíte `market` e quer reaproveitar as propostas de valor.

**Exemplos de pedido:**

- "/market emails https://www.kenlo.com.br"
- "Gera a sequência de lançamento do novo módulo de locação, 8 e-mails."
- "Cria a sequência de boas-vindas e a de reengajamento para os leads do nosso webinar para imobiliárias."

## Como funciona

1. **Contexto:** o Claude identifica tipo de negócio, público, produto, faixa de preço (preço mais alto pede nutrição mais longa), ação principal, iscas digitais existentes e voz da marca.
2. **Tipo de sequência:** recomenda entre boas-vindas (5 a 7), nutrição (6 a 8), lançamento (8 a 12), reengajamento (3 a 4), onboarding (5 a 7), carrinho abandonado (3 a 4) e prospecção fria (3 a 5). Gera pelo menos 2 tipos, a menos que você peça um só.
3. **Estrutura:** "um e-mail, uma função"; proporção de cerca de 3 e-mails de valor para 1 de pedido; modelos de história e de Problema-Agitação-Solução.
4. **Assuntos e envio:** fórmulas de assunto (número + benefício, curiosidade, pergunta, prova social...), limite de 50 caracteres, pré-visualização sempre escrita, e calendário de envio por tipo de sequência.
5. **Segmentação e testes:** sugere segmentos (comportamento, engajamento, origem, estágio, interesse, valor) e a ordem dos testes A/B (assunto, CTA, horário, formato).
6. **Métricas e conformidade:** inclui referências de abertura, clique e conversão por setor e um checklist de regras de e-mail.
7. Se existirem `COPY-SUGGESTIONS.md` ou `MARKETING-AUDIT.md` de outras skills da suíte, reaproveita.

## O que você recebe

- Resumo no chat: sequências geradas, total de e-mails e metas de métricas.
- Arquivo `EMAIL-SEQUENCES.md` com cada sequência (visão geral e todos os e-mails escritos), estratégia de segmentação, plano de testes A/B, métricas, checklist de conformidade e notas de implementação.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue: fases, modelos de sequência, benchmarks e formato do arquivo final |

## Cuidados

- O checklist de conformidade cobre leis dos EUA, Europa e Canadá (CAN-SPAM, GDPR, CASL). No Brasil vale a LGPD: consentimento, descadastro fácil e registro da base legal. Valide com o jurídico, como a própria skill recomenda.
- Os benchmarks são gerais de mercado; não são metas garantidas.
- Assuntos de urgência ("última chance", "40% off") só se a oferta for real.
- O arquivo `EMAIL-SEQUENCES.md` é criado na pasta em que você está trabalhando. A skill não configura a ferramenta de e-mail.

## Relacionadas

- [`market`](../../01-marketing-estrategia/market/README.md) — a suíte de onde vem o comando `/market emails`
- [`emails`](../emails/README.md) — alternativa mais detalhada para desenhar fluxos de ciclo de vida
- [`market-copy`](../market-copy/README.md) — gera as propostas de valor que esta skill reaproveita
- [`market-funnel`](../../01-marketing-estrategia/market-funnel/README.md) — análise do caminho de conversão em que os e-mails entram
