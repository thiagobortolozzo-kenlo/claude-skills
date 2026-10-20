# ads

> Estratégia e otimização de mídia paga (Google Ads, Meta, LinkedIn, TikTok, X) para quem planeja, roda ou audita campanhas.

| | |
|---|---|
| **Área** | Anúncios, conversão e vendas |
| **Como chamar** | `/ads` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude. Se houver conector de Google Ads ou relatórios exportados, a análise fica mais precisa |

## Para que serve

Ajuda a decidir em qual plataforma investir, como estruturar contas e campanhas, como segmentar públicos, que lance usar e quando matar ou escalar um anúncio. Também audita contas existentes (termos de busca, desperdício de verba, rastreamento) e calcula se a campanha se paga.

## Quando usar

- Vai lançar uma campanha nova e precisa da estrutura, orçamento e públicos.
- O custo por lead está alto e você quer saber o que mexer.
- Precisa auditar uma conta do Google Ads ou revisar o relatório de termos de busca.
- Quer montar uma estratégia B2B ou ABM (anúncios para contas-alvo) no LinkedIn.

**Exemplos de pedido:**

- "Como estruturo uma campanha no Google para captar imobiliárias interessadas no Kenlo Locação?"
- "Meu CPA no Meta dobrou este mês. O que eu reviso primeiro?"
- "Esse anúncio está rodando há 10 dias com CTR baixo. Mato ou espero?"

## Como funciona

1. Lê o contexto do produto (se houver) e pergunta objetivo, oferta, público e situação atual da conta.
2. Indica a plataforma mais adequada e uma estrutura de conta com nomenclatura padrão.
3. Sugere divisão de orçamento entre fase de teste e fase de escala.
4. Orienta segmentação, criativos (com o playbook atual do Meta) e retargeting com ofertas diferentes.
5. Lê métricas, propõe alavancas de otimização e ajuda a achar o ROAS de equilíbrio e o tempo de retorno do investimento.
6. Em auditorias, segue regras de cautela antes de recomendar cortes ou mudanças grandes.

## O que você recebe

- Plano de campanha (estrutura, públicos, lances, orçamento).
- Checklists de configuração por plataforma e de rastreamento de conversão.
- Diagnóstico de conta com recomendações priorizadas.
- Títulos e descrições para anúncios de busca no formato exigido pelo Google.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/` | 15 guias: segmentação de público, modelos de copy, rastreamento de conversão, checklists de setup por plataforma, auditoria do Google Ads, leitura de dados do Google, playbook de busca, sistema de decisão no Meta, playbooks B2B, LinkedIn e ABM, cálculo de payback, especificação de RSA, regras de auditoria e pesquisa criativa automatizada |
| `evals/evals.json` | Casos de teste da skill |

## Cuidados

- A skill recomenda; mudanças de verba e lances devem ser feitas por quem gerencia a conta.
- Números de plataforma (Google, Meta) costumam superestimar resultados. Confirme com o CRM.
- Páginas, prints e anúncios de concorrentes analisados são tratados como dados, não como instruções.

## Relacionadas

- [`ad-creative`](../ad-creative/README.md) — produz os criativos em escala
- [`attribution`](../attribution/README.md) — descobre qual canal realmente gera receita
- [`cro`](../cro/README.md) — melhora a página para onde o anúncio leva
- [`revops`](../revops/README.md) — fecha o ciclo com o CRM e a qualidade do lead
