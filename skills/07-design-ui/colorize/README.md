# colorize

> Adiciona cor com estratégia a telas muito cinzas ou monocromáticas, para dar significado, hierarquia e personalidade. Para quem cria ou revisa interfaces.

| | |
|---|---|
| **Área** | Design e UI |
| **Como chamar** | `/colorize` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) — upstream: impeccable (pbakaus) via kursku/skills |
| **Requer** | Nada além do Claude. A skill pede para consultar antes a skill `frontend-design` (plugin), se estiver instalada. |

## Para que serve

Uma interface só em cinza fica fria e difícil de ler: nada se destaca e os estados (sucesso, erro, pendente) se confundem. A skill escolhe poucas cores (2 a 4 além dos neutros), define uma dominante e acentos (regra 60/30/10) e aplica cor onde ela comunica algo: status, ações principais, categorias, gráficos e fundos levemente tingidos. Tudo respeitando contraste mínimo de acessibilidade.

## Quando usar

- Um painel ou dashboard está todo em tons de cinza e nada chama atenção.
- Status (ativo, pendente, concluído) não se diferenciam visualmente.
- A interface parece correta, mas sem calor ou identidade.

**Exemplos de pedido:**

- "Esse dashboard está muito cinza, coloca cor com propósito."
- "Quero badges de status coloridos na lista de pedidos."
- "No funil de leads do CRM, as etapas precisam se diferenciar por cor sem virar arco-íris."

## Como funciona

1. Coleta contexto obrigatório: público, casos de uso, personalidade e principalmente as cores de marca já existentes. Se faltar algo, para e pergunta.
2. Consulta a skill `frontend-design` para princípios e antipadrões.
3. Avalia onde a cor agrega valor: significado (sucesso, erro, aviso, informação), hierarquia, categorização, tom emocional, orientação.
4. Monta a paleta (dominante, secundária, acento) e onde cada cor aparece.
5. Aplica em status, botões principais, links, ícones, fundos tingidos, gráficos, bordas e títulos, usando OKLCH para escalas harmônicas.
6. Verifica contraste WCAG (4.5:1 para texto, 3:1 para componentes), daltonismo e que a cor nunca é o único indicador.

## O que você recebe

- Estratégia de cor com a função de cada tom.
- Alterações no código (variáveis/tokens de cor e estilos aplicados).
- Checagem de contraste e acessibilidade.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `.skillshare-meta.json` | Metadados de instalação (origem no repositório impeccable, versão) |

## Cuidados

- Em telas de produto da Kenlo, as cores devem sair dos tokens do KDLS; não invente cores novas fora do design system.
- Mais cor não é melhor: a skill limita a paleta de propósito.
- Teste com simulação de daltonismo quando houver vermelho e verde lado a lado.

## Relacionadas

- [`quieter`](../quieter/README.md) — quando a cor passou do ponto.
- [`normalize`](../normalize/README.md) — alinha as cores aos tokens do KDLS.
- [`theme-factory`](../theme-factory/README.md) — paletas prontas para slides e documentos.
- [`fixing-accessibility`](../fixing-accessibility/README.md) — confere contraste e estados.
