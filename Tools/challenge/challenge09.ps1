# Challenge 9: Export a computer account report. Retrieve the same 3 computer accounts and operating systems.
# Use if and else to set accountstate to enabled or disabled from each account enabled property.
# Make a pscustomobject each iteration with computername, dnshostname, operating system, and accountstate.
# Put all rows in $report. Export rows to Challenge09 CSV file beside the saved script by using join-path and $PSScriptRoot.
# Use -notypeinformation and -encoding UTF8. Import it to verify row count.

$computers = @("lon-cl1", "lon-dc1", "lon-svr1")
$computers = get-adcomputer -filter * -properties dnshostname, operatingSystem, enabled
$report = foreach ($computer in $computers) {
    if ($computer.Enabled) {
        $accountState = "Enabled"
    } else {
        $accountState = "Disabled"
    }

    [PSCustomObject]@{
        ComputerName    = $computer.Name
        DNSHostName     = $computer.DNSHostName
        OperatingSystem = $computer.OperatingSystem
        AccountState    = $accountState
    }
}




$csvfile = join-path $psscriptroot "Challenge09.csv"
$report | Export-Csv -Path $csvfile -NoTypeInformation -Encoding UTF8
$importedcsv = @(Import-Csv -Path $csvfile)


Current issue is $psscriptroot - not a valid string. Challenge09.csv is created and correct. 



