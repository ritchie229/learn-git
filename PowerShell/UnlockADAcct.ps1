#First line can be commented, it gets the list of all locked accts.
Search-ADAccount -UsersOnly -lockedout

#Here we enter the username (SamAccountName)
$a = Read-Host "Enter Username fo Lock status check"

# we would use this varian is we used Identoty option of Get-ADUser cmdlet
#$a = "*$a*"

# On my way to reach the most correct code version
#Get-ADUser -Filter {SamAccountName -Like $a} -Properties LockedOut,DisplayName | Select-Object SamAccountName,DisplayName,LockedOut
#Get-ADUser -Filter {SamAccountName -Like $a} -Properties LockedOut | Select-Object LockedOut -OutVariable LockedOut
#$LockedOut = $lockedout | % ToString

$LockedOut = ( Get-ADUser -Filter {SamAccountName -Like $a} -Properties LockedOut | Select-Object LockedOut ) -join "`n"
Write-Output $LockedOut
if ($LockedOut -eq "@{LockedOut=True}")
{
    Unlock-ADAccount $a -Verbose
# Write-Output "We have just unlocked the account $a" ;
}
else
{
    Write-Output "Account $a was not lockedout"
}
# Sorry for my inaccurate code - yours, ritchie.