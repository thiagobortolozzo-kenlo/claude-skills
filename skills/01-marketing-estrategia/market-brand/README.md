# market-brand

> Analisa a voz da marca a partir dos textos do site e gera um guia de tom e estilo que qualquer redator consegue seguir.

| | |
|---|---|
| **Área** | Marketing e estratégia |
| **Como chamar** | `/market-brand` — ou peça em linguagem natural (ver exemplos); também é acionada por `/market brand <url>` |
| **Idioma da skill** | Inglês |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Acesso à web (WebFetch ou navegador). Opcional: o script `analyze_page.py`, que fica em [`../market/scripts/`](../market/scripts/) e precisa de Python 3 |

## Para que serve

Lê como a marca se comunica (home, sobre, páginas de produto, blog, redes, e-mails, mensagens de erro) e descreve essa voz com evidência: citações reais que justificam cada nota. Depois transforma a análise em um guia prático com o que fazer e o que evitar, vocabulário, hierarquia de mensagens e exemplos de texto prontos na voz da marca.

## Quando usar

- Você precisa de um guia de tom de voz para o time, freelancers ou agência.
- Os textos do site, das redes e dos e-mails parecem de marcas diferentes.
- Está reposicionando a marca e quer entender o ponto de partida.
- Quer comparar a sua voz com a dos concorrentes e achar um espaço próprio.

**Exemplos de pedido:**

- "/market brand https://www.kenlo.com.br"
- "Crie um guia de voz da Kenlo para os redatores freelancers seguirem."
- "Compare a voz da Kenlo com a de dois concorrentes e diga onde podemos nos diferenciar."

## Como funciona

1. Coleta textos de fontes primárias (home, sobre, produto) e, se houver, secundárias (blog, redes, e-mails, ajuda) e terciárias (vagas, press releases, anúncios).
2. Dá nota de 1 a 10 em quatro eixos: formal x casual, sério x divertido, técnico x simples, contido x ousado, sempre com 3 a 5 citações de prova.
3. Mapeia como o tom muda por contexto (home, blog, redes, erro, CTA, suporte).
4. Encaixa a marca em um ou dois de cinco arquétipos (Autoridade, Inovador, Amigo, Rebelde, Guia).
5. Levanta vocabulário usado, palavras evitadas e frases marcantes.
6. Compara com 2 ou 3 concorrentes e audita a consistência entre canais.
7. Escreve a hierarquia de mensagens (slogan, propostas de valor, pitch de 30 segundos, texto institucional) e 8 exemplos de texto na voz identificada.

## O que você recebe

- Arquivo `BRAND-VOICE.md` com resumo da voz, notas nos quatro eixos com mapa visual, arquétipo, tom por contexto, vocabulário, quadro "nossa voz é / não é", o que fazer e o que evitar, hierarquia de mensagens, exemplos de texto, comparação com concorrentes, auditoria de consistência e recomendações.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais: os 10 passos da análise e o modelo do guia |

## Cuidados

- A skill foi escrita em inglês e usa exemplos de marcas estrangeiras; peça explicitamente que o guia e os exemplos saiam em português.
- O resultado reflete só o que é público. Se a Kenlo já tem manual de marca, entregue ao Claude para comparar.
- Revise o guia com o time de marca antes de distribuir para fornecedores.

## Relacionadas

- [`market-copy`](../../02-copy-conteudo/market-copy/README.md) — usa o `BRAND-VOICE.md` para escrever sugestões de copy.
- [`market-competitors`](../market-competitors/README.md) — os dados de concorrentes alimentam a comparação de voz.
- [`product-marketing`](../product-marketing/README.md) — posicionamento e mensagem por trás da voz.
- [`copy-editing`](../../02-copy-conteudo/copy-editing/README.md) — revisa textos para ficarem dentro do guia.
