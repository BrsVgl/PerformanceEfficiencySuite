#Requires -RunAsAdministrator
Clear-Host

# current version
$strCurrentVersion = 'v0.8.0'
# set Minimum test duration for CB23 MT
$intMtMinDurationSeconds = 600
# set CoolDown duration between tests (1 per 10 seconds)
$intCoolDownDuration = 2 

#Ask for tests to be run
Write-Output '--------------------------------------------------------------------------------------------------------------'
Write-Output '| Which tests should be run?'
Write-Output '--------------------------------------------------------------------------------------------------------------'
Write-Output '| 1 | All tests' 
Write-Output '| 2 | Geekbench 5' 
Write-Output '| 3 | Cinebench R23 singlethreaded' 
Write-Output '| 4 | Cinebench R23 multithreaded' 
Write-Output '--------------------------------------------------------------------------------------------------------------'

$strTestChoice = Read-Host "Please enter the number or simply press <Enter> for all tests"
If ($strTestChoice -eq '') {
	$strTestChoice = '1'
}

# declare CSV header
$strCsvHeader = "RunCnt;DurationMilliseconds;PackagePower;Version`n"

# get path of "Ressources" folder
$strPesPath = $MyInvocation.MyCommand.Path
$strPesPath = $strPesPath.Replace($MyInvocation.MyCommand.Name, '') 

# get settings
$strSettingsPath = $strPesPath.Replace('Ressources\', '')
$strSettingsPath += 'Settings.txt' 

Get-Content  $strSettingsPath | foreach-object -begin {$htSettings=@{}}	-process {
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
		[Parameter(Mandatory)]
		$nRunCnt,
		[Parameter()]
		$decTimeOffsetMilliSeconds = 0
	)
	$strResult = ''
	$dtInitial = Get-Date
	While (!$prcProcessToMonitor.HasExited) {
		$varHW.Update()
		ForEach ($varSensor in $varHW.Sensors) {
			If (!(($varSensor.SensorType -eq 'Power') -and ($varSensor.Name -eq 'CPU Package'))) {continue}             
			$PackagePower = $varSensor.Value
		}
		$tsDuration = New-TimeSpan -Start $dtInitial -End (Get-Date)
		$decDurationMilliSeconds = $tsDuration.TotalMilliseconds + $decTimeOffsetMilliSeconds
		$strResult += "$nRunCnt;$decDurationMilliSeconds;$PackagePower;$strCurrentVersion`n"		
		Start-Sleep -Milliseconds 10
	}
	# return value
	$strResult
}

# set CinemaBenchR23 Path
$strCb23Path = $htSettings['Cb23Path']
$strCb23Executable = $strCb23Path + '\Cinebench.exe'

# set GB5 Path
$strGb5Path = $htSettings['Gb5Path']
$strGb5Executable = $strGb5Path + '\geekbench5.exe'

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

# start GB5 and monitor its process
If(($strTestChoice -eq '1') -or ($strTestChoice -eq '2')) {
	Write-Output "[$(Get-Date -format 'u')] Starting GeekBench5..."
	try {
		Start-Process -FilePath $strGb5Executable
	}

	catch {
		Write-Output '--------------------------------------------------------------------------------------------------------------'
		Write-Output '| ERROR: GeekBench 5 could not be started...'
		Write-Output '| HINT:  GeekBench 5 path in Settings.txt:' 
		Write-Output "|        $strGb5Path"
		Write-Output '|        Are you sure this is correct?'
		Write-Output '--------------------------------------------------------------------------------------------------------------'

		# dispose Object
		$cComp.Close()
		Start-Sleep -Seconds 30
		break
	}
	$prcGb5 = Get-Process geekbench5
	$prcGb5.PriorityClass = "AboveNormal"

	# start measurement
	$dtRunStart = Get-Date
	$strResult = $strCsvHeader
	$strResult += Get-CpuPackagePower -prcProcessToMonitor $prcGb5 -nRunCnt 1
	$tsRunDuration = New-TimeSpan -Start $dtRunStart -End (Get-Date)
	$decRunDurationSeconds = $tsRunDuration.TotalMilliseconds / 1000
	# cut the last line ending
	$strResult = $strResult.Substring(0, $strResult.Length - 1)
	Write-Output "[$(Get-Date -format 'u')] GeekBench 5 duration: $decRunDurationSeconds s"

}
else {
	$strResult = $strCsvHeader + "1;1000;1000;xxx`n"
}
# dump data to CSV
$strGb5Csv = $strLogCsvPath + 'GB5.csv'
Write-Output $strResult | Out-File -Filepath $strGb5Csv

