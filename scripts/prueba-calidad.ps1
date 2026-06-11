# Script de prueba con malas practicas adrede
# PSScriptAnalyzer deberia marcar: uso de aliases prohibidos
# Gitleaks deberia detectar: secreto expuesto en texto plano

# MAL: uso de alias 'dir' en lugar del cmdlet completo Get-ChildItem
dir C:\Windows\System32

# MAL: uso de alias 'echo' en lugar de Write-Output
echo "Iniciando proceso..."

# MAL: secreto hardcodeado expuesto en texto plano (Gitleaks lo deberia detectar)
$miSecret = "AIzaSyD-FakeToken123"
$apiKey = "ghp_FakeGitHubToken1234567890abcdef"

# MAL: variable sin tipo definido y nombre generico
$x = Get-Process

# MAL: uso de alias 'ls' en lugar de Get-ChildItem
ls -Recurse

echo "Proceso finalizado. Secret: $miSecret"
