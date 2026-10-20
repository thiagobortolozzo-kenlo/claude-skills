# marketing-loops

> Monta rotinas de marketing recorrentes que um agente de IA roda sozinho em uma cadência (diária, semanal ou por gatilho), sempre com checagens e aprovação humana onde importa.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/marketing-loops` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude para desenhar o loop. Para rodar de forma agendada: os recursos de agendamento do Claude Code (`/loop`, tarefas agendadas) ou um cron. Cada loop pode precisar dos conectores das ferramentas que ele lê (analytics, anúncios, CRM) |

## Para que serve

Transforma tarefas de marketing que você faria à mão (e esqueceria) em sistemas que rodam sempre: varredura semanal de oportunidades de SEO, checagem de cansaço de anúncios, alerta de queda de ranking, vigia de sinais de cancelamento. Cada loop tem gatilho, passos, autoverificação, memória entre execuções e condição de parada. A skill tem um catálogo de 52 loops prontos e dois "operadores" completos, um para SEO e outro para prospecção (outbound).

## Quando usar

- Você quer uma revisão semanal de marketing que aconteça sem depender de lembrar.
- Quer ser avisado quando um anúncio cansar ou um ranking cair.
- Quer que um agente cuide do SEO do site ou da rotina de prospecção, com aprovação sua antes de publicar ou enviar.
- Quer criar um loop novo que não existe no catálogo.

**Exemplos de pedido:**

- "Monte um loop semanal que revise o desempenho das campanhas da Kenlo e me mande um resumo."
- "Crie um loop diário que observe sinais de cancelamento de imobiliárias clientes."
- "Quero um operador de SEO para o blog da Kenlo, com aprovação minha antes de publicar."

## Como funciona

1. Lê o contexto de produto, se existir, e esclarece qual resultado o loop deve proteger ou fazer crescer.
2. Escolhe o loop mais próximo no catálogo ou adapta um.
3. Ajusta a cadência à velocidade real do sinal (ranking semanal, anúncios a cada 2 ou 3 dias, cancelamento diário).
4. Define o ponto de controle humano: o que o loop faz sozinho e o que deixa preparado para aprovação antes de publicar, enviar ou gastar.
5. Preenche as nove partes do loop: cadência, quando age, propósito, skills usadas, passos, autoverificação, memória, parada e saída.
6. Agenda o loop no ambiente disponível.

## O que você recebe

- A especificação completa do loop, pronta para rodar ou agendar.
- As regras de proteção (limites de gasto e envio, o que sempre escala para humano, botão de desligar).
- Para os operadores de SEO ou outbound: agenda, memória compartilhada, regras de operação e modelo de relatório semanal.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais: anatomia de um loop, regra de cadência, quando não automatizar e como agendar |
| `references/loop-catalog.md` | Catálogo de 52 loops por área (SEO e conteúdo, anúncios, redes e parcerias, outbound, ativação, retenção, receita, indicação, operação) |
| `references/loop-guardrails.md` | Regras de proteção: ações autônomas x aprovadas, limites, conformidade, dados pessoais, botão de desligar |
| `references/loop-state.md` | Onde guardar a memória do loop, como evitar ação duplicada e como registrar execuções |
| `references/loop-orchestration.md` | Como combinar vários loops e em que ordem adotar |
| `references/loop-template.md` | Modelo em branco para criar um loop novo, com exemplo preenchido e checklist |
| `references/seo-operator.md` | Operador de SEO completo: primeira execução, agenda, regras e relatório semanal |
| `references/outbound-operator.md` | Operador de prospecção: briefing, regras de aprovação, memória e relatório semanal |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- Loops que enviam mensagens, publicam ou mexem em verba precisam de aprovação humana; não autorize ação autônoma sem limites claros.
- Loops que tocam dados de clientes precisam seguir a LGPD; as regras citadas na skill são CAN-SPAM, GDPR e FTC.
- Comece com um loop só e prove que ele é útil antes de criar outros. Loop que ninguém lê deve ser apagado.
- Rodar loops agendados consome uso do Claude e das ferramentas conectadas.

## Relacionadas

- [`marketing-ideas`](../marketing-ideas/README.md) — o que tentar uma vez; os loops repetem o que deu certo.
- [`ab-testing`](../../04-anuncios-conversao-vendas/ab-testing/README.md) — o loop de experimentação.
- [`analytics`](../../04-anuncios-conversao-vendas/analytics/README.md) — a maioria dos loops lê dados de analytics.
- [`seo-audit`](../../03-seo-busca/seo-audit/README.md) — usada dentro do operador de SEO.
