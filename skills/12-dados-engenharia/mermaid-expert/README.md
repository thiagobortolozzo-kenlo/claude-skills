# mermaid-expert

> Cria diagramas em Mermaid (fluxogramas, sequência, modelo de dados, estados, jornadas, cronogramas e arquitetura) — para quem precisa explicar um processo ou sistema com uma imagem.

| | |
|---|---|
| **Área** | Dados e engenharia |
| **Como chamar** | `/mermaid-expert` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude; para ver o desenho, qualquer lugar que mostre Mermaid (GitLab, GitHub, Notion, editores de Markdown ou o site mermaid.live) |

## Para que serve

Mermaid é uma forma de desenhar diagramas escrevendo texto simples, que vira imagem automaticamente. A skill escolhe o tipo certo de diagrama para o que você quer mostrar, mantém o desenho legível (sem excesso de caixas), aplica estilo consistente e entrega uma versão básica e outra estilizada, com comentários explicando as partes mais difíceis.

## Quando usar

- Você quer mostrar um processo passo a passo (por exemplo, o caminho de um lead até o contrato).
- Você precisa documentar como sistemas conversam entre si ou o modelo de uma base de dados.
- Você quer um cronograma (Gantt) ou uma linha do tempo simples para um projeto.

**Exemplos de pedido:**

- "Desenha em Mermaid o fluxo do lead desde o anúncio até a visita ao imóvel."
- "Cria um diagrama de sequência da integração do portal de imóveis com o CRM."
- "Faz um Gantt do lançamento da campanha com as etapas e prazos."

## Como funciona

1. O Claude escolhe o tipo de diagrama adequado: fluxograma, sequência, classes, estados, entidade-relacionamento, Gantt, pizza, git, jornada, quadrante ou linha do tempo.
2. Monta o diagrama com rótulos claros, sem sobrecarregar.
3. Aplica cores e estilo consistentes.
4. Entrega a versão básica e a estilizada, com comentários no código.
5. Sugere alternativas de diagrama, cuidados de acessibilidade e como exportar.

## O que você recebe

- Código Mermaid completo, pronto para colar.
- Instruções para visualizar e exportar (PNG, SVG).
- Opções alternativas de diagrama.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Tipos de diagrama, abordagem e formato de entrega |

## Cuidados

- A skill é marcada como "stub" (versão resumida): tem poucas instruções e cita um arquivo `resources/implementation-playbook.md` que não existe neste repositório.
- Teste o diagrama no lugar onde ele vai aparecer; nem toda ferramenta suporta todos os tipos de diagrama.
- Ao colar o código em sites externos, não inclua nomes de clientes ou dados internos sensíveis.

## Relacionadas

- [`kpi-dashboard-design`](../kpi-dashboard-design/README.md) — explicar de onde vêm os dados do painel
- [`airflow-dag-patterns`](../airflow-dag-patterns/README.md) — documentar o fluxo de um pipeline
- [`site-architecture`](../../03-seo-busca/site-architecture/README.md) — desenhar a estrutura de páginas de um site
