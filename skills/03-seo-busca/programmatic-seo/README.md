# programmatic-seo

> Planeja a criação de muitas páginas de SEO a partir de um modelo e uma base de dados (ex.: "[serviço] em [cidade]", "[produto] para [público]", "X vs Y"), para quem quer escalar tráfego orgânico sem gerar páginas vazias.

| | |
|---|---|
| **Área** | SEO e busca |
| **Como chamar** | `/programmatic-seo` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Nada além do Claude para a estratégia. Para publicar, um CMS ou plataforma que gere as páginas (ver `references/implementation-platforms.md`) |

## Para que serve

SEO programático é criar dezenas ou milhares de páginas parecidas, cada uma mirando uma busca diferente, usando um modelo e dados. Feito errado, vira um monte de páginas iguais que o Google penaliza. Esta skill ajuda a escolher o tipo de página certo, garantir que cada uma tenha valor próprio, organizar URLs e links internos e controlar o que deve ou não ser indexado.

## Quando usar

- Você tem dados que podem virar páginas úteis (cidades, bairros, integrações, públicos, comparações).
- Quer páginas como "sistema para imobiliária em [cidade]" ou "integração [produto] + [portal]".
- Precisa decidir qual plataforma vai gerar e manter essas páginas.

**Exemplos de pedido:**

- "Quero criar páginas por cidade para atrair imobiliárias. Como faço sem virar conteúdo raso?"
- "Monta a estratégia de páginas de integração da Kenlo com portais imobiliários."
- "Quais tipos de página programática fazem sentido para um SaaS B2B?"

## Como funciona

1. Se existir o arquivo de contexto de produto (`.agents/product-marketing.md` ou `.claude/product-marketing.md`), o Claude lê primeiro. Depois entende o negócio, os padrões de busca, o número possível de páginas e quem ranqueia hoje.
2. Aplica os princípios: valor único por página, dados próprios valem mais que dados públicos, subpastas em vez de subdomínios, intenção de busca real, qualidade antes de quantidade e nada de páginas-porta ou repetição.
3. Escolhe entre 12 modelos: templates, curadoria ("melhores"), conversões, comparações, exemplos, localidades, públicos, integrações, glossário, traduções, diretório e perfis. Dá para combinar (ex.: "melhores X em [cidade]").
4. Define o plano: padrão de palavra-chave e demanda, fontes de dados e atualização, estrutura do modelo de página (com conteúdo condicional para cada página ser diferente), links internos em "hub e raios", e estratégia de indexação.
5. Ajuda a escolher a plataforma de publicação.
6. Passa um checklist antes do lançamento e define o que acompanhar depois.

## O que você recebe

- Documento de estratégia: análise de oportunidade, plano de implementação e regras de conteúdo.
- Modelo de página: estrutura de URL, modelos de título e meta description, roteiro do conteúdo e dados estruturados.
- Checklist pré-lançamento e lista de métricas para o pós-lançamento.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `references/playbooks.md` | Os 12 modelos de página em detalhe, com exemplos e quando usar cada um |
| `references/implementation-platforms.md` | O que a plataforma precisa fazer e as opções para gerar as páginas |
| `evals/evals.json` | Casos de teste para avaliar se a skill está funcionando bem |

## Cuidados

- Trocar só o nome da cidade num texto igual é conteúdo raso e pode ser penalizado. Cada página precisa de informação própria.
- Não gere páginas sem demanda de busca: elas gastam o orçamento de rastreamento do Google.
- Dados desatualizados ou errados em escala prejudicam a marca. Defina quem atualiza a base.
- Se a base tiver dados de clientes ou imóveis, confira o que pode ser exposto publicamente (LGPD e contratos).

## Relacionadas

- [`site-architecture`](../site-architecture/README.md) — hierarquia, URLs e links internos para as páginas
- [`schema`](../schema/README.md) — dados estruturados no modelo de página
- [`seo-audit`](../seo-audit/README.md) — auditar as páginas depois do lançamento
- [`competitors`](../../01-marketing-estrategia/competitors/README.md) — modelo de páginas de comparação
