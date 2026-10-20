# gitlab-ci-patterns

> Modelos e boas práticas para pipelines de GitLab CI/CD (testar, construir e publicar código automaticamente) — para desenvolvedores e engenheiros que mantêm projetos no GitLab.

| | |
|---|---|
| **Área** | Dados e engenharia |
| **Como chamar** | `/gitlab-ci-patterns` — ou peça em linguagem natural (ver exemplos) |
| **Idioma da skill** | Inglês |
| **Origem** | Importada de github.com/kursku/skills (auditada em 10/2026) |
| **Requer** | Nada além do Claude para escrever o arquivo; para rodar, um projeto no GitLab com runners. Segredos ficam nas CI/CD Variables do GitLab, nunca no repositório |

## Para que serve

O GitLab CI lê o arquivo `.gitlab-ci.yml` do projeto e executa etapas automáticas a cada mudança: testes, build, imagem Docker, publicação em homologação e produção. A skill traz exemplos prontos de estrutura em estágios, build e envio de imagem Docker, deploy em vários ambientes, pipeline de Terraform, varredura de segurança, cache e pipelines "filhos" dinâmicos.

## Quando usar

- Um projeto novo precisa de pipeline de testes e deploy.
- O pipeline está lento e você quer usar cache e artefatos melhor.
- Você quer adicionar varredura de segurança ou aprovação manual antes de produção.

**Exemplos de pedido:**

- "Cria um `.gitlab-ci.yml` com testes, build Docker e deploy em staging e produção com aprovação manual."
- "Por que este pipeline demora 20 minutos? Sugere cache."
- "Adiciona varredura de segurança (SAST e dependências) ao nosso pipeline."

## Como funciona

1. O Claude esclarece objetivo, restrições e o que o projeto precisa.
2. Monta a estrutura de estágios (ex.: build, test, deploy).
3. Adiciona os blocos necessários: imagem Docker, ambientes, Terraform, segurança, cache, pipelines filhos.
4. Aplica as boas práticas: versões fixas de imagem, artefatos, portão manual para produção, pipelines de merge request, segredos em variáveis.
5. Indica como verificar se o pipeline funcionou.

## O que você recebe

- Arquivo `.gitlab-ci.yml` (ou trechos) pronto para adaptar.
- Explicação de cada estágio e lista de boas práticas.

## Arquivos da skill

| Arquivo | O que tem |
|---|---|
| `SKILL.md` | Exemplos de pipeline por tema e boas práticas |

## Cuidados

- A skill é marcada como de risco crítico: pipelines publicam código em produção. Revise com o time responsável antes de ativar.
- Alguns exemplos não seguem as próprias boas práticas e não devem ser copiados como estão: o deploy em Kubernetes desliga a verificação de certificado (`--insecure-skip-tls-verify=true`), o login no Docker passa a senha na linha de comando (prefira `--password-stdin`) e há imagens com a tag `latest`.
- O `SKILL.md` cita arquivos (`resources/implementation-playbook.md`, `assets/gitlab-ci.yml.template`, `references/pipeline-stages.md`) e skills relacionadas que não existem neste repositório.
- Nunca coloque tokens ou senhas no `.gitlab-ci.yml`; use variáveis protegidas e mascaradas.

## Relacionadas

- [`airflow-dag-patterns`](../airflow-dag-patterns/README.md) — testar e publicar DAGs pelo pipeline
- [`dbt-transformation-patterns`](../dbt-transformation-patterns/README.md) — rodar testes do dbt no CI
- [`data-quality-frameworks`](../data-quality-frameworks/README.md) — validações de dados automatizadas no CI
