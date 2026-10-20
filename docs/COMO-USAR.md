# Guia rápido de uso

Para quem nunca usou skills no Claude Code.

## 1. O que você precisa

- **Claude Code** instalado: no app desktop (aba Code), no terminal ou no VS Code.
- **Git** instalado e acesso a este repositório (peça ao Thiago para te convidar).

## 2. Instalar

```powershell
git clone https://github.com/thiagobortolozzo-kenlo/claude-skills.git
cd claude-skills
.\install.ps1 -Listar           # mostra o que tem, sem instalar
.\install.ps1 -Area 07-design-ui
```

Quais áreas escolher? Veja a tabela no [README](../README.md#áreas) ou o [CATÁLOGO](../CATALOGO.md).

Sugestões por função:

| Você trabalha com | Instale |
|---|---|
| Marketing de performance | `01`, `02`, `04` |
| Conteúdo e redes sociais | `02`, `05`, `08`, `09` |
| Design e produto | `07`, `08` |
| Vídeo e motion | `08`, `09` |
| Customer Success | `06`, `11` |
| Dados e engenharia | `12` |
| Jurídico e compliance | `10` |

## 3. Usar

Abra uma **nova** sessão do Claude Code (as skills são carregadas quando a sessão começa). Há duas formas de usar:

- **Pedindo normalmente**: *"cria um roteiro de Reels sobre gestão de imóveis"*. O Claude percebe qual skill serve e usa.
- **Chamando pelo nome**: digite `/` e o nome da skill, por exemplo `/video-script`. Isso garante que a skill certa será usada.

Para saber o que uma skill faz antes de usar, abra o `README.md` dela pelo [CATÁLOGO](../CATALOGO.md).

## 4. Atualizar

```powershell
cd claude-skills
git pull
.\install.ps1 -Area 07-design-ui -Atualizar
```

## 5. Remover

Apague a pasta da skill em `~/.claude/skills/<nome>` (no Windows: `C:\Users\<você>\.claude\skills\<nome>`). Para agentes, apague `~/.claude/agents/<nome>.md`.

## Problemas comuns

| Problema | Solução |
|---|---|
| "a execução de scripts foi desabilitada neste sistema" | Rode `powershell -ExecutionPolicy Bypass -File .\install.ps1` |
| A skill não aparece | Abra uma sessão **nova** do Claude Code |
| O Claude não usa a skill sozinho | Chame pelo nome: `/nome-da-skill` |
| A skill pede uma chave de API | Veja a seção "Requer" no README da skill. A chave vai em variável de ambiente, nunca no repo |
| "Repository not found" no `git clone` | Você ainda não foi convidado, ou está logado com outra conta do GitHub |
