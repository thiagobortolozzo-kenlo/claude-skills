# Lançando um Podcast Passo a Passo · agente

## Para que serve

Delegar uma etapa editorial de um episódio, preservando a aprovação entre etapas.

## Quando usar

Pedir ao Claude Code para usar o agente `kenlo-podcast`, fornecendo as fontes e o resultado esperado.

## Como funciona

O instalador copia `AGENT.md` para `~/.claude/agents/kenlo-podcast.md`. O campo `skills` pré-carrega a [skill kenlo-podcast](../../../skills/09-video-motion/kenlo-podcast/README.md), que precisa estar instalada. Não há cópia do fluxo neste agente.

## O que entrega

Rascunhos em português e pendências sustentadas pelo material enviado. Devolve somente a etapa autorizada à conversa principal; a aprovação para avançar acontece nessa conversa.

## Arquivos e cuidados

- `AGENT.md`: configuração e instruções de delegação; ferramentas limitadas a leitura.
- Origem: adaptação do agente personalizado Lançando um Podcast Passo a Passo, disponível nesta sessão; uso interno Kenlo.
- Não transfere Knowledge, integrações, credenciais ou histórico do ChatGPT.
- Não publica nem envia mensagens. Não gera mídia automaticamente.

## Relacionadas

[Skill kenlo-podcast](../../../skills/09-video-motion/kenlo-podcast/README.md) · [Inventário](../../../docs/INVENTARIO-CHATGPT.md)

