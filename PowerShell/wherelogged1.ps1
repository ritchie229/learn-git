$Username = ‘rishat.mukhtarov’
$Pdce = (Get-AdDomain).PDCEmulator
$GweParams = @{
‘Computername’ = $Pdce
‘LogName’ = ‘Security’
‘FilterXPath’ = "*[System[EventID=4740] and EventData[Data[@Name='TargetUserName']='$Username']]"
}
$Events = Get-WinEvent @GweParams
$Events | foreach {$_.Properties[1].value + ' ' + $_.TimeCreated}

