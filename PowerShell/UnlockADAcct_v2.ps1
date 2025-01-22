$list = Search-ADAccount -UsersOnly -lockedout | Select-Object SamAccountName -ExpandProperty SamAccountName
Write-Host $list


ForEach ($u in $list)
{
    Write-Host "USER LOCKED - $u"
    $u | Unlock-ADAccount
    Write-Host "User's unlocked now, enjoy"
}


#{
#     $samAccountName = Select-Object -InputObject $u -ExpandProperty SamAccountName
#     Write-Host "$samAccountName"
# }

# ForEach ($u in $list) 
# {
   
#     if ( -not (Get-ADUser -LDAPFilter "(SamAccountName=$u)")) {
#         Write-Output "Not a friendly view - $u"
#         $user = Get-ADUser -Identity $u
#         Write-Output "A friendly view - $user"
#     }
#     else {
#         Write-Host "USER LOCKED - $u"
#         $user = Get-ADUser -Identity $u
#         $user | Unlock-ADAccount
#         Write-Host "User's unlocked, enjoy"
#     }
    
# }

#$user1 = Get-ADUser -Filter {Name -Like "$u"} -Properties *
#Write-Output $user1

# Sorry for my inaccurate code - yours, ritchie.