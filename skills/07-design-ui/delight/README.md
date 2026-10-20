# delight

> Adiciona pequenos momentos de alegria e personalidade (celebração, mensagens simpáticas, microinterações, detalhes escondidos) que tornam a interface memorável. Para quem cria produtos e páginas.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/delight` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: impeccable (pbakaus) via kursku/skills |
| **Requer** | Nada além do Claude. A skill pede para consultar antes a skill `frontend-design` (plugin), se estiver instalada. |

## Para que serve

Funcionar não é o mesmo que ser agradável. A skill encontra os momentos certos para encantar (sucesso, estado vazio, carregamento, conquistas, erros) e adiciona toques de personalidade adequados à marca, sem atrapalhar a tarefa. A regra é: encanto rápido (menos de 1 segundo), opcional e nunca no caminho do usuário.

## Quando usar

- O produto funciona, mas é frio e "sem alma".
- Telas de estado vazio ou de sucesso só dizem "Nenhum item" ou "Sucesso".
- Você quer marcar conquistas do usuário (primeira venda, meta batida).

**Exemplos de pedido:**

- "Deixa o onboarding mais agradável, com algum toque de personalidade."
- "Quero uma celebração quando o usuário termina o cadastro."
- "Quando o corretor fecha o primeiro contrato no CRM, quero um momento de comemoração discreto."

## Como funciona

1. Coleta contexto obrigatório: público, casos de uso, personalidade da marca (divertida, profissional, elegante) e o que é adequado ao segmento. Se faltar algo, para e pergunta.
2. Consulta a skill `frontend-design` para princípios e antipadrões.
3. Mapeia momentos naturais de encanto e escolhe uma estratégia (sofisticação sutil, personalidade divertida, surpresas úteis ou riqueza sensorial).
4. Aplica técnicas: microinterações, textos com personalidade, ilustrações, interações satisfatórias (arrastar, alternar), sons discretos, detalhes escondidos, mensagens de carregamento e celebrações de marcos.
5. Indica bibliotecas quando fizer sentido (Framer Motion, GSAP, Lottie, canvas-confetti, Howler.js).
6. Verifica: não irrita na centésima vez, não bloqueia, é rápido, adequado e acessível.

## O que você recebe

- Mapa dos momentos de encanto escolhidos e por quê.
- Código e textos para cada momento (animações, mensagens, ilustrações sugeridas).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `.skillshare-meta.json` | Metadados de instalação (origem no repositório impeccable, versão) |

## Cuidados

- Os exemplos de texto da skill são em inglês e bem descontraídos; adapte ao tom da Kenlo, que fala com imobiliárias e corretores (caloroso, não infantil).
- Nada de brincadeira em erro crítico ou em telas de cobrança.
- Sons precisam de opção de silenciar e devem respeitar a configuração do sistema.

## Relacionadas

- [`animate`](../animate/README.md) — foco em movimento e microinterações.
- [`clarify`](../clarify/README.md) — textos claros antes de textos engraçados.
- [`onboarding`](../../04-anuncios-conversao-vendas/onboarding/README.md) — estratégia dos primeiros minutos do usuário.
- [`quieter`](../quieter/README.md) — se o encanto virou excesso.
