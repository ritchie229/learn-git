$a = Read-Host "Enter ComputerName"
$a = "$a"
# Get-ADComputer -Identity $a -Properties * 
Get-ADComputer -Identity $a -Properties * | FT Name, LastLogonDate, Description, OperatingSystem, OperatingSystemVersion