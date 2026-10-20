# signup

> Otimiza fluxos de cadastro, criação de conta e início de trial para que menos gente desista no meio.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/signup` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude |

## Para que serve

Revisa o cadastro campo a campo (e-mail, senha, nome, telefone, empresa, perguntas de perfil, login social), decide se o fluxo deve ser em uma ou várias etapas, reduz atritos e dúvidas, melhora as mensagens de erro e o que acontece depois do envio (tela de sucesso, verificação de e-mail).

## Quando usar

- Muita gente abre a tela de cadastro e não termina.
- Vai criar o cadastro de um trial gratuito.
- Quer saber se vale pedir telefone ou nome da empresa logo no início.

**Exemplos de pedido:**

- "Nosso cadastro tem 8 campos e 60% de abandono. Como simplifico?"
- "Vale pedir o CNPJ da imobiliária no cadastro do trial ou depois?"
- "Revisa as mensagens de erro do formulário de criação de conta."

## Como funciona

1. Pergunta o tipo de produto, o fluxo atual e os números de abandono.
2. Aplica princípios: mínimo de campos, mostrar valor antes do compromisso, reduzir esforço percebido e tirar incertezas.
3. Revisa cada campo e sugere manter, cortar ou adiar.
4. Recomenda uma ou várias etapas, com boas práticas para cada caso.
5. Revisa confiança, mensagens de erro, textos de apoio, versão mobile e tela pós-envio.
6. Propõe métricas e experimentos.

## O que você recebe

- Diagnóstico do cadastro atual.
- Lista de mudanças recomendadas.
- Novo desenho do formulário, se pedido.
- Ideias de testes.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `evals/evals.json` | Casos de teste da skill |

## Cuidados

- Peça só os dados de que realmente precisa: além de converter melhor, é o que a LGPD exige (minimização de dados).
- Campos obrigatórios por regra de negócio ou legal devem ser confirmados com produto e jurídico antes de cortar.

## Relacionadas

- [`onboarding`](../onboarding/README.md) — o que acontece depois do cadastro
- [`cro`](../cro/README.md) — a página que leva ao cadastro e outros formulários
- [`ab-testing`](../ab-testing/README.md) — testa as mudanças no fluxo
