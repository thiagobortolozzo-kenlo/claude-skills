# community-marketing

> Ajuda a criar, lançar e crescer uma comunidade online que gera valor para os membros e resultado para a empresa.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/community-marketing` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Transforma clientes em uma comunidade ativa (Discord, Slack, Circle, Reddit, grupo de Facebook ou fórum) e em defensores da marca. A skill parte de uma ideia central: as pessoas entram pelo produto, mas ficam pela identidade e pelas outras pessoas. Ela entrega estratégia, rituais, programa de embaixadores e diagnóstico de saúde da comunidade.

## Quando usar

- Você quer começar uma comunidade do zero e não sabe como trazer os primeiros membros.
- A comunidade já existe, mas as pessoas entram e não participam.
- Quer montar um programa de embaixadores com clientes que já recomendam a marca.
- Quer usar a comunidade para reduzir chamados de suporte e aumentar retenção.

**Exemplos de pedido:**

- "Monte uma estratégia de comunidade para gestores de imobiliárias clientes da Kenlo."
- "Qual plataforma faz mais sentido para nossa comunidade: Slack, Discord ou WhatsApp?"
- "Crie um calendário de rituais semanais e mensais para engajar a comunidade."

## Como funciona

1. O Claude lê o arquivo de contexto de produto, se existir, e pergunta o que faltar: produto, plataforma, estágio da comunidade, objetivo principal e perfil do membro ideal.
2. Define a identidade que a comunidade reforça e o "flywheel" (membros recebem valor, participam, criam conteúdo e atraem novos membros).
3. Escolhe o playbook pelo objetivo: lançar do zero, crescer o que existe, programa de embaixadores ou suporte pela comunidade.
4. Ajuda a escolher o modelo de comunidade e a plataforma, com prós e contras de cada uma.
5. Define as métricas de saúde (DAU/MAU, taxa de primeira postagem, taxa de resposta) e os sinais de alerta.

## O que você recebe

Um destes formatos, conforme o pedido:

- Documento de estratégia (plataforma, identidade, ciclo principal, plano de 90 dias).
- Arquitetura de canais com propósito de cada um.
- Jornada do novo membro (post fixado, mensagem de boas-vindas, estímulos da primeira semana).
- Calendário de rituais da comunidade.
- Briefing de programa de embaixadores.
- Relatório de saúde com as três prioridades para corrigir.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/community-models.md` | Os cinco modelos de comunidade, o caso de embaixadores da Notion e como o papel do gestor muda conforme a comunidade cresce |
| `evals/evals.json` | Casos de teste usados para avaliar a qualidade da skill |

## Cuidados

- A skill não cria nem administra a comunidade; ela planeja. A moderação e o dia a dia continuam com o time.
- WhatsApp não está na tabela de plataformas da skill; se for o canal da Kenlo, peça para o Claude adaptar.
- Comunidades guardam dados de clientes: defina regras de privacidade (LGPD) e de moderação antes de abrir.

## Relacionadas

- [`referrals`](../referrals/README.md) — programas estruturados de indicação e incentivo a embaixadores.
- [`influencer-marketing`](../influencer-marketing/README.md) — a versão paga e estruturada do programa de embaixadores.
- [`customer-research`](../customer-research/README.md) — entender as necessidades e a linguagem dos membros.
- [`whatsapp-community`](../../06-whatsapp-crm-automacao/whatsapp-community/README.md) — quando a comunidade vai rodar no WhatsApp.
