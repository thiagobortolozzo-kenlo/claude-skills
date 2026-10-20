# Gera CATALOGO.md, o README de cada área (skills e agentes) e agents/README.md.
# Uso (na raiz do repo):  pwsh -File scripts/gerar-catalogo.ps1   (ou powershell -ExecutionPolicy Bypass -File ...)
# Não edite os arquivos gerados à mão: altere scripts/areas.psd1, scripts/resumos.tsv ou o SKILL.md e rode de novo.
$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
$utf8 = New-Object System.Text.UTF8Encoding $false
$areas = Import-PowerShellDataFile (Join-Path $PSScriptRoot 'areas.psd1')

$resumos = @{}
Import-Csv (Join-Path $PSScriptRoot 'resumos.tsv') -Delimiter "`t" -Encoding UTF8 | ForEach-Object { $resumos[$_.nome] = $_.resumo }

function Get-Frontmatter($path) {
  $lines = [IO.File]::ReadAllLines($path, [Text.Encoding]::UTF8)
  $fm = @{}; if ($lines.Count -eq 0 -or $lines[0].Trim() -ne '---') { return $fm }
  for ($i = 1; $i -lt $lines.Count -and $lines[$i].Trim() -ne '---'; $i++) {
    if ($lines[$i] -match '^(name|description):\s*(.*)$') {
      $key = $matches[1]; $val = $matches[2].Trim()
      if ($val -in '', '>', '|', '>-', '|-') {
        $parts = @(); while ($i + 1 -lt $lines.Count -and $lines[$i + 1] -match '^\s+\S') { $i++; $parts += $lines[$i].Trim() }
        $val = $parts -join ' '
      }
      $fm[$key] = $val.Trim('"', "'")
    }
  }
  $fm
}

function Get-Requisitos($dir) {
  $req = @()
  $files = Get-ChildItem $dir -Recurse -File | Where-Object Name -ne 'README.md'
  if ($files | Where-Object Extension -eq '.py') { $req += 'Python' }
  if ($files | Where-Object { $_.Name -eq 'package.json' -or $_.Extension -in '.ts', '.mjs' }) { $req += 'Node' }
  $txt = ($files | Where-Object { $_.Extension -in '.md', '.py', '.example' } | ForEach-Object { [IO.File]::ReadAllText($_.FullName) }) -join "`n"
  if ($txt -match 'GEMINI_API_KEY|GOOGLE_API_KEY') { $req += 'chave Gemini' }
  if ($txt -match 'STABILITY_API_KEY') { $req += 'chave Stability' }
  if ($txt -match 'WHATSAPP_TOKEN') { $req += 'token WhatsApp' }
  if ($txt -match 'Claude in Chrome') { $req += 'Claude in Chrome' }
  if ($txt -match '\bffmpeg\b') { $req += 'ffmpeg' }
  if ($req.Count -eq 0) { '—' } else { ($req | Select-Object -Unique) -join ', ' }
}

function Resumo($nome, $fm) {
  $r = $resumos[$nome]
  if (-not $r) { $r = $fm.description; if ($r.Length -gt 220) { $r = $r.Substring(0, 217) + '...' } }
  $r -replace '\|', '/'
}

function Sort-Ordinal($items, [string]$prop) {
  # Ordena pelo código de cada caractere (em hexadecimal), igual no Windows e no Linux (o CI)
  @($items) | Sort-Object { $v = if ($prop) { $_.$prop } else { $_ }; (([string]$v).ToCharArray() | ForEach-Object { '{0:X4}' -f [int]$_ }) -join '' }
}

function Write-Lines($path, $lines) { [IO.File]::WriteAllLines($path, [string[]]$lines, $utf8) }

