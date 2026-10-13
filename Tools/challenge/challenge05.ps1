Challenge 05: Read the domain computer inventory. Import AD module, create the 3 name computer array. For each name, call get-adcomputer with -identity, -server lon-dc1.adatum.com and -properties operatingsystem.
Display name, dnshostname, operating system from each returned object.

$computers = @("lon-cl1", "lon-dc1", "lon-svr1")
Import-Module ActiveDirectory
foreach ($computer in $computers) {
    $adComputer = Get-ADComputer -Identity $computer -Server lon-dc1.adatum.com -Properties OperatingSystem
    Write-Output "Name: $($adComputer.Name)"
    Write-Output "DNS Hostname: $($adComputer.DNSHostName)"
    Write-Output "Operating System: $($adComputer.OperatingSystem)"
}
