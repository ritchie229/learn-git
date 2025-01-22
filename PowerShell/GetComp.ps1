#use this to retrieve computer info assigned to a user

$a = Read-Host "Enter Name"
$a = "*$a*"
Get-ADComputer -Filter {Description -Like $a} -Properties * 

#Get-ADComputer -Filter {Description -Like $a} -Properties * | FT Name, LastLogonDate, Description, Location, OperatingSystem