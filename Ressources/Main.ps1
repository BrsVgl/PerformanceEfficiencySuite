#Requires -RunAsAdministrator
Clear-Host

# declare CSV header
$strCsvHeader = "DurationMilliseconds;PackagePower`n"

# get path of "Ressources" folder
$strPesPath = $MyInvocation.MyCommand.Path
$strPesPath = $strPesPath.Replace($MyInvocation.MyCommand.Name, '') 

# get settings
$strSettingsPath = $strPesPath.Replace('Ressources\', '')
$strSettingsPath += 'Settings.txt' 

Get-Content  $strSettingsPath | foreach-object -begin {$htSettings=@{}} -process {
	$k = [regex]::split($_,'='); 
		if(($k[0].CompareTo("") -ne 0) -and ($k[0].StartsWith("[") -ne $True)) { 
			$htSettings.Add($k[0], $k[1]) 
		} 
	}

# declare function Get-PackagePower
function Get-CpuPackagePower {
	[CmdletBinding()]
	param (
		[Parameter(Mandatory)]
		$prcProcessToMonitor,
		$strHeader
	)
	$strResult = $strHeader
	$dtInitial = Get-Date
	While (!$prcProcessToMonitor.HasExited) {
		$varHW.Update()
		ForEach ($varSensor in $varHW.Sensors) {
			If (!(($varSensor.SensorType -eq 'Power') -and ($varSensor.Name -eq 'CPU Package'))) {continue}             
			$PackagePower = $varSensor.Value
		}
		$tsDuration = New-TimeSpan -Start $dtInitial -End (Get-Date)
		$decDurationMilliSeconds = $tsDuration.TotalMilliseconds
		$strResult += "$decDurationMilliSeconds;$PackagePower`n"		
		Start-Sleep -Milliseconds 10
	}
	$strResult = $strResult.Substring(0, $strResult.Length - 1)
	# return value
	$strResult
}

# set CinemaBenchR23 Path
$strCb23Path = $htSettings['Cb23Path']
$strCb23Executable = $strCb23Path + '\Cinebench.exe'

# set LogCsv Path
$strLogCsvPath = $strPesPath.Replace('Ressources\', '') + 'LogCsv\'

# unblock and add OpenHardwareMonitor.dll Library for PackagePower Measurements
$strOHWMLibPath = $strPesPath + 'OpenHardwareMonitorLib.dll'
Unblock-File -LiteralPath $strOHWMLibPath
Add-Type -LiteralPath $strOHWMLibPath

# create Computer object for monitoring
$cComp = New-Object -TypeName OpenHardwareMonitor.Hardware.Computer 
$cComp.Open()
# there are more components available; we just need "CPU"
$cComp.CPUEnabled = $true
$varHW = $cComp.Hardware

# start CB R23 single-thread mode and monitor its process
Write-Output "[$(Get-Date -format 'u')] Starting CB23 Single-Thread test..."
try {
	Start-Process -FilePath $strCb23Executable -ArgumentList "g_CinebenchCpu1Test=true g_CinebenchMinimumTestDuration=1"
}

catch {
	Write-Output '--------------------------------------------------------------------------------------------------------------'
	Write-Output '| ERROR: Cinebench R23 could not be started...'
	Write-Output '| HINT:  Cinebench R23 path in Settings.txt:' 
	Write-Output "|        $strCb23Path"
	Write-Output '|        Are you sure this is correct?'
	Write-Output '--------------------------------------------------------------------------------------------------------------'

	# dispose Object
	$cComp.Close()
	Start-Sleep -Seconds 30
	break
}
$prcCinebench = Get-Process Cinebench
$prcCinebench.PriorityClass = "AboveNormal"

# start measurement
$dtRunStart = Get-Date
$strResult = Get-CpuPackagePower -prcProcessToMonitor $prcCinebench -strHeader $strCsvHeader
$tsRunDuration = New-TimeSpan -Start $dtRunStart -End (Get-Date)
$decRunDurationSeconds = $tsRunDuration.TotalMilliseconds / 1000
Write-Output "[$(Get-Date -format 'u')] CB23 ST duration: $decRunDurationSeconds s"

# dump data to CSV
$strCb23StCsv = $strLogCsvPath + 'Cb23St.csv'
Write-Output $strResult | Out-File -Filepath $strCb23StCsv

# Cooldown
Write-Output "[$(Get-Date -format 'u')] 10 seconds cooldown remaining until Multi-Thread test..."
Start-Sleep -Seconds 10

# the same as above - just for multi-threaded run
Write-Output "[$(Get-Date -format 'u')] Starting CB23 Multi-Thread test..."
Start-Process -FilePath $strCb23Executable -ArgumentList "g_CinebenchCpuXTest=true g_CinebenchMinimumTestDuration=1"
$prcCinebench = Get-Process Cinebench
$prcCinebench.PriorityClass = "AboveNormal"

$dtRunStart = Get-Date
$strResult = Get-CpuPackagePower -prcProcessToMonitor $prcCinebench -strHeader $strCsvHeader
$tsRunDuration = New-TimeSpan -Start $dtRunStart -End (Get-Date)
$decRunDurationSeconds = $tsRunDuration.TotalMilliseconds / 1000
Write-Output "[$(Get-Date -format 'u')] CB23 Multi-Thread duration: $decRunDurationSeconds s"
$strCb23MtCsv = $strLogCsvPath + 'Cb23Mt.csv'
Write-Output $strResult | Out-File -Filepath $strCb23MtCsv

$cComp.Close()
"[$(Get-Date -format 'u')] Finished... Closing window in 10 seconds"
Start-Sleep -Seconds 10


## DEBUG Begin ########################################################################################################
# "strSettingsPath: $strSettingsPath"
# "htSettings:" 
# $htSettings
# "strCb23Path: $strCb23Path"
# Start-Sleep -Seconds 1000
# break
## DEBUG End ##########################################################################################################