$catalogo = @(); $indiceAgentes = @(); $totalSkills = 0; $totalAgentes = 0
foreach ($area in (Sort-Ordinal @($areas.Keys))) {
  $titulo = $areas[$area].Titulo; $desc = $areas[$area].Descricao
  $skillDir = Join-Path $root "skills/$area"; $agentDir = Join-Path $root "agents/$area"

  $linhasSkills = @()
  if (Test-Path $skillDir) {
    foreach ($s in (Sort-Ordinal (Get-ChildItem $skillDir -Directory) Name)) {
      $md = Join-Path $s.FullName 'SKILL.md'; if (-not (Test-Path $md)) { Write-Warning "Sem SKILL.md: $area/$($s.Name)"; continue }
      $fm = Get-Frontmatter $md; $nome = if ($fm.name) { $fm.name } else { $s.Name }
      $linhasSkills += "| [**$($s.Name)**]($($s.Name)/README.md) | ``/$nome`` | $(Resumo $s.Name $fm) | $(Get-Requisitos $s.FullName) |"
    }
  }
  $linhasAgentes = @()
  if (Test-Path $agentDir) {
    foreach ($a in (Sort-Ordinal (Get-ChildItem $agentDir -Directory) Name)) {
      $md = Join-Path $a.FullName 'AGENT.md'; if (-not (Test-Path $md)) { Write-Warning "Sem AGENT.md: agents/$area/$($a.Name)"; continue }
      $fm = Get-Frontmatter $md
      $linhasAgentes += "| [**$($a.Name)**]($($a.Name)/README.md) | $(Resumo $a.Name $fm) |"
    }
  }
  $totalSkills += $linhasSkills.Count; $totalAgentes += $linhasAgentes.Count
  $tabS = @('| Skill | Como chamar | Para que serve | Requer |', '|---|---|---|---|') + $linhasSkills
  $tabA = @('| Agente | Para que serve |', '|---|---|') + $linhasAgentes

  if ($linhasSkills.Count) {
    $readme = @("# $titulo", '', $desc, '', "**$($linhasSkills.Count) skills**" + $(if ($linhasAgentes.Count) { " e **$($linhasAgentes.Count) agentes** ([ver agentes](../../agents/$area/README.md))" } else { '' }) + '.', '',
      'Clique no nome para ver a explicação completa de como a skill funciona.', '') + $tabS + @('', 'Instalar só esta área: `.\install.ps1 -Area ' + $area + '` (Windows) ou `./install.sh ' + $area + '` (macOS/Linux).', '', '[← Catálogo completo](../../CATALOGO.md)')
    Write-Lines (Join-Path $skillDir 'README.md') $readme
  }
  if ($linhasAgentes.Count) {
    $readme = @("# Agentes · $titulo", '', 'Subagentes que o Claude Code chama para tarefas maiores. O instalador copia cada `AGENT.md` para `~/.claude/agents/<nome>.md`.', '') + $tabA + @('', "[Skills desta área](../../skills/$area/README.md) · [← Catálogo completo](../../CATALOGO.md)")
    Write-Lines (Join-Path $agentDir 'README.md') $readme
    $indiceAgentes += @("## [$titulo]($area/README.md)", '') + ($tabA -replace '\]\(([a-z0-9-]+)/README\.md\)', "]($area/`$1/README.md)") + @('')
  }

  $catalogo += @("## $titulo", '', $desc, '')
  if ($linhasSkills.Count) { $catalogo += @("### Skills · [ver área](skills/$area/README.md)", '') + ($tabS -replace '\]\(([a-z0-9-]+)/README\.md\)', "](skills/$area/`$1/README.md)") + @('') }
  if ($linhasAgentes.Count) { $catalogo += @("### Agentes · [ver área](agents/$area/README.md)", '') + ($tabA -replace '\]\(([a-z0-9-]+)/README\.md\)', "](agents/$area/`$1/README.md)") + @('') }
}

$topo = @('# Catálogo', '', '> Gerado por `scripts/gerar-catalogo.ps1`. Não edite à mão.', '', "**$totalSkills skills** e **$totalAgentes agentes** em $($areas.Count) áreas. Clique no nome de qualquer item para ver como ele funciona.", '', '## Áreas', '')
$topo += (Sort-Ordinal @($areas.Keys)) | ForEach-Object { "- [$($areas[$_].Titulo)](#$((($areas[$_].Titulo).ToLower() -replace '[^\p{L}\p{N} -]', '' -replace ' ', '-')))" }
Write-Lines (Join-Path $root 'CATALOGO.md') ($topo + @('') + $catalogo)
Write-Lines (Join-Path $root 'agents/README.md') (@('# Agentes', '', 'Subagentes do Claude Code, separados pela mesma área das skills. Cada agente fica em `agents/<área>/<nome>/` com o `AGENT.md` (o que o Claude lê) e um `README.md` (a explicação para pessoas).', '') + $indiceAgentes + @('[← Catálogo completo](../CATALOGO.md)'))
Write-Host "OK: $totalSkills skills, $totalAgentes agentes."
