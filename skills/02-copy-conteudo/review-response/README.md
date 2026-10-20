# review-response

> Escreve respostas para avaliações de clientes (positivas e negativas) em plataformas como Google, App Store e Reclame Aqui, para quem cuida da reputação da marca.

| | |
|---|---|
| **Área** | Copy e conteúdo |
| **Como chamar** | `/review-response` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026); autoria original Cafe Code AI |
| **Requer** | Nada além do Claude |

## Para que serve

Responder bem uma avaliação mostra para todo mundo que lê que a empresa escuta. Esta skill transforma o texto da avaliação em uma resposta adequada: nas positivas, agradece e reforça o ponto elogiado; nas negativas, pede desculpas, mostra que entendeu o problema e leva a conversa para um canal privado.

## Quando usar

- Responder avaliações no Perfil da Empresa no Google, App Store, Google Play, Reclame Aqui ou outras plataformas.
- Recuperar a confiança de um cliente insatisfeito em público.
- Padronizar o tom das respostas entre pessoas diferentes do time.

**Exemplos de pedido:**

- "Responde essa avaliação 5 estrelas do Google agradecendo e citando o atendimento."
- "Cliente reclamou no Reclame Aqui que o suporte demorou. Faz uma resposta empática e resolutiva."
- "Uma imobiliária deu 2 estrelas para o app da Kenlo dizendo que a integração com portais falhou. Escreve a resposta."

## Como funciona

1. Você cola o texto completo da avaliação, informa a plataforma, se é positiva, neutra ou negativa, e o tom desejado.
2. **Avaliação positiva:** o Claude agradece, cita o ponto exato elogiado, liga isso a um valor da marca, convida para a próxima interação e assina em nome da equipe.
3. **Avaliação negativa:** agradece o retorno, pede desculpas sem se justificar primeiro, mostra que entendeu a frustração, oferece solução ou um canal direto de contato, mostra compromisso com a melhoria e assina.
4. Confere a resposta com o checklist da skill (agradeceu, personalizou, tratou o ponto específico, tom certo, ofereceu caminho).

## O que você recebe

- Texto da resposta pronto para publicar na plataforma.
- Base em templates para avaliação positiva (varejo) e negativa (alimentação), que podem ser adaptados.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue: dois fluxos (positiva e negativa), templates com exemplos preenchidos e checklist |

## Cuidados

- Nunca peça dados pessoais (CPF, telefone, número de contrato) na resposta pública. Convide para um canal privado, como a própria skill orienta (LGPD).
- Os exemplos usam empresas, telefones e e-mails fictícios. Troque pelos canais oficiais da Kenlo.
- Não prometa compensação, prazo ou correção sem confirmar com o time responsável.
- Para crises com muitas reclamações ao mesmo tempo, use uma skill de gestão de crise em vez de responder caso a caso.

## Relacionadas

- [`google-business-optimizer`](../../03-seo-busca/google-business-optimizer/README.md) — avaliações fazem parte da otimização do perfil no Google
- [`local-seo`](../../03-seo-busca/local-seo/README.md) — avaliações também pesam no SEO local
- [`crisis-management-social`](../../05-redes-sociais/crisis-management-social/README.md) — quando a reclamação vira crise
- [`social-listening`](../../05-redes-sociais/social-listening/README.md) — encontrar as menções que precisam de resposta
