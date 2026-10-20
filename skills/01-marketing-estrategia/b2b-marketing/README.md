# b2b-marketing

> Guia prático de marketing B2B em português para quem precisa gerar leads qualificados e acelerar vendas com ciclo longo.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/b2b-marketing` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude |

## Para que serve

Ajuda a montar e executar estratégias de marketing para vender para empresas: definir o cliente ideal (ICP), pontuar leads (lead scoring), rodar campanhas de ABM (Account-Based Marketing) e nutrir leads até virarem oportunidades de venda. O resultado são planos, sequências de e-mail, posts e checklists prontos para adaptar, com métricas de referência do mercado brasileiro.

## Quando usar

- Você precisa definir quem é o cliente ideal e como separar lead bom de lead ruim.
- Marketing e vendas não concordam sobre o que é um lead qualificado (MQL x SQL).
- Você quer escolher 10 a 20 contas estratégicas e atacar cada uma de forma personalizada.
- Precisa de uma régua de nutrição por e-mail depois que alguém baixa um material.

**Exemplos de pedido:**

- "Monte um ICP para a Kenlo focado em imobiliárias com mais de 20 corretores."
- "Crie um modelo de lead scoring para o nosso CRM, com pontos por ação e por perfil."
- "Planeje uma campanha ABM para as 15 maiores redes de imobiliárias de São Paulo."

## Como funciona

1. O Claude parte de um "Quick Start" de cinco passos: ICP com dados concretos, lead scoring, prospecção personalizada, custo por lead dos canais pagos e mapa da jornada de compra.
2. Para ABM, segue um fluxo: escolher e enriquecer contas-alvo, mapear decisores e dores de cada conta, criar conteúdo personalizado, orquestrar canais (e-mail, LinkedIn Ads, brinde físico, eventos) e medir.
3. Para inbound, segue outro fluxo: palavras-chave de cauda longa, material rico (e-book, calculadora), landing page, distribuição, nutrição por e-mail e repasse para vendas ao atingir a pontuação de MQL.
4. Usa os modelos prontos (e-mail de primeiro contato, post de LinkedIn) e confere o checklist e os erros comuns.

## O que você recebe

- ICP detalhado e mapa da jornada de compra B2B.
- Modelo de lead scoring com critérios de pontuação.
- Sequência de e-mails de nutrição e e-mail de prospecção ABM.
- Post de LinkedIn para geração de demanda.
- Checklist de marketing B2B e tabela de métricas de referência (CPL, CPA, conversão MQL para SQL, ciclo de vendas, LTV:CAC).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue: fluxos de ABM e inbound, modelos, checklist, métricas e erros comuns |

## Cuidados

- Os benchmarks em reais (CPL, CPA, taxas de conversão) são referências genéricas; valide com os números reais da Kenlo antes de usar como meta.
- A skill cita ferramentas (Apollo, Lusha, ZoomInfo, Salesforce, RD Station, HubSpot), mas não se conecta a nenhuma delas; ela só orienta.
- Enriquecimento de contatos e prospecção envolvem dados pessoais: siga a LGPD e as regras internas antes de importar listas.
- O modelo de post usa emojis; ajuste ao tom de voz da marca antes de publicar.

## Relacionadas

- [`saas-marketing`](../saas-marketing/README.md) — complementa com aquisição, ativação e retenção para SaaS.
- [`prospecting`](../../04-anuncios-conversao-vendas/prospecting/README.md) — monta a lista de contas e pesquisa cada uma.
- [`cold-email`](../../02-copy-conteudo/cold-email/README.md) — escreve e roda a prospecção fria por e-mail.
- [`revops`](../../04-anuncios-conversao-vendas/revops/README.md) — define o SLA entre marketing e vendas e o roteamento de leads.
