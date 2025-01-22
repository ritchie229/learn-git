$dauser = Read-Host "Enter DA Username to be removed from Protected Users"
# $dauser = "*$dauser*"

Remove-ADGroupMember -Identity 'Protected Users' -Members $dauser





# Get-ADGroup | Where-Object Member -Like $dauser
# Get-ADGroup -Filter {Members -Like $dauser} -Properties * | FL CanonicalName, Members

# Get-ADComputer -Filter {Description -Like $a} -Properties * 
# Get-ADComputer -Filter {Description -Like $a} -Properties * | FT Name, LastLogonDate, Description, Location, OperatingSystem