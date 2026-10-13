Challenge 3 - Inspect local services. Create an array w/ eventlog, w32time, and spooler.
For each name, use get-service -name and save the returned objects in a variable.
Display the service name and status on one line.

$services = @("eventlog", "w32time", "spooler")
foreach ($serviceName in $services) {
    $service = Get-Service -Name $serviceName
    write-output "Service: $($service.Name), Status: $($service.Status)"
}