Challenge 7: Summarize domain user account states. Import AD module, capture users from DC=adatum,dc=com using get-aduser -filter *
and -server lon-dc1.adatum.com. For each user, show samaccountname and enabled status. Keep separate enabled and disabled counts and a count of captured users.

$enabledCount = 0
$disabledCount = 0
$userCount = 0

Import-Module ActiveDirectory
$users = Get-ADUser -Filter * -Server lon-dc1.adatum.com -Properties Enabled
foreach ($user in $users) {
    Write-Output "SAMAccountName: $($user.SAMAccountName) - Enabled: $($user.Enabled)"
    if ($user.Enabled) {
        $enabledCount++
    } else {
        $disabledCount++
    }
    $userCount++
}

Write-Output "Total enabled users: $enabledCount"
Write-Output "Total disabled users: $disabledCount"
Write-Output "Total captured users: $userCount"