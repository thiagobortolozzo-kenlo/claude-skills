# data-processing-agreement

> Ajuda a redigir ou revisar o DPA (Data Processing Agreement), o acordo que define como uma empresa trata dados pessoais em nome de outra — para quem negocia contratos com clientes ou fornecedores. O resultado é sempre um rascunho que o jurídico precisa revisar.

| | |
|---|---|
| **Área** | Jurídico e LGPD |
| **Como chamar** | `/data-processing-agreement` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

Pela LGPD, quem decide sobre os dados é o "controlador" e quem trata os dados em nome dele é o "operador" (em inglês, processor). O DPA é o documento que deixa claro, entre os dois, quais dados são tratados, para quê, com que segurança, quem mais pode ter acesso (subprocessadores), o que acontece em caso de incidente e o que fazer com os dados no fim do contrato. A skill ajuda tanto quem presta o serviço quanto quem contrata.

## Quando usar

- Um cliente grande pediu o DPA da Kenlo para fechar contrato.
- Você vai contratar um fornecedor (ferramenta de e-mail, CRM, IA) que vai acessar dados de clientes.
- Você recebeu um DPA de um fornecedor e quer saber se as cláusulas importantes estão lá.

**Exemplos de pedido:**

- "Faz um rascunho de DPA da Kenlo como operadora dos dados dos leads das imobiliárias."
- "Revisa este DPA do fornecedor de disparo de WhatsApp e aponta cláusulas que faltam."
- "Quais medidas de segurança precisam constar no nosso DPA?"

## Como funciona

1. O Claude identifica a relação entre as partes: controlador e operador, ou operador e suboperador.
2. Mapeia os dados: tipos de dados pessoais, finalidades, quem são os titulares e por quanto tempo.
3. Descreve as medidas de segurança técnicas e organizacionais (criptografia, controle de acesso, testes).
4. Trata de subprocessadores e transferência internacional de dados.
5. Inclui cláusulas de notificação de incidentes, auditoria, direitos dos titulares, devolução ou exclusão no fim do contrato e responsabilidades.
6. Na revisão como contratante, confere o DPA recebido item a item com a checklist.

## O que você recebe

- Rascunho de DPA ou parecer de revisão com pontos de atenção.
- Modelos de cláusulas (finalidade e base legal, medidas de segurança).
- Checklist de 12 itens, métricas de referência e erros comuns.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções, fluxos (como operador e como controlador), modelos de cláusulas e checklist |

## Cuidados

- **O resultado é um rascunho. O jurídico precisa revisar antes de enviar ou assinar.** A skill não substitui advogado.
- Prazos sugeridos (por exemplo, para avisar sobre incidentes) são exemplos; confirme com o jurídico o que a lei e a ANPD exigem e o que a empresa consegue cumprir.
- Não cole contratos assinados com dados pessoais na conversa sem necessidade; use versões sem dados identificáveis.

## Relacionadas

- [`saas-agreement`](../saas-agreement/README.md) — o contrato principal ao qual o DPA se liga
- [`lgpd-compliance-check`](../lgpd-compliance-check/README.md) — mapeamento de dados e bases legais
- [`privacy-policy-generator`](../privacy-policy-generator/README.md) — o que comunicar ao público sobre os dados
