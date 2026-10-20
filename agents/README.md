# Agentes

Subagentes do Claude Code, separados pela mesma área das skills. Cada agente fica em `agents/<área>/<nome>/` com o `AGENT.md` (o que o Claude lê) e um `README.md` (a explicação para pessoas).

## [Marketing e estratégia](01-marketing-estrategia/README.md)

| Agente | Para que serve |
|---|---|
| [**market-competitive**](01-marketing-estrategia/market-competitive/README.md) | Especialista em concorrência da auditoria /market audit: mapeia concorrentes, lacunas e diferenciais. |
| [**market-content**](01-marketing-estrategia/market-content/README.md) | Especialista em conteúdo da auditoria /market audit: avalia copy, clareza da mensagem e persuasão. |
| [**market-conversion**](01-marketing-estrategia/market-conversion/README.md) | Especialista em conversão (CRO) da auditoria /market audit: acha atritos e barreiras na jornada. |
| [**market-strategy**](01-marketing-estrategia/market-strategy/README.md) | Especialista em estratégia da auditoria /market audit: avalia posicionamento, preço e potencial de receita. |
| [**market-technical**](01-marketing-estrategia/market-technical/README.md) | Especialista técnico da auditoria /market audit: SEO técnico, performance, tracking e arquitetura. |

## [Redes sociais](05-redes-sociais/README.md)

| Agente | Para que serve |
|---|---|
| [**kenlo-social-listener**](05-redes-sociais/kenlo-social-listener/README.md) | [Kenlo] Rotina diária: lê as redes da Kenlo, separa quem precisa de suporte, valida no Kenlo Brain e rascunha o encaminhamento. |
| [**kenlo-social-responder**](05-redes-sociais/kenlo-social-responder/README.md) | [Kenlo] Rascunha respostas públicas a elogios, críticas e parcerias na voz da Kenlo; só publica com aprovação. |

[← Catálogo completo](../CATALOGO.md)
