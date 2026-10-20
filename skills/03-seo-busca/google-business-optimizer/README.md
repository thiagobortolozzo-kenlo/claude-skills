# google-business-optimizer

> Otimiza o Perfil da Empresa no Google (antigo Google Meu Negócio) para aparecer mais no Google Maps e nas buscas locais, para quem cuida da presença local de uma empresa ou de clientes.

| | |
|---|---|
| **Área** | SEO e busca |
| **Como chamar** | `/google-business-optimizer` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026); autoria original Cafe Code AI |
| **Requer** | Nada além do Claude. As alterações no perfil são feitas por você, no painel do Google Business Profile |

## Para que serve

Quando alguém busca "imobiliária perto de mim", o Google mostra um mapa com três empresas. Esta skill ajuda a deixar o perfil completo e ativo para disputar esse espaço: dados consistentes (nome, endereço, telefone), categorias certas, fotos, postagens semanais, respostas a avaliações e perguntas, e acompanhamento dos números.

## Quando usar

- Criar ou reivindicar o perfil de uma empresa e preenchê-lo do jeito certo.
- Revisar um perfil que existe, mas aparece pouco no Maps.
- Montar uma rotina mensal de fotos, postagens e respostas a avaliações.

**Exemplos de pedido:**

- "Faz uma auditoria do nosso perfil no Google e diz o que falta."
- "Quais categorias secundárias uma imobiliária deveria usar no Google?"
- "Cria 4 postagens para o perfil no Google de uma imobiliária cliente da Kenlo, uma por semana."

## Como funciona

1. **Primeiros passos:** reivindicar e verificar o perfil, preencher nome, endereço e telefone iguais ao site, escolher a categoria principal e até 9 secundárias, horários (incluindo feriados) e pelo menos 5 fotos.
2. **Otimização contínua:** revisão semanal dos dados e horários, revisão trimestral das categorias olhando os concorrentes no Maps, preenchimento de atributos e serviços com descrições, e 3 a 5 fotos novas por mês com localização.
3. **Conteúdo e engajamento:** 1 a 2 postagens por semana (oferta, novidade, evento, produto), resposta a todas as avaliações em 24 a 48 horas, acompanhamento diário de perguntas e respostas, e análise mensal dos relatórios do perfil.
4. **Dicas avançadas:** dados estruturados `LocalBusiness` no site, ritmo natural de avaliações em várias plataformas, análise dos concorrentes no "Local Pack", links e citações locais, e botões de agendamento ou cardápio.
5. Confere tudo no checklist da skill e compara com as métricas de referência.

## O que você recebe

- Diagnóstico do perfil com base no checklist (12 itens).
- Plano de otimização e calendário de conteúdo.
- Textos de postagens e respostas a avaliações, a partir dos templates.
- Metas mensais (visualizações, cliques no site, rotas, ligações, nota média, taxa de resposta).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue: fluxos, templates de resposta e de postagem, checklist, métricas, erros comuns e dicas avançadas |

## Cuidados

- O Claude não acessa o painel do Google: ele orienta e escreve, você aplica.
- As métricas de referência são para pequenas empresas em geral; ajuste à realidade de cada cliente.
- Nunca compre avaliações nem peça avaliação em troca de vantagem: isso viola as regras do Google e pode derrubar o perfil.
- Na resposta pública a avaliações, não peça dados pessoais; leve a conversa para um canal privado (LGPD).
- O exemplo de dados estruturados usa um formato antigo (microdata). Para o site, prefira JSON-LD, com a skill `schema`.

## Relacionadas

- [`local-seo`](../local-seo/README.md) — SEO local completo, além do perfil no Google
- [`review-response`](../../02-copy-conteudo/review-response/README.md) — respostas a avaliações com mais profundidade
- [`schema`](../schema/README.md) — dados estruturados `LocalBusiness` no site
- [`real-estate-marketing`](../../01-marketing-estrategia/real-estate-marketing/README.md) — marketing para imobiliárias
