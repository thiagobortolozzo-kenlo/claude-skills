# video-social-pack

> Transforma vídeos longos em um pacote para redes sociais: transcrição em português, proposta de cortes virais, clipes verticais 9:16 com legenda no padrão Kenlo e textos para YouTube, Instagram, TikTok e LinkedIn.

| | |
|---|---|
| **Área** | Vídeo e motion |
| **Como chamar** | `/video-social-pack` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês (as entregas saem em português) |
| **Origem** | Acervo do time (já em uso pelo Thiago) |
| **Requer** | Windows com PowerShell e os scripts auxiliares em `%USERPROFILE%\tools\whisper\` (`Transcribe-Audio.ps1`, `New-CaptionAss.ps1`, `Cut-Clip.ps1`, `viral-clip-selection-prompt.md` e a pasta `fonts\`), que usam ffmpeg e whisper.cpp. Nenhuma chave de API |

## Para que serve

Uma palestra, live ou webinar rende vários cortes curtos para redes. A skill faz a parte de pensar (entender o conteúdo, escolher os melhores trechos e escrever os textos) e chama scripts locais para a parte mecânica (transcrever, recortar e queimar a legenda). A legenda segue o visual Kenlo: fonte Poppins em negrito, branca com contorno preto, tudo em maiúsculas e uma palavra destacada em azul Kenlo (`#2A8CE4`).

## Quando usar

- Você tem a gravação de um evento ou webinar e quer cortes para Reels, Shorts e TikTok.
- Você recebeu um vídeo em inglês e quer a transcrição e as legendas em português.
- Você precisa de títulos, descrições e hashtags para cada rede, prontos para postar.

**Exemplos de pedido:**

- "Transforma este vídeo do webinar em cortes que viralizam."
- "Faz o pacote de redes sociais deste mp4 da palestra do nosso diretor."
- "Transcreve este vídeo e sugere 5 cortes de 30 segundos a 3 minutos."

## Como funciona

1. **Transcreve** o vídeo localmente (whisper.cpp), gerando texto e legenda com tempos (`.srt`). Pode demorar de minutos a mais de uma hora.
2. **Traduz para português**, se preciso, mantendo os tempos da legenda, e cria também uma versão corrida em texto.
3. **Entende o conteúdo**: argumento central, números, frases de efeito e estrutura.
4. **Propõe os cortes por escrito** (tempo, por que funciona, frase-gancho, desfecho, rede sugerida) e **espera a sua aprovação** antes de renderizar qualquer coisa.
5. Para cada corte aprovado, escreve legendas curtas (2 a 5 palavras por linha) com uma palavra em destaque e gera o arquivo de legenda estilizada.
6. **Recorta os clipes sempre na vertical 9:16** (fundo desfocado e vídeo original centralizado) e confere um quadro para ver se a legenda cabe.
7. **Escreve os textos** de cada rede para o vídeo completo e para cada clipe, usando só informações que estão no vídeo.

## O que você recebe

Uma pasta `<nome-do-video>_pacote/` ao lado do vídeo original, com:

- `transcricao_pt-br.md` e `transcricao_pt-br.srt`
- `cortes_propostos.md` (a proposta aprovada)
- `clipes/` com os vídeos verticais, os arquivos de legenda e de falas
- `pacote_redes_sociais.md` com título, descrição e hashtags por rede

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Fluxo completo, padrão de legenda Kenlo e estrutura da pasta de entrega |

Os scripts PowerShell, as fontes e o roteiro de seleção de cortes **não estão neste repositório**: ficam na máquina do Thiago, em `%USERPROFILE%\tools\whisper\`.

## Cuidados

- Sem os scripts em `tools\whisper\` a skill não funciona; quem for usar precisa pedir esses arquivos ao Thiago e revisá-los antes de rodar, porque eles instalam ffmpeg, whisper.cpp e o modelo de transcrição sozinhos na primeira vez.
- Só com áudio (mp3) dá para fazer transcrição e textos, mas não os clipes.
- Tudo roda no computador; nada é enviado para serviços externos de IA ou tradução.
- A escolha dos cortes e os textos são julgamento do Claude: revise antes de publicar e confira se quem aparece no vídeo autorizou o uso da imagem.
- O selo com o logo "K" ainda não é aplicado nos clipes.

## Relacionadas

- [`video-script`](../video-script/README.md) — roteiro para gravar vídeos novos
- [`content-repurposing`](../../05-redes-sociais/content-repurposing/README.md) — reaproveitar o mesmo conteúdo em outros formatos
- [`short-form-video-plan`](../../05-redes-sociais/short-form-video-plan/README.md) — calendário e estratégia de vídeos curtos
- [`instagram-caption`](../../02-copy-conteudo/instagram-caption/README.md) — legendas de Instagram mais elaboradas
