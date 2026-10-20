# Valida a estrutura e a segurança do repo. Roda no CI a cada push/PR e pode rodar local:
#   pwsh -File scripts/validar.ps1      (ou powershell -ExecutionPolicy Bypass -File scripts/validar.ps1)
# Sai com código 1 se encontrar erro. Avisos não bloqueiam.
$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
$erros = [System.Collections.Generic.List[string]]::new()
$avisos = [System.Collections.Generic.List[string]]::new()
function Rel($p) { $p.Substring($root.Length + 1).Replace('\', '/') }

$areas = Import-PowerShellDataFile (Join-Path $PSScriptRoot 'areas.psd1')
$resumos = @{}; Import-Csv (Join-Path $PSScriptRoot 'resumos.tsv') -Delimiter "`t" -Encoding UTF8 | ForEach-Object { $resumos[$_.nome] = $true }
# Skills cujo name difere do nome da pasta por herança do projeto original
$nomeDiferentePermitido = @{ 'remotion' = 'remotion-best-practices' }

function Get-Fm($path) {
  $lines = [IO.File]::ReadAllLines($path, [Text.Encoding]::UTF8); $fm = @{}
  if ($lines.Count -eq 0 -or $lines[0].Trim() -ne '---') { return $null }
  for ($i = 1; $i -lt $lines.Count; $i++) {
    if ($lines[$i].Trim() -eq '---') { return $fm }
    if ($lines[$i] -match '^(name|description):\s*(.*)$') {
      $v = $matches[2].Trim(); if ($v -in '', '>', '|', '>-', '|-') { $p = @(); while ($i + 1 -lt $lines.Count -and $lines[$i + 1] -match '^\s+\S') { $i++; $p += $lines[$i].Trim() }; $v = $p -join ' ' }
      $fm[$matches[1]] = $v.Trim('"', "'")
    }
  }
  $null
}

# 1. Estrutura de skills e agentes
$nomes = @{}
foreach ($tipo in @(@{ Pasta = 'skills'; Arquivo = 'SKILL.md' }, @{ Pasta = 'agents'; Arquivo = 'AGENT.md' })) {
  $base = Join-Path $root $tipo.Pasta
  foreach ($areaDir in Get-ChildItem $base -Directory) {
    if (-not $areas.Contains($areaDir.Name)) { $erros.Add("$(Rel $areaDir.FullName): área não cadastrada em scripts/areas.psd1"); continue }
    foreach ($d in Get-ChildItem $areaDir.FullName -Directory) {
      $md = Join-Path $d.FullName $tipo.Arquivo
      if (-not (Test-Path $md)) { $erros.Add("$(Rel $d.FullName): falta $($tipo.Arquivo)"); continue }
      if (-not (Test-Path (Join-Path $d.FullName 'README.md'))) { $erros.Add("$(Rel $d.FullName): falta README.md (explicação para pessoas)") }
      if ($d.Name -notmatch '^[a-z0-9]+(-[a-z0-9]+)*$') { $erros.Add("$(Rel $d.FullName): nome da pasta deve ser minúsculo-com-hífen") }
      $fm = Get-Fm $md
      if ($null -eq $fm) { $erros.Add("$(Rel $md): frontmatter ausente ou sem fechamento '---'"); continue }
      if (-not $fm.name) { $erros.Add("$(Rel $md): falta 'name' no frontmatter") }
      elseif ($fm.name -ne $d.Name -and $nomeDiferentePermitido[$d.Name] -ne $fm.name) { $erros.Add("$(Rel $md): name '$($fm.name)' diferente da pasta '$($d.Name)'") }
      if (-not $fm.description) { $erros.Add("$(Rel $md): falta 'description' no frontmatter") }
      elseif ($fm.description.Length -lt 40) { $avisos.Add("$(Rel $md): description muito curta, o Claude pode não acionar") }
      elseif ($fm.description.Length -gt 1024) { $avisos.Add("$(Rel $md): description com mais de 1024 caracteres") }
      $chave = "$($tipo.Pasta):$($d.Name)"
      if ($nomes.ContainsKey($chave)) { $erros.Add("$(Rel $d.FullName): nome duplicado (já existe em $($nomes[$chave]))") } else { $nomes[$chave] = Rel $d.FullName }
      if (-not $resumos.ContainsKey($d.Name)) { $erros.Add("$(Rel $d.FullName): falta linha em scripts/resumos.tsv") }
    }
  }
}

# 2. Arquivos proibidos e tamanho
$todos = Get-ChildItem $root -Recurse -File -Force | Where-Object { $_.FullName -notmatch '[\\/]\.git[\\/]' }
foreach ($f in $todos) {
  if ($f.Name -match '^\.env(\..+)?$' -and $f.Name -ne '.env.example') { $erros.Add("$(Rel $f.FullName): arquivo .env real não pode ir para o repo") }
  if ($f.Extension -in '.pem', '.key', '.p12', '.pfx', '.exe', '.dll', '.pyc', '.so') { $erros.Add("$(Rel $f.FullName): tipo de arquivo proibido ($($f.Extension))") }
  if ($f.Length -gt 5MB) { $erros.Add("$(Rel $f.FullName): arquivo maior que 5 MB") }
}

# 3. Segredos e padrões perigosos (só em arquivos de texto)
$texto = $todos | Where-Object { $_.Extension -in '.md', '.py', '.js', '.ts', '.mjs', '.sh', '.ps1', '.psd1', '.json', '.yml', '.yaml', '.txt', '.tsv', '.csv', '.toml', '.example', '' -and $_.Length -lt 2MB }
$segredos = @{
  'chave AWS'             = 'AKIA[0-9A-Z]{16}'
  'token GitHub'          = 'gh[pousr]_[A-Za-z0-9]{36,}'
  'token GitLab'          = 'glpat-[A-Za-z0-9_-]{20,}'
  'chave OpenAI/Anthropic' = '\bsk-(ant-api\d+-|proj-)?[A-Za-z0-9_]{32,}'
  'token Slack'           = 'xox[abpr]-[A-Za-z0-9-]{10,}'
  'chave Google'          = 'AIza[0-9A-Za-z_-]{35}'
  'chave privada'         = '-----BEGIN [A-Z ]*PRIVATE KEY-----'
}
$perigosos = @{
  'pipe para shell'          = '(curl|wget)\s[^|\r\n]*\|\s*(sudo\s+)?(ba|z)?sh\b'
  'iex remoto'               = '(irm|iwr|Invoke-WebRequest|Invoke-RestMethod)\s[^|\r\n]*\|\s*iex'
  'pular permissões'         = '--dangerously-skip-permissions'
  'manipulação de instrução' = '(?i)ignore (all )?(previous|prior) instructions|do not tell the user'
}
foreach ($f in $texto) {
  $c = [IO.File]::ReadAllText($f.FullName)
  foreach ($k in $segredos.Keys) { if ($c -match $segredos[$k]) { $erros.Add("$(Rel $f.FullName): possível $k") } }
  # Padrões perigosos só valem para o que o Claude executa/lê como instrução: skills/ e agents/
  if ((Rel $f.FullName) -notmatch '^(skills|agents)/') { continue }
  $linhas = $c -split "`n" | Where-Object { $_ -notmatch '(?i)not instructions|never follow|prompt.injection|nunca siga|não instruç' }
  $c2 = $linhas -join "`n"
  foreach ($k in $perigosos.Keys) { if ($c2 -match $perigosos[$k]) { $erros.Add("$(Rel $f.FullName): padrão perigoso ($k)") } }
}

$avisos | ForEach-Object { Write-Host "AVISO  $_" -ForegroundColor Yellow }
$erros | ForEach-Object { Write-Host "ERRO   $_" -ForegroundColor Red }
Write-Host ''
Write-Host "Skills: $(@($nomes.Keys | Where-Object { $_ -like 'skills:*' }).Count) · Agentes: $(@($nomes.Keys | Where-Object { $_ -like 'agents:*' }).Count) · Erros: $($erros.Count) · Avisos: $($avisos.Count)"
if ($erros.Count) { exit 1 }