# Cooldown
If($strTestChoice -eq '1') {
	for($i = 1; $i -le $intCoolDownDuration; $i++) {
		if(($i -eq 1) -or ($i -eq $intCoolDownDuration) -or (($intCoolDownDuration - $i + 1) % 3 -eq 0)) {
			$intRemainingCoolDown = 10 * ($intCoolDownDuration - $i + 1)
			Write-Output "[$(Get-Date -format 'u')] $intRemainingCoolDown seconds cooldown remaining until next test..."
		}
		Start-Sleep -Seconds 10
	}
}


# start CB R23 single-thread mode and monitor its process
If(($strTestChoice -eq '1') -or ($strTestChoice -eq '3')) {
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
	$strResult = $strCsvHeader
	$strResult += Get-CpuPackagePower -prcProcessToMonitor $prcCinebench -nRunCnt 1
	$tsRunDuration = New-TimeSpan -Start $dtRunStart -End (Get-Date)
	$decRunDurationSeconds = $tsRunDuration.TotalMilliseconds / 1000
	# cut the last line ending
	$strResult = $strResult.Substring(0, $strResult.Length - 1)
	Write-Output "[$(Get-Date -format 'u')] CB23 ST duration: $decRunDurationSeconds s"

}
else {
	$strResult = $strCsvHeader + "1;1000;1000;xxx`n"
}
# dump data to CSV
$strCb23StCsv = $strLogCsvPath + 'Cb23St.csv'
Write-Output $strResult | Out-File -Filepath $strCb23StCsv

# Cooldown
If($strTestChoice -eq '1') {
	for($i = 1; $i -le $intCoolDownDuration; $i++) {
		if(($i -eq 1) -or ($i -eq $intCoolDownDuration) -or (($intCoolDownDuration - $i + 1) % 3 -eq 0)) {
			$intRemainingCoolDown = 10 * ($intCoolDownDuration - $i + 1)
			Write-Output "[$(Get-Date -format 'u')] $intRemainingCoolDown seconds cooldown remaining until next test..."
		}
		Start-Sleep -Seconds 10
	}
}

# start CB R23 multi-thread mode and monitor its process
If(($strTestChoice -eq '1') -or ($strTestChoice -eq '4')) {
	Write-Output "[$(Get-Date -format 'u')] Starting CB23 Multi-Thread test..."
	$strResult = $strCsvHeader

	$dtRunStart = Get-Date
	$dtMinEnd = $dtRunStart.AddSeconds($intMtMinDurationSeconds)

	# while Minimum test duration for MT has not finished, keep measuring package power
	$nRunCnt = 0
	while((Get-Date) -lt $dtMinEnd) {
		$nRunCnt += 1
			Start-Process -FilePath $strCb23Executable -ArgumentList "g_CinebenchCpuXTest=true g_CinebenchMinimumTestDuration=1"
		$prcCinebench = Get-Process Cinebench
		$prcCinebench.PriorityClass = "AboveNormal"
		$tsRunDuration = New-TimeSpan -Start $dtRunStart -End (Get-Date)
		$TimeOffsetMilliSeconds = $tsRunDuration.TotalMilliseconds
		$strResult += Get-CpuPackagePower -prcProcessToMonitor $prcCinebench -nRunCnt $nRunCnt -decTimeOffsetMilliSeconds $TimeOffsetMilliSeconds
		Start-Sleep -Milliseconds 100
	}

	$tsRunDuration = New-TimeSpan -Start $dtRunStart -End (Get-Date)
	$decRunDurationSeconds = $tsRunDuration.TotalMilliseconds / 1000
	Write-Output "[$(Get-Date -format 'u')] CB23 Multi-Thread duration: $decRunDurationSeconds s Runs: $nRunCnt"
	# cut the last line ending
	$strResult = $strResult.Substring(0, $strResult.Length - 1)
}
else {
	$strResult = $strCsvHeader + "1;1000;1000;xxx`n"
}
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
