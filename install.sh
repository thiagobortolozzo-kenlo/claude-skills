#!/usr/bin/env bash
# Instala skills e agentes deste repo no seu Claude Code (macOS/Linux).
#
# Exemplos:
#   ./install.sh                               # tudo
#   ./install.sh 07-design-ui 09-video-motion  # só essas áreas
#   ATUALIZAR=1 ./install.sh                   # sobrescreve o que já existe
#   SEM_AGENTES=1 ./install.sh                 # só skills
set -euo pipefail

repo="$(cd "$(dirname "$0")" && pwd)"
dst_skills="$HOME/.claude/skills"
dst_agents="$HOME/.claude/agents"
mkdir -p "$dst_skills" "$dst_agents"

if [ "$#" -gt 0 ]; then areas=("$@"); else areas=(); for d in "$repo"/skills/*/; do areas+=("$(basename "$d")"); done; fi

novas=0; puladas=0
for area in "${areas[@]}"; do
  [ -d "$repo/skills/$area" ] || continue
  for dir in "$repo/skills/$area"/*/; do
    [ -f "$dir/SKILL.md" ] || continue
    nome="$(basename "$dir")"
    alvo="$dst_skills/$nome"
    if [ -e "$alvo" ] && [ -z "${ATUALIZAR:-}" ]; then puladas=$((puladas + 1)); continue; fi
    rm -rf "$alvo"
    cp -R "$dir" "$alvo"
    novas=$((novas + 1))
  done
done
echo "Skills: $novas instaladas, $puladas já existiam (use ATUALIZAR=1 para sobrescrever)."

if [ -z "${SEM_AGENTES:-}" ]; then
  n=0
  for area in "${areas[@]}"; do
    [ -d "$repo/agents/$area" ] || continue
    for dir in "$repo/agents/$area"/*/; do
      [ -f "$dir/AGENT.md" ] || continue
      alvo="$dst_agents/$(basename "$dir").md"
      if [ -e "$alvo" ] && [ -z "${ATUALIZAR:-}" ]; then continue; fi
      cp "$dir/AGENT.md" "$alvo"; n=$((n + 1))
    done
  done
  echo "Agentes: $n instalados."
fi
echo "Abra uma nova sessão do Claude Code para as skills aparecerem."
