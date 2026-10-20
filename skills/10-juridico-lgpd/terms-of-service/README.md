# terms-of-service

> Ajuda a escrever, revisar e atualizar os Termos de Uso (Terms of Service) de um site, app ou plataforma — para quem precisa publicar regras claras para os usuários. O resultado é sempre um rascunho que o jurídico precisa revisar.

| | |
|---|---|
| **Área** | Jurídico e LGPD |
| **Como chamar** | `/terms-of-service` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

Os Termos de Uso dizem o que o usuário pode e não pode fazer na plataforma, de quem é o conteúdo, quais são os limites de responsabilidade da empresa, como a conta pode ser encerrada e como resolver conflitos. A skill redige esse documento, revisa cláusulas específicas (por exemplo, à luz do Código de Defesa do Consumidor e da LGPD) e planeja a comunicação quando os termos mudam.

## Quando usar

- Uma plataforma, app, ferramenta gratuita ou concurso vai ao ar e precisa de termos de uso.
- Você precisa mudar os termos atuais e avisar os usuários com antecedência.
- Você quer saber se uma cláusula (foro, responsabilidade, disputas) está adequada.

**Exemplos de pedido:**

- "Gera um rascunho de termos de uso para a calculadora gratuita de aluguel que vamos lançar."
- "Revisa a cláusula de limitação de responsabilidade dos termos da Kenlo."
- "Monta um plano de comunicação para avisar os clientes sobre a atualização dos termos com 30 dias de antecedência."

## Como funciona

1. O Claude levanta o escopo da plataforma: público, funcionalidades, pagamentos, conteúdo de usuário.
2. Estrutura o documento e redige as cláusulas essenciais: aceite, uso permitido e proibido, propriedade intelectual, responsabilidade, rescisão, disputas e foro.
3. Indica pontos para revisão jurídica e adequação regulatória (CDC, LGPD).
4. Orienta a publicação com aceite explícito (caixa de seleção, o chamado "click-wrap").
5. Na atualização, avalia o impacto, gera a versão consolidada, define a comunicação, o aviso prévio e a coleta de novo aceite.

## O que você recebe

- Rascunho dos Termos de Uso ou das cláusulas revisadas.
- Plano de comunicação de atualização.
- Modelos de cláusula de aceite e vigência e de resolução de disputas e foro.
- Checklist de 10 itens, métricas e erros comuns.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções, fluxos (criação e atualização), modelos de cláusulas e checklist |

## Cuidados

- **O resultado é um rascunho. O jurídico precisa revisar antes de publicar.** A skill não substitui advogado.
- Relações com consumidor final seguem o Código de Defesa do Consumidor; cláusulas que limitam demais a responsabilidade podem não valer.
- Os termos devem apontar para a política de privacidade e estar coerentes com ela.
- Guarde o histórico de versões e a prova do aceite de cada usuário.

## Relacionadas

- [`privacy-policy-generator`](../privacy-policy-generator/README.md) — a política de privacidade que acompanha os termos
- [`saas-agreement`](../saas-agreement/README.md) — contrato completo para clientes corporativos
- [`free-tools`](../../02-copy-conteudo/free-tools/README.md) — ferramentas gratuitas que também precisam de termos
