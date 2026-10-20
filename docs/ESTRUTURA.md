# Estrutura do repositório

```
claude-skills/
├── README.md               visão geral e início rápido
├── CATALOGO.md             índice de todas as skills e agentes (gerado)
├── CONTRIBUTING.md         como contribuir
├── SECURITY.md             regras e proteções de segurança
├── CHANGELOG.md            histórico de mudanças
├── NOTICE.md               origem e licenças das skills de terceiros
├── install.ps1             instalador para Windows
├── install.sh              instalador para macOS/Linux
│
├── skills/
│   └── <NN-área>/
│       ├── README.md       tabela das skills da área (gerado)
│       └── <skill>/
│           ├── SKILL.md    instruções que o Claude segue (obrigatório)
│           ├── README.md   explicação em português para pessoas (obrigatório)
│           ├── references/ material de apoio que o Claude lê quando precisa (opcional)
│           ├── scripts/    código que a skill executa (opcional)
│           └── assets/     modelos, imagens, boilerplates (opcional)
│
├── agents/
│   ├── README.md           índice dos agentes (gerado)
│   └── <NN-área>/
│       ├── README.md       tabela dos agentes da área (gerado)
│       └── <agente>/
│           ├── AGENT.md    definição do subagente (obrigatório)
│           └── README.md   explicação em português (obrigatório)
│
├── templates/
│   ├── skill/              SKILL.md + README.md de exemplo
│   └── agent/              AGENT.md + README.md de exemplo
│
├── scripts/
│   ├── areas.psd1          lista oficial de áreas (nome da pasta, título, descrição)
│   ├── resumos.tsv         resumo de uma frase de cada skill e agente, usado no catálogo
│   ├── gerar-catalogo.ps1  gera CATALOGO.md e os README das áreas
│   └── validar.ps1         valida estrutura e segurança (roda no CI)
│
├── docs/
│   ├── COMO-USAR.md        guia rápido
│   ├── ESTRUTURA.md        este arquivo
│   ├── GOVERNANCA.md       quem aprova o quê, versões, ciclo de vida
│   ├── radar-kursku.md     candidatas boas que ainda não entraram
│   └── auditoria-kursku.md auditoria de segurança da importação
│
└── .github/
    ├── CODEOWNERS          quem revisa cada parte
    ├── pull_request_template.md
    ├── ISSUE_TEMPLATE/     nova skill, sugerir skill, problema, segurança
    ├── dependabot.yml      atualiza as actions do CI
    └── workflows/
        └── validar.yml     validação, catálogo atualizado e varredura de segredos
```

## Por que as áreas são numeradas

O número mantém a ordem estável no GitHub e no instalador: `01` a `05` são marketing, `06` é automação, `07` a `09` são criação, e `10` a `12` são áreas de suporte. A lista oficial fica em `scripts/areas.psd1`. Para criar uma área nova, adicione-a lá e abra um PR.

## Como o instalador vê a estrutura

- Cada pasta `skills/<área>/<skill>/` vira `~/.claude/skills/<skill>/`. A pasta inteira é copiada, incluindo o README, que o Claude ignora.
- Cada `agents/<área>/<agente>/AGENT.md` vira `~/.claude/agents/<agente>.md`.
- As áreas existem só no repositório. No Claude Code, todas as skills ficam lado a lado, e por isso os nomes precisam ser únicos.
