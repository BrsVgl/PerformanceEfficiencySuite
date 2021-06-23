Clear-Host

# get absolute path
$strRunnerPath = Get-Location | Select-Object -ExpandProperty Path
$strRunnerPath += '\Ressources\Main.ps1'

# start Main.ps1 with request for admin rights
"Requesting Admin for $strRunnerPath..."
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { 
	Start-Process powershell.exe " -ExecutionPolicy Bypass -File `"$strRunnerPath`"" -Verb RunAs
}
