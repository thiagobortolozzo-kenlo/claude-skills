# client-onboarding

> Organiza a entrada de um cliente novo: reunião de kick-off, ata, canais de comunicação, ferramenta de projeto e plano de reports — para times de implantação e Customer Success.

| | |
|---|---|
| **Área** | Finanças SaaS e Customer Success |
| **Como chamar** | `/client-onboarding` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

Os primeiros dias depois da assinatura definem a percepção do cliente. A skill dá um roteiro com prazos (D-3 até D+7): preparar e conduzir o kick-off, enviar a ata em até 24 horas, configurar os canais de comunicação e a ferramenta de gestão do projeto, aprovar o plano de reports com o cliente e pedir os acessos e documentos necessários.

## Quando usar

- Uma imobiliária acabou de assinar e você vai conduzir a reunião de início da implantação.
- Você quer padronizar o onboarding para que todo cliente tenha a mesma experiência.
- Você precisa de um modelo de ata de kick-off para enviar no dia seguinte.

**Exemplos de pedido:**

- "Monta a pauta do kick-off de implantação da Kenlo para uma rede de 10 imobiliárias."
- "Escreve a ata da reunião de kick-off com estas anotações."
- "Cria um plano de onboarding de 7 dias com responsáveis e prazos."

## Como funciona

1. **Preparação (D-3 a D-1):** o Claude ajuda a montar a pauta, os participantes e os objetivos da reunião.
2. **Kick-off (D+0):** roteiro para alinhar objetivos, escopo, responsabilidades e expectativas.
3. **Pós-reunião (D+1):** ata com decisões, próximos passos e responsáveis.
4. **Canais (D+1 a D+2):** define onde a comunicação acontece (ex.: Slack, Teams) e quem participa.
5. **Ferramenta de projeto (D+2 a D+3):** organiza tarefas em uma ferramenta como Asana ou Trello.
6. **Reports (D+3 a D+7):** define frequência e formato dos relatórios e pede a aprovação do cliente.

## O que você recebe

- Pauta e roteiro da reunião de kick-off.
- Ata de kick-off preenchida (modelo incluso).
- Plano de comunicação e de reports.
- Lista de acessos e documentos a solicitar.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções, dois fluxos (kick-off e configuração de ferramentas), modelo de ata |

## Cuidados

- A skill foi escrita para projetos de consultoria; adapte as etapas ao onboarding de um SaaS (configuração do sistema, migração de dados, treinamento dos corretores).
- Ao pedir acessos ao cliente, nunca solicite senhas por e-mail ou chat; use os canais seguros da empresa.
- Revise a ata antes de enviar, para não registrar compromissos que não foram combinados.

## Relacionadas

- [`onboarding`](../../04-anuncios-conversao-vendas/onboarding/README.md) — ativação do usuário dentro do produto
- [`client-health-score`](../client-health-score/README.md) — acompanhar a saúde do cliente depois da implantação
- [`quarterly-business-review`](../quarterly-business-review/README.md) — a primeira revisão de resultados
- [`saas-agreement`](../../10-juridico-lgpd/saas-agreement/README.md) — o que foi contratado
