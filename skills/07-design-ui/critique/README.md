# critique

> Faz uma crítica de design como um diretor de arte faria: diz o que funciona, o que não funciona e o que corrigir primeiro. Para quem quer uma avaliação honesta de uma tela ou página.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/critique` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: impeccable (pbakaus) via kursku/skills |
| **Requer** | Nada além do Claude. A skill pede para consultar antes a skill `frontend-design` (plugin), se estiver instalada. |

## Para que serve

Antes de mexer em uma tela, é útil saber onde estão os problemas de verdade. A skill avalia a interface como experiência completa, não só tecnicamente, e entrega um relatório priorizado. O primeiro teste é sempre: "isso parece feito por IA?" (paleta genérica, gradientes em texto, cards todos iguais, fontes padrão). Depois vêm hierarquia, organização, emoção, clareza e textos.

## Quando usar

- Antes de redesenhar uma página, para saber o que priorizar.
- Para uma segunda opinião sobre uma landing page ou tela nova antes de publicar.
- Quando a tela "não convence", mas ninguém sabe dizer exatamente por quê.

**Exemplos de pedido:**

- "Faz uma crítica de design desta landing page."
- "Avalia a hierarquia visual desta tela e me diz os 3 maiores problemas."
- "Critica a tela de detalhe do imóvel do site da imobiliária, pensando no comprador que chega pelo celular."

## Como funciona

1. Consulta a skill `frontend-design` para os princípios e antipadrões.
2. Avalia 10 dimensões: detecção de "cara de IA", hierarquia visual, arquitetura da informação, ressonância emocional, descoberta e affordance, composição, tipografia, uso de cor, estados (vazio, carregando, erro, sucesso) e microcopy.
3. Monta o relatório: veredito sobre antipadrões, impressão geral, o que está funcionando (2 a 3 pontos), problemas prioritários (3 a 5, com o quê, por que importa, como corrigir e qual skill usar), observações menores e perguntas provocativas.

## O que você recebe

- Relatório de crítica estruturado e priorizado, em texto.
- Para cada problema, uma correção concreta e a skill indicada para resolvê-lo (ex.: `/clarify`, `/distill`, `/polish`).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `.skillshare-meta.json` | Metadados de instalação (origem no repositório impeccable, versão) |

## Cuidados

- A skill é direta de propósito; a crítica pode soar dura.
- Ela pode sugerir comandos que não existem nesta biblioteca (`/optimize`, `/onboard`, `/audit`, `/extract`). Use os equivalentes que existem aqui.
- Em telas de produto da Kenlo, inclua na avaliação a aderência ao KDLS.
- A crítica não altera nada; é só diagnóstico.

## Relacionadas

- [`polish`](../polish/README.md) — corrige os detalhes apontados.
- [`distill`](../distill/README.md) — resolve excesso de elementos.
- [`clarify`](../clarify/README.md) — resolve problemas de texto.
- [`product-design`](../product-design/README.md) — framework de crítica construtiva em português.
