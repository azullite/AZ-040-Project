Challenge 6: Flag local services for review. Query eventlog, w32time, and spooler with a foreach loop.
If status is running, print OK with the service name. Otherwise print review with the name and current status.
Count the services marked review and display the count after the loop.

$services = @("eventlog", "w32time", "spooler")
$reviewCount = 0
foreach ($serviceName in $services) {
    $service = Get-Service -Name $serviceName
    if ($service.Status -eq "Running") {
        Write-Output "OK: $($service.Name)"
    } else {
        Write-Output "Review: $($service.Name) - Status: $($service.Status)"
        $reviewCount++
    }
}
Write-Output "Total services marked for review: $reviewCount"