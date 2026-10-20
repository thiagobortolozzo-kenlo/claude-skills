# ai-usage-policy

> Ajuda a escrever ou revisar a política interna de uso de inteligência artificial da empresa — para quem precisa definir o que o time pode e não pode fazer com ferramentas como Claude e ChatGPT. O resultado é sempre um rascunho que o jurídico precisa revisar.

| | |
|---|---|
| **Área** | Jurídico e LGPD |
| **Como chamar** | `/ai-usage-policy` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

Quando o time começa a usar IA no dia a dia, surgem dúvidas: posso colar dados de cliente no chat? De quem é o texto gerado? Quem revisa? A skill organiza essas regras em uma política com princípios éticos, regras de privacidade (LGPD e GDPR), propriedade intelectual, segurança, responsabilidades, treinamento e revisão periódica. Também ajuda a atualizar uma política que já existe.

## Quando usar

- A empresa está adotando Claude, ChatGPT ou outras IAs e ainda não tem regras escritas.
- A política atual ficou desatualizada com novas ferramentas ou com mudanças na lei.
- Você precisa de um termo de consentimento para uso de dados em funcionalidades de IA.

**Exemplos de pedido:**

- "Cria um rascunho de política de uso de IA para o time de marketing da Kenlo."
- "Revisa nossa política de IA e aponta o que falta sobre dados de clientes das imobiliárias."
- "Quero um plano de treinamento para os colaboradores usarem IA com segurança."

## Como funciona

1. O Claude levanta o cenário: quais IAs já são usadas, que dados passam por elas e quem são as áreas envolvidas.
2. Define escopo e princípios (transparência, não discriminação, responsabilidade humana).
3. Redige as seções principais: uso permitido e proibido, dados pessoais e confidenciais, propriedade intelectual do que é gerado, segurança e responsabilidades.
4. Propõe aprovação, divulgação e treinamento.
5. Na revisão de uma política existente, compara com a lei e as ferramentas atuais, considera incidentes e feedback e sugere mudanças.
6. Define um calendário de revisão (por exemplo, acompanhando o Marco Legal da IA no Brasil).

## O que você recebe

- Rascunho da política de uso de IA com as seções principais.
- Modelo simplificado de termo de consentimento para uso de dados em IA.
- Checklist de conformidade e plano de treinamento.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções, fluxos de criação e revisão, modelos e checklist |

## Cuidados

- **O resultado é um rascunho. O jurídico precisa revisar antes de aprovar ou divulgar.** A skill não substitui advogado.
- A legislação de IA no Brasil ainda está mudando; confira com o jurídico qual é a regra vigente na data de uso.
- Não cole dados reais de clientes ou contratos confidenciais na conversa para "testar" a política.
- A política deve ser coerente com a política de privacidade e os contratos da empresa.

## Relacionadas

- [`lgpd-compliance-check`](../lgpd-compliance-check/README.md) — checagem de conformidade com a LGPD
- [`privacy-policy-generator`](../privacy-policy-generator/README.md) — política de privacidade pública
- [`data-processing-agreement`](../data-processing-agreement/README.md) — contrato com fornecedores de IA que tratam dados
