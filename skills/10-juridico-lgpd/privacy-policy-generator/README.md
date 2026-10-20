# privacy-policy-generator

> Gera ou atualiza a política de privacidade de um site, app ou SaaS, em linguagem clara e alinhada à LGPD e ao GDPR — para quem precisa publicar ou revisar esse documento. O resultado é sempre um rascunho que o jurídico precisa revisar.

| | |
|---|---|
| **Área** | Jurídico e LGPD |
| **Como chamar** | `/privacy-policy-generator` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

A política de privacidade explica ao público quais dados a empresa coleta, para quê, com quem compartilha, por quanto tempo guarda, como protege e quais direitos a pessoa tem. A skill pergunta essas informações e redige o texto. Também ajuda a atualizar a política quando surge uma funcionalidade nova que muda o uso de dados, e a escrever o aviso de atualização para os usuários.

## Quando usar

- Um site, landing page ou app novo vai entrar no ar e precisa de política de privacidade.
- Uma funcionalidade nova (por exemplo, uma ferramenta de IA ou integração) passou a usar dados de outro jeito.
- Você quer conferir se a política atual tem todos os itens obrigatórios.

**Exemplos de pedido:**

- "Gera um rascunho de política de privacidade para a landing page do nosso evento."
- "Atualiza a política de privacidade da Kenlo para incluir o novo assistente de IA no atendimento de leads."
- "Confere se a nossa política de privacidade fala de cookies e transferência internacional."

## Como funciona

1. O Claude pergunta o tipo de negócio, os dados coletados, as finalidades e os terceiros que recebem dados.
2. Identifica o controlador e o encarregado de dados (DPO).
3. Define finalidades, bases legais, prazos de guarda e medidas de segurança.
4. Estrutura a seção de direitos do titular (acesso, correção, exclusão, portabilidade, revogação do consentimento).
5. Redige o texto completo, em linguagem acessível, incluindo cookies e transferência internacional quando houver.
6. Na atualização, adiciona só o que mudou e escreve um comunicado para os usuários.

## O que você recebe

- Rascunho completo da política de privacidade (ou das seções alteradas).
- Comunicado de atualização para usuários, quando for o caso.
- Checklist de 13 itens para conferir o documento.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções, fluxos (criação e atualização), modelos de cláusulas e checklist |

## Cuidados

- **O resultado é um rascunho. O jurídico precisa revisar antes de publicar.** A skill não substitui advogado.
- A política precisa descrever o que a empresa faz de verdade. Confira com produto e tecnologia quais dados e ferramentas são usados de fato.
- Mantenha a data da última atualização visível e guarde as versões anteriores.

## Relacionadas

- [`terms-of-service`](../terms-of-service/README.md) — termos de uso que acompanham a política
- [`lgpd-compliance-check`](../lgpd-compliance-check/README.md) — mapeamento de dados que alimenta a política
- [`popups`](../../04-anuncios-conversao-vendas/popups/README.md) — banners de cookies e captura de dados no site
