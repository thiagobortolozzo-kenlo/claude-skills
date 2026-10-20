# lgpd-compliance-check

> Faz uma checagem de conformidade com a LGPD: quais dados pessoais a empresa usa, com que base legal, com que segurança e como atende os titulares — para quem precisa saber onde estão as lacunas. O resultado é sempre um rascunho que o jurídico precisa revisar.

| | |
|---|---|
| **Área** | Jurídico e LGPD |
| **Como chamar** | `/lgpd-compliance-check` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

A LGPD exige que a empresa saiba quais dados pessoais coleta, por que coleta (a "base legal", como consentimento, contrato ou legítimo interesse), como protege, com quem compartilha e como responde quando alguém pede acesso ou exclusão dos próprios dados. A skill guia esse levantamento, revisa contratos e documentos públicos e aponta o que falta.

## Quando usar

- Antes de lançar um formulário, landing page ou campanha que coleta dados de pessoas.
- Para revisar se contratos com fornecedores têm cláusulas de proteção de dados.
- Para preparar a empresa para uma auditoria ou pedido de cliente sobre LGPD.

**Exemplos de pedido:**

- "Checa se este formulário de captação de leads está adequado à LGPD."
- "Monta um mapeamento de dados pessoais do time de marketing da Kenlo."
- "Quais bases legais usamos para mandar e-mail marketing para corretores?"

## Como funciona

1. O Claude levanta sistemas e ferramentas que guardam dados pessoais.
2. Faz o inventário de dados por sistema (ex.: nome, e-mail, CPF, telefone, histórico).
3. Identifica quem é controlador e quem é operador, e por onde os dados circulam.
4. Associa uma base legal a cada finalidade e documenta o mapeamento.
5. Revisa contratos com terceiros (DPA), termos de uso, política de privacidade e mecanismos de consentimento.
6. Confere a checklist: segurança, atendimento aos titulares, encarregado (DPO), plano de resposta a incidentes e relatório de impacto (DPIA) para operações de alto risco.

## O que você recebe

- Mapeamento de dados pessoais com finalidades e bases legais.
- Lista de lacunas e recomendações.
- Modelos de cláusula contratual de proteção de dados e de trecho de política de privacidade.
- Checklist de 10 itens, métricas e erros comuns.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções, fluxos (mapeamento e revisão de documentos), modelos e checklist |

## Cuidados

- **O resultado é um rascunho. O jurídico (e o encarregado de dados, se houver) precisa revisar antes de qualquer decisão.** A skill não substitui advogado.
- Use exemplos e amostras sem dados reais de pessoas; não cole planilhas de clientes ou leads na conversa.
- A checklist da skill vem com todos os itens marcados como exemplo; isso não significa que a empresa já cumpre cada um.

## Relacionadas

- [`privacy-policy-generator`](../privacy-policy-generator/README.md) — escrever ou atualizar a política de privacidade
- [`data-processing-agreement`](../data-processing-agreement/README.md) — contratos com quem trata dados em nome da empresa
- [`ai-usage-policy`](../ai-usage-policy/README.md) — regras para dados pessoais em ferramentas de IA
- [`whatsapp-scripts`](../../06-whatsapp-crm-automacao/whatsapp-scripts/README.md) — mensagens que respeitam consentimento e opt-out
