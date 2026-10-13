Challenge 2: Build domain qualified names. Create same 3 name array from C01 and a variable containing adatum.com 
Inside foreach, build fully qualified domain name and display it.

$computers = @("lon-cl1","lon-dc1","lon-svr1")
$domain = "adatum.com"
foreach ($computer in $computers) {
    $fqdn = "$computer.$domain"
    write-output "FQDN: $fqdn"
}
