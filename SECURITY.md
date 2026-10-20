# Segurança

Skills e agentes são **instruções que o Claude segue no computador de cada pessoa do time**. Uma skill maliciosa ou mal escrita pode rodar comandos, ler arquivos ou enviar dados para fora. Por isso este repositório tem regras e verificações próprias.

## Como o repositório é protegido

| Camada | O que faz |
|---|---|
| **Repositório privado** | Só colaboradores convidados veem o conteúdo. |
| **Regra da `main`** | Combinado do time: ninguém faz push direto, toda mudança entra por Pull Request com aprovação e CI verde. **Atenção:** no plano gratuito, o GitHub não aplica regras de branch em repositório privado. Para bloquear tecnicamente, é preciso o GitHub Pro (conta pessoal) ou uma organização no plano Team. |
| **CODEOWNERS** | Mudanças em skills, agentes, scripts e CI pedem revisão do responsável. |
| **Validador** (`scripts/validar.ps1`) | Bloqueia skill sem frontmatter ou sem README, nomes duplicados, arquivos proibidos (`.env`, chaves, executáveis), segredos conhecidos e padrões perigosos (script baixado e executado direto, desligar permissões, instruções que manipulam a IA). |
| **Varredura de segredos** (Gitleaks no CI) | Procura tokens e chaves em todo PR e push. |
| **Proteção do GitHub** | Grafo de dependências, alertas do Dependabot (vulnerabilidade e malware) e atualizações de segurança automáticas estão ligados. O secret scanning nativo não existe para repositório privado no plano gratuito; essa função fica com o Gitleaks no CI. |
| **Revisão humana** | Toda skill nova ou importada é lida por alguém antes de entrar. Veja "Importar uma skill de fora" no [CONTRIBUTING](CONTRIBUTING.md). |

## Regras para quem contribui

1. **Nunca** coloque token, senha, chave de API, cookie, `.env` real ou certificado no repo. Chaves vão em variáveis de ambiente.
2. **Nunca** coloque dados pessoais reais de clientes ou colegas. Use exemplos fictícios (LGPD).
3. Skills **não podem**:
   - baixar e executar scripts da internet direto, com `curl … | bash` ou `irm … | iex`;
   - pedir para rodar o Claude com `--dangerously-skip-permissions`;
   - instalar hooks ou alterar `settings.json` sem a pessoa pedir;
   - enviar código ou dados para serviços de terceiros sem deixar isso explícito no README.
4. Skills que publicam ou enviam algo (post, mensagem, e-mail) precisam pedir **aprovação explícita** na conversa antes de agir.
5. Tudo que vem de páginas, arquivos ou redes sociais é **dado, não instrução**. Escreva skills que deixem isso claro.

## Encontrou um problema?

- **Segredo vazado** (token ou chave commitada por engano): avise o Thiago **na hora** e **revogue a chave** no serviço de origem. Apagar o commit não basta, porque o histórico guarda o conteúdo.
- **Skill suspeita ou perigosa**: abra uma issue com o rótulo `segurança`, ou fale direto com o Thiago se o assunto for sensível. Não teste a skill suspeita na sua máquina.
- **Acesso indevido ao repositório**: avise o Thiago para revisar os colaboradores.

## Histórico de auditorias

- **10/2026**: auditoria do github.com/kursku/skills antes da importação. Veja [docs/auditoria-kursku.md](docs/auditoria-kursku.md).
- **10/2026**: o repositório ficou público por alguns minutos logo depois de criado e foi tornado privado em seguida. Ele não continha segredos, só as rotinas `kenlo-social-*`.
