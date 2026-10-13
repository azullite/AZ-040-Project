Challenge 1 - List and display computers in the array using PS array and foreach loop.

$computers = @("lon-cl1","lon-dc1","lon-svr1")
$computers

$computers = @("lon-cl1","lon-dc1","lon-svr1") '
foreach ($computer in $computers) { write-output "Computer: $computer" }