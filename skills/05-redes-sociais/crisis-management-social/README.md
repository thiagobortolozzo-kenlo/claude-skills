# crisis-management-social

> Guia para detectar, responder e se recuperar de uma crise de imagem nas redes sociais. Para times de marketing, comunicação e atendimento.

| | |
|---|---|
| **Área** | Redes sociais |
| **Como chamar** | `/crisis-management-social` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

Organiza a resposta a uma crise nas redes, do primeiro sinal até o pós-crise. Ajuda a separar ruído de crise real, montar a mensagem-chave, adaptar o comunicado para cada rede (X, Instagram, LinkedIn, TikTok, YouTube) e acompanhar a recuperação. O resultado é um plano de ação e textos de resposta prontos para revisão.

## Quando usar

- Um post, anúncio ou reclamação começou a juntar muitos comentários negativos.
- Você quer montar, com calma, um plano de contingência antes de qualquer crise.
- Precisa de um rascunho de comunicado oficial ou de respostas padrão para comentários.

**Exemplos de pedido:**

- "Um cliente postou um vídeo reclamando da Kenlo e está viralizando. O que fazemos agora?"
- "Monta um plano de gestão de crise para as redes da empresa."
- "Escreve um comunicado inicial para o LinkedIn e uma resposta padrão para comentários no Instagram."

## Como funciona

1. Começa pelo básico: alertas de palavras-chave negativas, acionamento do time de crise (jurídico, comunicação, atendimento, liderança) e pausa de anúncios e posts agendados.
2. Classifica as menções em ruído, reclamação isolada ou potencial de crise, priorizando perfis grandes, imprensa e posts com alto engajamento.
3. Define uma mensagem-chave validada internamente, sem admitir culpa antes da apuração.
4. Adapta o comunicado ao formato e ao tom de cada rede.
5. Acompanha a repercussão, direciona pessoas para canais privados e faz um balanço pós-crise.

## O que você recebe

- Plano de resposta por etapa, com checklist.
- Modelos de comunicado inicial e de resposta a comentário negativo.
- Tabela de métricas de referência (tempo de resposta, sentimento, volume de menções).
- Lista de erros comuns (demorar, apagar críticas, admitir culpa cedo) e como evitar.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue: dois fluxos (detecção e resposta), modelos, checklist, métricas e dicas avançadas |

## Cuidados

- Em crise real, todo comunicado precisa de aprovação humana, inclusive do jurídico, antes de sair.
- A skill cita ferramentas pagas de monitoramento (Brandwatch, Sprinklr, Stilingue); ela não se conecta a nenhuma delas.
- O modelo de resposta pede nome e telefone por DM: ao tratar esses dados, siga a LGPD e não exponha dados de clientes em público.
- Números de benchmark são genéricos; use como referência, não como meta fechada.

## Relacionadas

- [`social-listening`](../social-listening/README.md) — monitoramento contínuo que ajuda a detectar a crise cedo.
- [`kenlo-social-reply`](../kenlo-social-reply/README.md) — rotina da Kenlo para responder críticas com aprovação.
- [`public-relations`](../../01-marketing-estrategia/public-relations/README.md) — quando a crise chega à imprensa.
- [`review-response`](../../02-copy-conteudo/review-response/README.md) — respostas a avaliações negativas.
