# Instala skills e agentes deste repo no seu Claude Code (Windows).
#
# Exemplos:
#   .\install.ps1                                  # tudo
#   .\install.ps1 -Area 07-design-ui,09-video-motion
#   .\install.ps1 -Skill remotion,polish           # skills específicas
#   .\install.ps1 -SemAgentes                      # só skills
#   .\install.ps1 -Atualizar                       # sobrescreve o que já existe
#   .\install.ps1 -Listar                          # mostra o que seria instalado, sem copiar
param(
  [Alias('Categoria')][string[]]$Area,
  [string[]]$Skill,
  [switch]$SemAgentes,
  [switch]$Atualizar,
  [switch]$Listar
)
$ErrorActionPreference = 'Stop'
# Aceita "a,b" também quando chamado via powershell -File
$Area = @($Area | ForEach-Object { $_ -split ',' } | Where-Object { $_ })
$Skill = @($Skill | ForEach-Object { $_ -split ',' } | Where-Object { $_ })

$repo = $PSScriptRoot
$dstSkills = Join-Path $HOME '.claude\skills'
$dstAgents = Join-Path $HOME '.claude\agents'

$skills = Get-ChildItem (Join-Path $repo 'skills') -Directory | ForEach-Object { Get-ChildItem $_.FullName -Directory } | Where-Object { Test-Path (Join-Path $_.FullName 'SKILL.md') }
if ($Area.Count) { $skills = $skills | Where-Object { $_.Parent.Name -in $Area } }
if ($Skill.Count) { $skills = $skills | Where-Object { $_.Name -in $Skill } }

$agentes = @()
if (-not $SemAgentes -and -not $Skill.Count) {
  $agentes = Get-ChildItem (Join-Path $repo 'agents') -Directory | ForEach-Object { Get-ChildItem $_.FullName -Directory } | Where-Object { Test-Path (Join-Path $_.FullName 'AGENT.md') }
  if ($Area.Count) { $agentes = $agentes | Where-Object { $_.Parent.Name -in $Area } }
}

if ($Listar) {
  Write-Host "Skills ($(@($skills).Count)):"; $skills | ForEach-Object { Write-Host "  $($_.Parent.Name)/$($_.Name)" }
  Write-Host "Agentes ($(@($agentes).Count)):"; $agentes | ForEach-Object { Write-Host "  $($_.Parent.Name)/$($_.Name)" }
  return
}

New-Item -ItemType Directory -Force $dstSkills, $dstAgents | Out-Null
$novas = 0; $puladas = 0
foreach ($p in $skills) {
  $alvo = Join-Path $dstSkills $p.Name
  if ((Test-Path $alvo) -and -not $Atualizar) { $puladas++; continue }
  if (Test-Path $alvo) { Remove-Item $alvo -Recurse -Force }
  Copy-Item $p.FullName $alvo -Recurse
  $novas++
}
Write-Host "Skills: $novas instaladas, $puladas já existiam (use -Atualizar para sobrescrever)."

if ($agentes.Count) {
  $n = 0; $pa = 0
  foreach ($a in $agentes) {
    $alvo = Join-Path $dstAgents "$($a.Name).md"
    if ((Test-Path $alvo) -and -not $Atualizar) { $pa++; continue }
    Copy-Item (Join-Path $a.FullName 'AGENT.md') $alvo -Force; $n++
  }
  Write-Host "Agentes: $n instalados, $pa já existiam."
}
Write-Host 'Abra uma nova sessão do Claude Code para as skills aparecerem.'
