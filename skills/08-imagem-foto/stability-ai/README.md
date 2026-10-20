# stability-ai

> Gera e edita imagens com a Stability AI (Stable Diffusion 3.5, Ultra e Core): arte, ilustração, troca de objetos, remoção de fundo e aumento de resolução — para quem precisa de peças artísticas ou ajustes em imagens.

| | |
|---|---|
| **Área** | Imagem e foto |
| **Como chamar** | `/stability-ai` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Português |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Python com `Pillow`, conta em platform.stability.ai e chave na variável de ambiente `STABILITY_API_KEY` (ou num `.env` local fora do Git, nunca no repositório) |

## Para que serve

A skill conversa com a API da Stability AI para criar imagens a partir de texto, transformar uma imagem em outra, editar só uma parte, trocar um objeto por outro, apagar elementos, remover o fundo e ampliar a resolução. Tem 15 estilos prontos (fotorrealista, aquarela, 3D, pixel art, minimalista, entre outros) que completam o seu pedido automaticamente.

## Quando usar

- Você precisa de uma ilustração ou arte digital (capa, pôster, fundo, thumbnail).
- Você tem uma foto de produto e quer o fundo transparente.
- Você quer trocar ou apagar um objeto numa imagem, ou aumentar uma imagem pequena.

**Exemplos de pedido:**

- "Gera uma ilustração 3D de uma casa moderna com jardim, formato 16:9."
- "Remove o fundo desta foto do totem da imobiliária."
- "Aumenta a resolução desta imagem para usar num banner."

## Como funciona

1. O Claude escolhe o modo certo: `generate`, `ultra` ou `core` (gerar do zero), `img2img` (transformar), `inpaint` (editar área com máscara), `search-replace` (trocar objeto), `erase` (apagar), `remove-bg` (remover fundo), `upscale` ou `upscale-creative` (ampliar).
2. Escolhe o formato (quadrado, retrato, paisagem, 16:9, stories e outros) e um dos 15 estilos.
3. Pode analisar o prompt e sugerir melhorias antes de gerar (`--analyze`).
4. Roda `scripts/generate.py`, que chama a API e repete automaticamente se houver limite de requisições.
5. Salva a imagem e um arquivo de metadados com prompt, modelo, formato, semente e tempo.

## O que você recebe

- Imagens em `data/outputs/`, com nome no padrão `{modo}_{estilo}_{data}_{número}.png`.
- Um arquivo `.meta.json` por imagem, com tudo o que foi usado para gerá-la.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Instruções principais que o Claude segue |
| `scripts/generate.py` | Script que chama a API da Stability AI |
| `scripts/config.py` | Endereço da API, modelos, limites e leitura da chave |
| `scripts/styles.py` | Os 15 estilos artísticos |
| `scripts/requirements.txt` | Bibliotecas Python necessárias |
| `references/setup-guide.md` | Como criar a conta, configurar a chave e resolver erros |
| `references/prompt-engineering.md` | Técnicas de prompt para Stable Diffusion |
| `references/api-reference.md` | Endpoints, parâmetros, respostas e erros da API |

## Cuidados

- A skill diz que o uso é gratuito pela Community License, mas a própria API trabalha com créditos. Confira o saldo e o preço na sua conta antes de gerar em volume.
- Há limite diário configurável (`SAFETY_MAX_IMAGES_PER_DAY`, padrão 100).
- Não é a melhor opção para fotos realistas de pessoas; para isso use a `ai-studio-image`.
- A skill cita integrações com skills `instagram` e `telegram` que não existem neste repositório.

## Relacionadas

- [`image-studio`](../image-studio/README.md) — escolhe automaticamente entre esta skill e a `ai-studio-image`
- [`ai-studio-image`](../ai-studio-image/README.md) — fotos realistas de pessoas
- [`image`](../image/README.md) — medidas por plataforma e otimização para web
