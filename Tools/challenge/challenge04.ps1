Challenge 04: Count local services. Store all local services returned by get-service. 
Set a counter to zero before the loop, then display each service name and incrememnt the counter inside of foreach. 
After loop, print the total.

$services = Get-Service
$counter = counter + 1
foreach ($service in $services) {
    write-output "Service: $($service.Name)"
}
write-output "Total services: $counter"


OR


$services = Get-Service
$counter = 0
foreach ($service in $services) {
    write-output "Service: $($service.Name)"
    $counter++
}
write-output "Total services: $counter"
