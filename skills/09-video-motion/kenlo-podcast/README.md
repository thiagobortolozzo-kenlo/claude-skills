# Lançando um Podcast Passo a Passo · skill

## Para que serve

Transformar um SRT em um pacote de publicação e divulgação de podcast, uma entrega por vez, com aprovação entre etapas.

## Quando usar

Ao preparar um episódio com transcrição. Exemplo: `/kenlo-podcast corrija este SRT e preserve os timestamps`. Usar a skill na conversa principal para manter as confirmações.

## Como funciona

Instalar a área com `./install.sh 09-video-motion` ou `.\\install.ps1 -Area 09-video-motion`, na raiz do repositório. O instalador copia esta pasta para `~/.claude/skills/kenlo-podcast/`. Abrir uma nova sessão e chamar `/kenlo-podcast`.

Iniciar pela correção do SRT. Depois: metadados, YouTube, prompts de cortes, social, carrossel, artigo, comunidade, republicação e checklist. Parar entre etapas até receber continuar, ajustar, pular ou parar. Republicação significa criar copy, não criar um agendamento.

## O que entrega

SRT corrigido com numeração e tempos preservados; pacotes editoriais por canal e checklist. Tempos dos capítulos devem vir do SRT; números, falas e cargos não podem ser inventados.

## Arquivos da skill

`SKILL.md` contém o fluxo completo adaptado do agente personalizado Lançando um Podcast Passo a Passo. Não depende de scripts ou arquivos de apoio ocultos. Knowledge e anexos do ChatGPT precisam ser fornecidos pelo usuário quando necessários.

## Cuidados

Uso interno Kenlo. Gerar rascunhos e orientações, sem publicar, enviar ou agendar. Usar placeholders para URLs ausentes. Não incluir dados pessoais de clientes ou credenciais nas saídas. Comparar o SRT final com o original antes de subir a legenda.

## Relacionadas

[Agente kenlo-podcast](../../../agents/09-video-motion/kenlo-podcast/README.md) · [Inventário e limites da migração](../../../docs/INVENTARIO-CHATGPT.md)

