# Inventário do ChatGPT e comparação com o Claude Code

Levantamento: 22/10/2026. Base comparada: main, commit `95f53fcb06485e0b9e3b0cd4489d3746da787fea` (149 skills, 7 agentes, 12 áreas).

## Escopo e contagem

Foram paginadas as duas listagens expostas nesta sessão: 61 entradas locais e 51 entradas de plugins. A união por nome contém **67 entradas**, incluindo aliases de função e seis recursos de onboarding visíveis apenas na listagem de plugins. As duas fontes repetem muitos nomes: suas contagens não devem ser somadas. É um retrato da sessão, não uma listagem de todos os GPTs, agentes ou permissões da conta. A disponibilidade dos apps pode mudar.

- 9 skills de marketing têm equivalentes funcionais documentados no repositório: foram preservados, sem sobrescrever ou importar versões paralelas.
- 2 fluxos personalizados da Kenlo foram adaptados para skills e agentes do Claude Code.
- 56 recursos ficam somente como referência no inventário. Seus corpos, scripts, assets e instruções proprietárias não foram redistribuídos.

A listagem completa, por área e com decisão por item, está em [inventario-chatgpt.json](inventario-chatgpt.json).

## Marketing: correspondência sem duplicação

| Nome no ChatGPT | Implementação preservada | Comparação |
|---|---|---|
| `marketing-ideas` | [`marketing-ideas`](../skills/01-marketing-estrategia/marketing-ideas/README.md) | Mesmo escopo principal; arquivos e versões podem diferir. |
| `marketing-psychology` | [`marketing-psychology`](../skills/01-marketing-estrategia/marketing-psychology/README.md) | Mesmo escopo principal; arquivos e versões podem diferir. |
| `copywriting` | [`copywriting`](../skills/02-copy-conteudo/copywriting/README.md) | Mesmo escopo principal; arquivos e versões podem diferir. |
| `cold-email` | [`cold-email`](../skills/02-copy-conteudo/cold-email/README.md) | Mesmo escopo principal; arquivos e versões podem diferir. |
| `email-sequence` | [`emails`](../skills/02-copy-conteudo/emails/README.md) | Mesmo escopo principal; arquivos e versões podem diferir. |
| `paid-ads` | [`ads`](../skills/04-anuncios-conversao-vendas/ads/README.md) | Mesmo escopo principal; arquivos e versões podem diferir. |
| `ad-creative` | [`ad-creative`](../skills/04-anuncios-conversao-vendas/ad-creative/README.md) | Mesmo escopo principal; arquivos e versões podem diferir. |
| `seo-audit` | [`seo-audit`](../skills/03-seo-busca/seo-audit/README.md) | Mesmo escopo principal; arquivos e versões podem diferir. |
| `social-content` | [`social`](../skills/05-redes-sociais/social/README.md) | Mesmo escopo principal; arquivos e versões podem diferir. |

Os READMEs dos nove correspondentes foram lidos e comparados com o escopo das skills disponíveis. Isso confirma equivalência funcional, não identidade byte a byte, completude das referências antigas ou autorização de redistribuição. Nenhum arquivo dessas nove implementações foi alterado.

## Fluxos personalizados da Kenlo

| Origem | Skill canônica | Agente |
|---|---|---|
| Novidade Kenlo | [kenlo-novidade](../skills/02-copy-conteudo/kenlo-novidade/README.md) | [kenlo-novidade](../agents/02-copy-conteudo/kenlo-novidade/README.md) |
| Lançando um Podcast Passo a Passo | [kenlo-podcast](../skills/09-video-motion/kenlo-podcast/README.md) | [kenlo-podcast](../agents/09-video-motion/kenlo-podcast/README.md) |

As instruções completas expostas pelos dois agentes foram lidas. O fluxo fica somente no SKILL.md; o AGENT.md pré-carrega a skill, sem repetir o texto. Foram adaptados nomes genéricos, dependência de Knowledge e continuidade entre etapas. Exemplos de pessoas foram removidos. Não foram incluídos anexos, dados de clientes, histórico de conversas, credenciais ou IDs internos de integrações.

Novidade Kenlo mantém os seis formatos, destinos distintos de CTA e vídeo de no máximo 50 segundos. Podcast preserva as dez etapas e aprovação entre entregas. Para podcast, preferir a skill na conversa principal; um subagente executa somente a etapa já autorizada, e a conversa principal coleta a confirmação seguinte.

## Compatibilidade e instalação

Seguir os instaladores existentes. As pastas por área são organização do acervo; o instalador copia cada skill para `~/.claude/skills/<nome>/SKILL.md` e cada AGENT.md para `~/.claude/agents/<nome>.md`. Não copiar a árvore de áreas para dentro desses diretórios como mais um nível de descoberta.

Instalar as áreas 02-copy-conteudo e 09-video-motion para obter os dois fluxos. Instalar a skill correspondente junto com cada agente: o campo `skills` pré-carrega o conteúdo no subagente. As ferramentas do ChatGPT, conexões, Knowledge e permissões dos plugins não acompanham os arquivos.

Referências oficiais consultadas em 22/10/2026: [Skills](https://code.claude.com/docs/en/skills) e [Subagentes](https://code.claude.com/docs/en/sub-agents).

## Validação e limites

O gerador PowerShell original foi executado em um snapshot local dos metadados e requisitos do catálogo; a reprodução de 149 skills e 7 agentes foi comparada com o catálogo de origem antes da inclusão. Esse snapshot serve somente para regenerar índices; não é uma cópia executável do acervo antigo e não entra no PR.

Após a inclusão, o catálogo passa a 151 skills e 9 agentes. Verificar o CI do PR para validação sobre os arquivos reais do repositório, catálogo atualizado e busca de segredos. A validação estrutural não comprova o comportamento de todas as 149 skills antigas.

Os dois novos fluxos receberam ensaios com briefing e SRT sintéticos: novidade entregou seis formatos, CTA de produto no e-mail, CTA da novidade no on-site e roteiro de 48 segundos; podcast corrigiu o texto mantendo numeração e tempos e parou na primeira etapa pedindo confirmação. Esses ensaios foram realizados com agente de linguagem, não em uma instalação real do Claude Code. A instalação e descoberta em uma nova sessão do Claude Code continuam sendo uma verificação manual do revisor.

## Manutenção

Atualizar este inventário quando a lista de skills mudar. Comparar nome, função, origem, licença e arquivos antes de importar. Manter o acervo existente e as proteções de segurança. Conteúdo de terceiros sem autorização comprovada fica somente referenciado. Alterações entram por branch e Pull Request, com revisão antes do merge.

