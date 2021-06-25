#Requires -RunAsAdministrator
Clear-Host

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

# set CinemaBenchR23 Path
$strCb23Path = $htSettings['Cb23Path']
$strCb23Path += '\Cinebench.exe'

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

Write-Output "[$(Get-Date -format 'u')] Starting CB23 Single-Thread test..."

# start CB R23 single-thread mode and monitor its process
Start-Process -FilePath $strCb23Path -ArgumentList "g_CinebenchCpu1Test=true g_CinebenchMinimumTestDuration=1"
$prcCinebench = Get-Process Cinebench
$prcCinebench.PriorityClass = "AboveNormal"

# start measurement
$dtInitial = Get-Date
$strResult = "DurationMilliseconds;PackagePower`n"

While (!$prcCinebench.HasExited) {
	ForEach ($varHW in $cComp.Hardware) {
		If (!$varHW.HardwareType -eq "CPU"){continue}
		# needed to keep Processor load of the measurement at bay
		Start-Sleep -Milliseconds 10
		$varHW.Update()
		ForEach ($varSensor in $varHW.Sensors) {
			If (!(($varSensor.SensorType -eq 'Power') -and ($varSensor.Name -eq 'CPU Package'))) {continue}             
			$PackagePower = $varSensor.Value
		}
		$tsDuration = New-TimeSpan -Start $dtInitial -End (Get-Date)
		$decDurationMilliSeconds = $tsDuration.TotalMilliseconds
		$strResult += "$decDurationMilliSeconds;$PackagePower`n"		
	}
}
Write-Output "[$(Get-Date -format 'u')] CB23 ST duration: $decDurationMilliSeconds ms"
# just cut the last line-break for cleanliness
$strResult = $strResult.Substring(0, $strResult.Length - 1)
$strCb23StCsv = $strLogCsvPath + 'Cb23St.csv'
# dump data to CSV
Write-Output $strResult | Out-File -Filepath $strCb23StCsv

# Cooldown
# Write-Output ""
# Write-Output "[$(Get-Date -format 'u')] 180 seconds cooldown remaining until Multi-Thread test..."
# Start-Sleep -Seconds 60
# Write-Output "[$(Get-Date -format 'u')] 120 seconds cooldown remaining until Multi-Thread test..."
# Start-Sleep -Seconds 60
# Write-Output "[$(Get-Date -format 'u')] 60 seconds cooldown remaining until Multi-Thread test..."
# Start-Sleep -Seconds 50
Write-Output "[$(Get-Date -format 'u')] 10 seconds cooldown remaining until Multi-Thread test..."
Start-Sleep -Seconds 10
Write-Output ""

# the same as above - just for multi-threaded run
Write-Output "[$(Get-Date -format 'u')] Starting CB23 Multi-Thread test..."

Start-Process -FilePath $strCb23Path -ArgumentList "g_CinebenchCpuXTest=true g_CinebenchMinimumTestDuration=1"
$prcCinebench = Get-Process Cinebench
$prcCinebench.PriorityClass = "AboveNormal"

$dtInitial = Get-Date
$strResult = "DurationMilliseconds;PackagePower`n"

While (!$prcCinebench.HasExited) {
	# ForEach ($varHW in $cComp.Hardware) {
		# "varHW" #DEBUG
		# '-----' #DEBUG
		# $varHW #DEBUG
		# If (!$varHW.HardwareType -eq "CPU"){continue}
		Start-Sleep -Milliseconds 5
		$varHW.Update()
		ForEach ($varSensor in $varHW.Sensors) {
			# "varSensor" #DEBUG
			# '-----' #DEBUG
			# $varSensor #DEBUG
			If (!(($varSensor.SensorType -eq 'Power') -and ($varSensor.Name -eq 'CPU Package'))) {continue}             
			$PackagePower = $varSensor.Value
		}
		$tsDuration = New-TimeSpan -Start $dtInitial -End (Get-Date)
		$decDurationMilliSeconds = $tsDuration.TotalMilliseconds
		$strResult += "$decDurationMilliSeconds;$PackagePower`n"		
	}
# }

## DEBUG Begin ########################################################################################################
# "strSettingsPath: $strSettingsPath"
# "htSettings:" 
# $htSettings
# "strCb23Path: $strCb23Path"
# Start-Sleep -Seconds 1000
# break
## DEBUG End ##########################################################################################################

Write-Output "[$(Get-Date -format 'u')] CB23 Multi-Thread duration: $decDurationMilliSeconds ms"
$strResult = $strResult.Substring(0, $strResult.Length - 1)
$strCb23MtCsv = $strLogCsvPath + 'Cb23Mt.csv'
Write-Output $strResult | Out-File -Filepath $strCb23MtCsv

$cComp.Close()
"[$(Get-Date -format 'u')] Finished... Closing window in 10 seconds"
Start-Sleep -Seconds 10