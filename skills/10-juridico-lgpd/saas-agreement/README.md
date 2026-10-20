# saas-agreement

> Ajuda a redigir e revisar contratos de software por assinatura (SaaS): objeto, licença, SLA, pagamento, proteção de dados, rescisão e saída — para quem negocia contratos com clientes. O resultado é sempre um rascunho que o jurídico precisa revisar.

| | |
|---|---|
| **Área** | Jurídico e LGPD |
| **Como chamar** | `/saas-agreement` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

Um contrato SaaS define o que o cliente está assinando: quais módulos, o que pode e não pode fazer com o software, o nível de serviço garantido (SLA: tempo no ar, tempo de resposta a incidentes), preço e reajuste, proteção de dados (LGPD), garantias, limites de responsabilidade, rescisão e como o cliente recupera os dados ao sair. A skill monta a estrutura, sugere cláusulas e revisa contratos existentes.

## Quando usar

- Um cliente corporativo pediu um contrato com SLA e cláusulas de LGPD específicas.
- Você precisa de um aditivo para incluir um módulo novo no contrato de um cliente.
- Você quer revisar as cláusulas de rescisão e de saída (exportação e exclusão de dados).

**Exemplos de pedido:**

- "Faz um rascunho de contrato SaaS da Kenlo para uma rede de imobiliárias com SLA de 99,8%."
- "Cria um aditivo para incluir o módulo de assinatura digital no contrato deste cliente."
- "Revisa a cláusula de rescisão deste contrato e diz o que falta sobre devolução de dados."

## Como funciona

1. O Claude coleta os dados das partes, o objeto e os módulos contratados.
2. Gera a estrutura do contrato e detalha licença e restrições de uso.
3. Configura SLA e suporte (disponibilidade, tempos de resposta e resolução, compensações).
4. Ajusta a seção de proteção de dados, definindo controlador e operador.
5. Na revisão, analisa rescisão, prazos de aviso, retenção e devolução de dados, transição de serviço e multas.
6. Confere tudo com a checklist de 10 itens.

## O que você recebe

- Rascunho de contrato ou aditivo, ou parecer de revisão com pontos de atenção.
- Modelos preenchidos de cláusula de propriedade intelectual e de SLA.
- Checklist, métricas de referência, erros comuns e dicas (saída do cliente, subprocessadores, auditorias).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções, fluxos (contrato novo e revisão de rescisão), modelos de cláusulas e checklist |

## Cuidados

- **O resultado é um rascunho. O jurídico precisa revisar antes de enviar ao cliente ou assinar.** A skill não substitui advogado.
- Não prometa no contrato um SLA que a operação não consegue cumprir; valide números com tecnologia e suporte.
- Os exemplos da skill usam empresas fictícias; substitua pelos dados reais só no documento final, fora do chat se possível.

## Relacionadas

- [`data-processing-agreement`](../data-processing-agreement/README.md) — o DPA que acompanha o contrato
- [`terms-of-service`](../terms-of-service/README.md) — termos de uso para clientes que contratam online
- [`pricing`](../../01-marketing-estrategia/pricing/README.md) — preços e planos que o contrato formaliza
- [`client-onboarding`](../../11-financas-customer-success/client-onboarding/README.md) — o que acontece depois da assinatura
