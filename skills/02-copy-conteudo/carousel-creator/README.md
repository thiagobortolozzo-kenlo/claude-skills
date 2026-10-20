# carousel-creator

> Cria o roteiro de carrosséis para redes sociais, slide a slide, com texto e sugestão visual, para quem produz conteúdo de Instagram ou LinkedIn.

| | |
|---|---|
| **Área** | Copy e conteúdo |
| **Como chamar** | `/carousel-creator` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026); autoria original Cafe Code AI |
| **Requer** | Nada além do Claude |

## Para que serve

Ajuda a planejar um carrossel que prende a atenção na capa, conta uma história lógica nos slides do meio e termina com uma chamada para ação clara. Para cada slide, o Claude escreve o texto e descreve a imagem, ícone ou gráfico que combina com ele. O resultado é um roteiro pronto para o designer montar.

## Quando usar

- Planejar um carrossel educativo para atrair leads (ex.: "dicas", "passo a passo").
- Anunciar um produto, recurso ou oferta em formato de carrossel.
- Transformar um conteúdo longo (artigo, webinar) em uma sequência de 5 a 10 slides.

**Exemplos de pedido:**

- "Cria um carrossel de 8 slides sobre como otimizar o perfil no LinkedIn."
- "Monta um carrossel de lançamento para o nosso novo e-book, com oferta no último slide."
- "Faz um carrossel educativo para imobiliárias: 6 erros que fazem o lead sumir depois da primeira visita."

## Como funciona

1. Você define o formato (quantos slides, idealmente 5 a 10) e o objetivo (educar, vender, dar dicas rápidas, mostrar prova social).
2. O Claude monta a narrativa. Os modelos da skill seguem sequências como Gancho → Problema → Solução → Benefícios → CTA, ou Dor → Solução → Diferenciais → Prova social → Oferta → CTA.
3. Para cada slide, escreve um texto curto e persuasivo e descreve o elemento visual, respeitando a identidade da marca se você informar.
4. Fecha com uma única chamada para ação no último slide (ex.: "link na bio", "comente", "salve este post").

## O que você recebe

- Roteiro slide a slide: título ou texto de cada slide e a sugestão visual correspondente.
- CTA final pronta.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue, com dois fluxos de exemplo (carrossel educativo de 8 slides e de lançamento de 6 slides) |

## Cuidados

- O arquivo `SKILL.md` está incompleto: termina no meio do último slide do segundo exemplo. O Claude consegue trabalhar com ele, mas não há seção de checklist ou templates finais.
- Os exemplos usam números de efeito ("mais de 70%", "40%", "500 alunos"). Não publique estatísticas sem fonte real; troque por dados da Kenlo ou retire.
- O estilo dos exemplos é bem "vendedor" (caixa alta, promessas fortes). Ajuste ao tom de voz da marca.
- A skill não gera as imagens; ela entrega texto e descrição visual.

## Relacionadas

- [`instagram-caption`](../instagram-caption/README.md) — legenda para acompanhar o carrossel
- [`linkedin-post`](../linkedin-post/README.md) — versão do conteúdo para LinkedIn
- [`content-repurposing`](../../05-redes-sociais/content-repurposing/README.md) — transformar um conteúdo longo em carrossel
- [`canvas-design`](../../08-imagem-foto/canvas-design/README.md) — para criar a arte dos slides
