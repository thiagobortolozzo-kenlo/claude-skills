# avoid-ai-writing

> Audita e reescreve textos para tirar a "cara de IA", para quem escreve ou revisa conteúdo antes de publicar.

| | |
|---|---|
| **Área** | Copy e conteúdo |
| **Como chamar** | `/avoid-ai-writing` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026); original de conorbronsdon/avoid-ai-writing |
| **Requer** | Nada além do Claude |

## Para que serve

Textos escritos com ajuda de IA costumam repetir os mesmos vícios: palavras infladas ("robusto", "alavancar", "jornada"), frases de efeito vazias, excesso de negrito e travessões, conclusões genéricas. Esta skill encontra esses padrões (21 categorias e uma tabela com 43 trocas de palavras) e entrega uma versão reescrita, mais simples e humana.

## Quando usar

- Depois de gerar um rascunho com IA e antes de publicar no blog, site ou redes.
- Quando um texto "soa robótico" e você não sabe dizer exatamente por quê.
- Para revisar materiais internos, documentação ou e-mails que vão para clientes.

**Exemplos de pedido:**

- "Audita esse texto e tira os vícios de IA."
- "Esse post está com cara de ChatGPT, reescreve deixando mais natural."
- "Revisa a página de apresentação da Kenlo para imobiliárias e aponta o que parece escrito por IA."

## Como funciona

1. Você cola o texto e pede a auditoria.
2. O Claude procura os 21 tipos de padrão: formatação (travessões, negrito demais, emojis em títulos, listas em excesso), estrutura de frase (rodeios, intensificadores vazios, "regra de três"), palavras da tabela de substituição, frases-modelo, transições, exageros de importância, atribuições vagas ("especialistas dizem"), conclusões genéricas, restos de chatbot, linguagem promocional, entre outros.
3. Reescreve o texto trocando cada problema por algo mais simples e direto.
4. Faz uma segunda leitura da versão nova para pegar o que sobrou.

## O que você recebe

- **Problemas encontrados**: cada trecho com cara de IA, citado.
- **Versão reescrita** do texto.
- **O que mudou**: resumo das edições.
- **Segunda auditoria**: checagem final da reescrita.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue, com as categorias detectadas, um exemplo e as limitações |

## Cuidados

- As regras foram pensadas para textos em inglês; em português, use como guia e revise o resultado com olhar de quem conhece a língua.
- É baseada em padrões, não em certezas: algumas palavras marcadas podem estar corretas no contexto.
- Não detecta código gerado por IA, só texto corrido.
- Não verifica fatos nem encontra fontes reais para substituir atribuições vagas. Isso continua sendo trabalho humano.

## Relacionadas

- [`copy-editing`](../copy-editing/README.md) — revisão completa de texto, além dos vícios de IA
- [`copywriting`](../copywriting/README.md) — para escrever a copy do zero já sem esses padrões
- [`linkedin-post`](../linkedin-post/README.md) — posts que costumam precisar dessa limpeza antes de publicar
