# Como contribuir

Qualquer pessoa do time pode adicionar ou melhorar uma skill ou um agente. Tudo entra por **Pull Request**. Combinado do time: **ninguém faz push direto na `main`**. No plano gratuito, o GitHub não consegue bloquear isso tecnicamente num repositório privado (veja o [SECURITY](SECURITY.md)), então vale a regra combinada.

## Fluxo

1. Atualize sua cópia: `git checkout main && git pull`.
2. Crie uma branch com prefixo: `skill/<nome>`, `agente/<nome>`, `fix/<nome>` ou `docs/<assunto>`.
3. Faça a mudança (veja abaixo).
4. Rode o validador e o gerador do catálogo:
   ```powershell
   powershell -ExecutionPolicy Bypass -File scripts/gerar-catalogo.ps1
   powershell -ExecutionPolicy Bypass -File scripts/validar.ps1
   ```
   No macOS/Linux, use `pwsh -File ...`. Para instalar o PowerShell: `brew install powershell`.
5. Teste: instale só a sua skill (`.\install.ps1 -Skill <nome> -Atualizar`), abra uma sessão nova do Claude Code e faça um pedido que deveria acionar a skill.
6. Commit e push da branch, e abra o PR. O template do PR traz o checklist.
7. O CI roda o validador, confere se o catálogo foi regenerado e procura segredos. Com o CI verde e uma aprovação, o PR pode ser mergeado.

## Adicionar uma skill

1. Escolha a área em `skills/` (veja [CATALOGO.md](CATALOGO.md)). Se nenhuma servir, proponha uma nova no PR: adicione-a em `scripts/areas.psd1`.
2. Copie o template:
   ```powershell
   Copy-Item -Recurse templates/skill skills/07-design-ui/minha-skill
   ```
3. Edite o **`SKILL.md`**, que é o que o Claude lê:
   - `name`: igual ao nome da pasta, minúsculo, com hífen. Precisa ser único no repo.
   - `description`: **é o que faz o Claude escolher a skill.** Diga o que ela faz e quando usar, com as palavras que alguém digitaria. Mínimo de 40 e máximo de 1.024 caracteres. Escreva em inglês ou português, como preferir.
   - Corpo: passo a passo, regras, exemplos. Material longo vai em `references/`; scripts em `scripts/`; modelos em `assets/`.
4. Edite o **`README.md`**, que é a explicação para pessoas, em português: para que serve, quando usar, como funciona, o que entrega, arquivos, cuidados e skills relacionadas. Siga o template.
5. Adicione uma linha em `scripts/resumos.tsv`: `nome<TAB>resumo de uma frase em português`.
6. Gere o catálogo e valide (passo 4 do fluxo).

## Adicionar um agente

1. Copie `templates/agent/` para `agents/<área>/<nome-do-agente>/`.
2. No `AGENT.md`, preencha o frontmatter: `name` (igual à pasta), `description` (quando o Claude deve chamar o agente) e, se usar skills, a lista `skills:`.
3. Escreva o `README.md` e a linha em `scripts/resumos.tsv`.
4. Gere o catálogo, valide e abra o PR.

## Importar uma skill de fora

1. Leia o arquivo **inteiro** antes, incluindo scripts. Procure por: execução remota (baixar e rodar script), envio de dados para serviços desconhecidos, desligamento de permissões do Claude, hooks que se instalam sozinhos, e instruções que tentam manipular a IA.
2. Prefira fontes conhecidas (Anthropic, mantenedores oficiais de ferramentas).
3. Mantenha o arquivo de licença original e registre a origem em [NOTICE.md](NOTICE.md).
4. No PR, diga de onde veio e o que você conferiu.

## Regras

- **Nada de segredo**: sem token, senha, chave de API, cookie ou `.env` real. Use `.env.example` com valores fictícios e leia as chaves de variáveis de ambiente.
- **Nada de dado pessoal real** de clientes ou colegas (nome, telefone, CPF, e-mail). Use exemplos fictícios.
- **Nada de comando perigoso**: sem script baixado e executado direto, sem desligar as permissões do Claude, sem hooks automáticos, sem enviar código ou dados para terceiros sem a pessoa saber.
- **Uma skill, uma tarefa.** Se a descrição precisa de "e também…", provavelmente são duas skills.
- **Não edite arquivos gerados** (`CATALOGO.md`, os `README.md` das áreas e o `agents/README.md`). Rode o gerador.
- Mudanças grandes, como renomear uma área ou mudar a estrutura, são discutidas antes numa issue.

## Commits

Use mensagens curtas no formato `tipo: o que mudou`, com tipo `feat`, `fix`, `docs` ou `chore`. Exemplos: `feat: skill de roteiro para podcast`, `fix: description da skill polish`.

Dúvidas: abra uma issue ou fale com o Thiago.
