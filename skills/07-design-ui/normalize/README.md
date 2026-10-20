# normalize

> Alinha uma tela ou funcionalidade ao design system do projeto (cores, fontes, espaçamentos, componentes), eliminando soluções isoladas. Na Kenlo, serve para alinhar telas ao KDLS.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/normalize` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: impeccable (pbakaus) via kursku/skills |
| **Requer** | Nada além do Claude, rodando dentro do código do projeto. Precisa que a documentação/biblioteca do design system esteja acessível (na Kenlo, o KDLS). |

## Para que serve

Com o tempo, telas ganham cores "quase iguais", espaçamentos inventados e botões feitos à mão. A skill descobre o design system do projeto, compara a tela com ele e troca o que está fora do padrão por tokens e componentes oficiais. Na Kenlo, o KDLS é o design system obrigatório do frontend, e esta skill é a ferramenta indicada para deixar uma tela aderente a ele.

## Quando usar

- Uma tela antiga não segue o KDLS (cores fixas no código, componentes próprios).
- Uma funcionalidade nova foi feita rápido e precisa entrar no padrão antes do merge.
- Várias telas do mesmo produto parecem de sistemas diferentes.

**Exemplos de pedido:**

- "Normaliza esta tela para o design system do projeto."
- "Troca as cores e espaçamentos fixos desta página por tokens."
- "Alinha a tela de agenda de visitas ao KDLS: componentes, tokens e espaçamentos."

## Como funciona

1. Procura a documentação do design system (guias, biblioteca de componentes, tokens) e estuda princípios, componentes e tokens. Se algo não estiver claro, pergunta em vez de adivinhar.
2. Analisa a tela atual: onde ela desvia do padrão, o que é só visual e o que afeta uso, e qual a causa (token faltando, implementação isolada, conceito diferente).
3. Monta um plano: quais componentes trocar pelos oficiais, quais valores trocar por tokens, quais fluxos alinhar.
4. Executa em todas as frentes: tipografia, cor e tema, espaçamento e layout, componentes, movimento, responsividade, acessibilidade e revelação progressiva.
5. Faz limpeza: move componentes reaproveitáveis para o lugar compartilhado, remove código órfão, roda lint, checagem de tipos e testes.

## O que você recebe

- Plano de normalização com a lista de desvios encontrados.
- Código ajustado usando tokens e componentes do design system.
- Código morto removido e verificação de qualidade feita.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `.skillshare-meta.json` | Metadados de instalação (origem no repositório impeccable, versão) |

## Cuidados

- Se o KDLS não estiver no projeto ou documentado ali, indique ao Claude onde está (ou use a ferramenta de componentes KDLS do Kenlo Brain, se disponível).
- A skill não cria componentes novos quando já existe equivalente no design system.
- Revise o diff antes do merge; a mudança pode tocar vários arquivos.

## Relacionadas

- [`polish`](../polish/README.md) — passada final de detalhes depois de normalizar.
- [`teach-impeccable`](../teach-impeccable/README.md) — registra o contexto de design (incluindo o KDLS) para as próximas sessões.
- [`critique`](../critique/README.md) — diagnóstico antes da normalização.
- [`product-design`](../product-design/README.md) — estrutura de design system e tokens.
