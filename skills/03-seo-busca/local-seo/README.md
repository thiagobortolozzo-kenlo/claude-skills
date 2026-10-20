# local-seo

> Planeja e executa SEO local (perfil no Google, citações em diretórios, links locais, páginas por cidade ou bairro), para quem quer que um negócio físico ou prestador de serviço apareça nas buscas da sua região.

| | |
|---|---|
| **Área** | SEO e busca |
| **Como chamar** | `/local-seo` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026); autoria original Cafe Code AI |
| **Requer** | Nada além do Claude. Opcional: ferramentas de SEO local (Moz Local, Semrush Listing Management, BrightLocal, Ahrefs), com acesso configurado por você |

## Para que serve

SEO local vai além do perfil no Google. Esta skill cobre também a consistência de nome, endereço e telefone em todos os diretórios (o chamado NAP), a busca por links de sites da região, dados estruturados `LocalBusiness` no site e páginas que falam de serviços e bairros específicos. O resultado é um plano para o negócio aparecer quando alguém busca "perto de mim" ou "[serviço] em [cidade]".

## Quando usar

- Um negócio local aparece pouco no Maps e nas buscas da cidade.
- Os dados da empresa estão diferentes em vários sites (telefone antigo, endereço abreviado).
- Planejar páginas do site por bairro, cidade ou serviço.

**Exemplos de pedido:**

- "Faz um plano de SEO local para uma imobiliária em Campinas."
- "Audita a consistência do nome, endereço e telefone da empresa nos diretórios."
- "Gera o JSON-LD LocalBusiness para o site de uma imobiliária cliente da Kenlo."

## Como funciona

1. **Primeiros passos:** reivindicar o perfil no Google, padronizar nome, endereço e telefone, escolher categorias e subir fotos.
2. **Otimização completa do perfil:** auditoria inicial, preenchimento detalhado (categorias, área de cobertura, horários, atributos, descrição de até 750 caracteres com palavras locais), mínimo de 10 fotos com nomes de arquivo descritivos, postagens semanais e resposta a todas as avaliações.
3. **Citações e links locais:** auditoria das listagens existentes, correção das inconsistências, cadastro em diretórios gerais e do setor (ex.: Apontador, Telelistas, associações comerciais), parcerias e patrocínios locais, conteúdo sobre a região e e-mail de abordagem para sites locais.
4. **Site:** páginas de serviço e localização com palavras locais, mapa na página de contato e dados estruturados `LocalBusiness`.
5. Acompanhamento mensal de links, citações e métricas do perfil, conferindo o checklist da skill.

## O que você recebe

- Plano de SEO local com as etapas acima.
- Textos de postagens, respostas a avaliações e e-mail de abordagem a partir dos templates.
- Modelo de JSON-LD `LocalBusiness` para adaptar.
- Checklist de 12 itens e metas de referência (visualizações, cliques, ligações, rotas, avaliações).

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue: dois fluxos (perfil no Google e citações/links), templates de postagem e de JSON-LD, checklist, métricas, erros comuns e dicas avançadas |

## Cuidados

- Os exemplos usam empresas, endereços e telefones fictícios. Substitua pelos dados reais antes de usar.
- O modelo de JSON-LD inclui nota média e quantidade de avaliações: só publique números verdadeiros e atualizados.
- Troca de links com parceiros deve ser natural e relevante; esquemas de troca em massa são penalizados pelo Google.
- Se usar IA para rascunhar respostas a avaliações, alguém do time revisa antes de publicar.
- O Claude não acessa o painel do Google nem os diretórios: ele planeja e escreve, você aplica.

## Relacionadas

- [`google-business-optimizer`](../google-business-optimizer/README.md) — foco só no perfil do Google, com rotina semanal
- [`schema`](../schema/README.md) — implementar e validar o JSON-LD `LocalBusiness`
- [`review-response`](../../02-copy-conteudo/review-response/README.md) — respostas a avaliações
- [`real-estate-marketing`](../../01-marketing-estrategia/real-estate-marketing/README.md) — marketing para imobiliárias
