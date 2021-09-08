$ExpiredUsers = Search-ADAccount -AccountExpired # can use search base to limit the OU -SearchBase 'OU Goes Here'

foreach ($Item in $expiredUsers) {

$Item.SamAccountName

Remove-ADGroupMember -Identity "$Item" -Member "Group 1"

Remove-ADGroupMember -Identity "$Item" -Member "Group 2"

Disable-ADAccount -Identity $Item

Write-Output "$($Item.Username) - Disabled and Licenses Removed"

}