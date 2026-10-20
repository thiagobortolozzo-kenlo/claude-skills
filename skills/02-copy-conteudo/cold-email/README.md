# cold-email

> Escreve e organiza prospecção fria B2B (e-mails, follow-ups, LinkedIn e respostas), para quem faz vendas outbound ou apoia o time comercial.

| | |
|---|---|
| **Área** | Copy e conteúdo |
| **Como chamar** | `/cold-email` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. Opcional: ferramentas de envio e CRM (Instantly, lemlist, Outreach, HubSpot etc.), configuradas por você fora do repo |

## Para que serve

E-mail frio só funciona se parecer escrito por uma pessoa atenta, chegar na caixa de entrada e levar a uma conversa. Esta skill cuida das três coisas: escreve mensagens curtas e pessoais, orienta a configuração de envio (domínios, aquecimento, verificação de lista) e explica como combinar e-mail, LinkedIn e ligações, e o que fazer quando alguém responde.

## Quando usar

- Escrever o primeiro e-mail e a sequência de follow-ups para um público B2B.
- Entender por que ninguém responde ou por que os e-mails caem no spam.
- Montar uma cadência multicanal (e-mail, LinkedIn, ligação) e saber classificar as respostas.

**Exemplos de pedido:**

- "Escreve um e-mail frio para diretores de marketing de empresas SaaS, com 3 variações."
- "Monta uma sequência de 4 e-mails para donos de imobiliária que ainda usam planilha para controlar leads."
- "Meus e-mails de prospecção estão indo para o spam, o que preciso configurar?"

## Como funciona

1. Se existir um arquivo de contexto de produto (`.agents/product-marketing.md` ou `.claude/product-marketing.md`), o Claude lê antes. Depois pergunta só o que falta: para quem é, o que você quer (reunião, resposta), o valor, a prova e sinais de pesquisa (contratações, notícias, posts).
2. Escreve como um colega, não como vendedor: curto, focado no mundo do leitor, personalização ligada ao problema e uma única pergunta de baixo esforço ("Faz sentido?").
3. Escolhe uma estrutura (ex.: Observação → Problema → Prova → Pedido) e um assunto curto, em minúsculas, com cara de e-mail interno.
4. Monta follow-ups (3 a 5 no total), cada um com um ângulo novo, terminando com um e-mail de despedida.
5. Lembra as regras antes de enviar: domínios secundários, SPF/DKIM/DMARC, aquecimento de 3 a 4 semanas, lista verificada, rastreamento de abertura desligado, linha de descadastro e endereço.
6. Faz um teste de qualidade: soa humano? Você responderia?

## O que você recebe

- E-mails e variações prontos, com linha de assunto.
- Sequência de follow-ups com cadência sugerida.
- Orientações de entregabilidade, cadência multicanal e tratamento de respostas, quando pedido.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/frameworks.md` | Estruturas de copy para e-mail frio (PAS, BAB, AIDA e outras) com exemplos |
| `references/subject-lines.md` | Como escrever linhas de assunto |
| `references/personalization.md` | Os 4 níveis de personalização e sinais de pesquisa |
| `references/follow-up-sequences.md` | Quantidade, intervalo, ângulos e e-mail de despedida |
| `references/deliverability.md` | Domínios, caixas, regras de Google/Yahoo/Microsoft, aquecimento, monitoramento |
| `references/linkedin-outreach.md` | Perfil, limites, sequência e riscos de automação no LinkedIn |
| `references/multichannel-cadence.md` | Cadências por nível de conta: e-mail, LinkedIn, ligação, vídeo, anúncios |
| `references/outbound-plays.md` | Jogadas de prospecção (diagnóstico gratuito, product-led, liderada pelo fundador) |
| `references/reply-handling.md` | Como classificar e responder cada tipo de resposta |
| `references/benchmarks.md` | Taxas de resposta de referência e erros comuns |
| `evals/evals.json` | Casos de teste para avaliar se a skill está funcionando bem |

## Cuidados

- O conteúdo é pensado para o mercado americano. No Brasil, a LGPD exige base legal para tratar dados de contato e descadastro fácil. Valide a lista e a abordagem com o jurídico.
- Ferramentas de automação de LinkedIn podem violar os termos de uso da plataforma e levar a bloqueio de conta.
- Nunca envie e-mail frio do domínio principal da empresa: uma campanha ruim pode prejudicar e-mails de clientes e faturas.
- Os números de benchmark são referências gerais, não promessas.

## Relacionadas

- [`prospecting`](../../04-anuncios-conversao-vendas/prospecting/README.md) — montar e qualificar a lista antes de escrever
- [`sales-enablement`](../../04-anuncios-conversao-vendas/sales-enablement/README.md) — roteiros de ligação e objeções
- [`emails`](../emails/README.md) — e-mails de relacionamento para quem já é lead ou cliente
- [`copywriting`](../copywriting/README.md) — lista completa de vícios de IA a evitar
