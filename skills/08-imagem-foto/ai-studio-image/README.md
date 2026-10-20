# ai-studio-image

> Gera fotos realistas, com cara de "tirada no celular", usando o Google AI Studio (Gemini) — para quem precisa de imagens de pessoas para redes sociais ou material educativo.

| | |
|---|---|
| **Área** | Imagem e foto |
| **Como chamar** | `/ai-studio-image` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Python 3.10+, bibliotecas `google-genai`, `Pillow` e `python-dotenv`, e uma chave do Google AI Studio na variável de ambiente `GEMINI_API_KEY` (nunca dentro do repositório) |

## Para que serve

Imagens de IA costumam parecer "perfeitas demais". Esta skill pega o seu pedido e acrescenta, antes de enviar ao Gemini, detalhes que deixam a foto com aparência humana: luz natural, leve granulação de câmera de celular, enquadramento um pouco imperfeito, pele com textura real e cenários do dia a dia. O resultado é uma foto que parece feita por uma pessoa, não por uma máquina.

## Quando usar

- Você precisa de uma foto lifestyle para um post de Instagram e não tem banco de imagens adequado.
- Você está montando um material de curso ou apresentação e quer uma imagem de pessoa explicando algo.
- Você quer várias variações de uma mesma cena para testar qual funciona melhor.

**Exemplos de pedido:**

- "Gera uma foto realista de uma mulher tomando café numa cafeteria, formato quadrado."
- "Cria uma imagem estilo stories de um corretor mostrando um apartamento para um casal."
- "Quero uma foto educacional de uma pessoa usando o notebook para um tutorial do CRM da Kenlo."

## Como funciona

1. O Claude identifica o **modo**: `influencer` (redes sociais, lifestyle) ou `educacional` (cursos, tutoriais, apresentações).
2. Define o **formato**: quadrado (feed), retrato, paisagem (YouTube/banner) ou stories (9:16).
3. Passa o seu pedido pelo "motor de humanização" (`prompt_engine.py`), que adiciona cinco camadas de realismo: dispositivo, iluminação, imperfeições, autenticidade e contexto do ambiente.
4. Gera a imagem com `generate.py`. Por padrão usa o modelo gratuito; modelos pagos (Imagen 4, Gemini Pro Image) só rodam com a opção `--force-paid`.
5. Mostra o resultado e ajusta: luz, enquadramento, nível de naturalidade (ultra, natural, polished, editorial), hora do dia ou cenário.
6. Também pode usar um dos 20 modelos prontos (ex.: `cafe-lifestyle`, `workspace-minimal`, `tutorial-step`, `team-collaboration`) e gerar várias variações de uma vez.

## O que você recebe

- Arquivos de imagem gerados, salvos na pasta de saída da skill.
- O prompt final "humanizado" que foi usado, para repetir ou ajustar depois.
- Sugestões de ajuste para a próxima rodada.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `scripts/generate.py` | Script que chama a API do Gemini e salva as imagens |
| `scripts/prompt_engine.py` | Motor que transforma o pedido em um prompt realista |
| `scripts/templates.py` | Os 20 modelos prontos de cena (influencer e educacional) |
| `scripts/config.py` | Modelos, formatos, custos, limites de segurança e leitura da chave |
| `scripts/requirements.txt` | Bibliotecas Python necessárias |
| `references/setup-guide.md` | Passo a passo para obter a chave e instalar |
| `references/prompt-engineering.md` | Técnicas de prompt para fotos com aparência humana |

## Cuidados

- A chave `GEMINI_API_KEY` vai em variável de ambiente ou em um arquivo `.env` local fora do Git. Nunca coloque a chave no repositório.
- Modelos pagos custam de US$ 0,02 a US$ 0,13 por imagem. A skill bloqueia modelos pagos por padrão e tem limite diário configurável (`SAFETY_MAX_IMAGES_PER_DAY`, padrão 50).
- Não gere imagens que imitem pessoas reais (clientes, colaboradores, famosos) sem autorização. Fotos de pessoas fictícias usadas em anúncio podem exigir aviso de que foram feitas com IA.
- O `SKILL.md` cita um arquivo `references/api-reference.md` e uma skill `instagram` que não existem neste repositório.
- Os caminhos nos exemplos apontam para `%USERPROFILE%\.claude\skills\ai-studio-image\`; ajuste se a skill estiver instalada em outro lugar.

## Relacionadas

- [`image-studio`](../image-studio/README.md) — decide sozinho se o pedido vai para esta skill ou para a `stability-ai`
- [`stability-ai`](../stability-ai/README.md) — melhor para arte, ilustração e edição de imagem
- [`personal-brand-photography`](../personal-brand-photography/README.md) — direção de fotos de marca pessoal
- [`instagram-caption`](../../02-copy-conteudo/instagram-caption/README.md) — legenda para o post que vai usar a foto
