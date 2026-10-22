# Novidade Kenlo · agente

## Para que serve

Delegar o pacote de comunicação de uma atualização de produto.

## Quando usar

Pedir ao Claude Code para usar o agente `kenlo-novidade`, fornecendo as fontes e o resultado esperado.

## Como funciona

O instalador copia `AGENT.md` para `~/.claude/agents/kenlo-novidade.md`. O campo `skills` pré-carrega a [skill kenlo-novidade](../../../skills/02-copy-conteudo/kenlo-novidade/README.md), que precisa estar instalada. Não há cópia do fluxo neste agente.

## O que entrega

Rascunhos em português e pendências sustentadas pelo material enviado. Pode entregar o pacote completo ou um formato solicitado.

## Arquivos e cuidados

- `AGENT.md`: configuração e instruções de delegação; ferramentas limitadas a leitura.
- Origem: adaptação do agente personalizado Novidade Kenlo, disponível nesta sessão; uso interno Kenlo.
- Não transfere Knowledge, integrações, credenciais ou histórico do ChatGPT.
- Não publica nem envia mensagens. Não gera mídia automaticamente.

## Relacionadas

[Skill kenlo-novidade](../../../skills/02-copy-conteudo/kenlo-novidade/README.md) · [Inventário](../../../docs/INVENTARIO-CHATGPT.md)

