## O que muda

<!-- Uma ou duas frases. Ex.: "Adiciona a skill podcast-script na área 02-copy-conteudo." -->

## Tipo

- [ ] Skill nova
- [ ] Agente novo
- [ ] Melhoria em skill ou agente existente
- [ ] Skill importada de fora (origem: )
- [ ] Documentação
- [ ] Scripts, instalador ou CI

## Checklist

- [ ] Está na pasta da área certa (`skills/<área>/<nome>/` ou `agents/<área>/<nome>/`)
- [ ] `name` no frontmatter igual ao nome da pasta e único no repo
- [ ] `description` diz **o que faz** e **quando usar**
- [ ] `README.md` em português explicando o funcionamento (seguindo o template)
- [ ] Linha nova ou atualizada em `scripts/resumos.tsv`
- [ ] Rodei `scripts/gerar-catalogo.ps1` e `scripts/validar.ps1` sem erro
- [ ] Testei numa sessão nova do Claude Code
- [ ] **Sem segredos** (tokens, senhas, chaves, `.env`) e **sem dados pessoais reais**
- [ ] Se a skill executa código, publica ou envia algo, isso está explícito no README e pede aprovação antes de agir
- [ ] Se for importada: li todos os arquivos, mantive a licença e registrei no `NOTICE.md`

## Como testei

<!-- O pedido que fiz ao Claude e o que aconteceu. -->
