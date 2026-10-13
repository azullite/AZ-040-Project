# AZ-040-Project 10/8/26 1:07pm Start of Read Me. 

Challenge 01: List lab computers. Use a PS array and foreach loop to display 3 lab computer names.
Result
    Computer: Lon-cl1
    Computer: Lon-dc1
    Computer: Lon-svr1
Validation
    Script successful - 3 computer names displayed on only 3 lines in the correct order.
    $computer variable represents 1 computer name at a time. $computers represents the entire collection.


Challenge 02: Build domain qualified names. Create same 3 name array from C1 and a variable containing adatum.com. Inside foreach, build FQDN and display it. 
Result
    FQDN: lon-cl1.adatum.com
    FQDN: lon-dc1.adatum.com
    FQDN: lon-svr1.adatum.com
Validation
    Script successful - 3 computers now have FQDN and are displayed on 3 lines, in order. 
    Domain names are established for these 3 computers - does not mean they are reachable - DNS was not queried in this instance. 


Challenge 03: Inspect local services.Inspect local services. Create an array w/ eventlog, w32time, and spooler. For each name, use get-service -name and save the returned objects in a variable. Display the service name and status on one line.
Result
    Service: eventlog, Status: Running
    Service: w32time, Status: Running
    Service: spooler, Status: Running
Validation
    3 lines with service names and statuses. 
    Some services may be running or stopped depending on if they are currently in use by the computer. 


Challenge 04: Count local services. Store all local services returned by get-service. Set a counter to zero before the loop, then display each service name and increment the counter inside of foreach. After loop, print the total.
Result
    All local services listed in the format Service: $($service.Name)
    Total services: 256

Validation
  One service is listed per line, and a total service count of the array is at the end of the loop. 
  If the counter is reset inside the loop, the count will continue to reset and will not count up. 


Challenge 05: Read the domain computer inventory. Import AD module, create the 3 name computer array. For each name, call get-adcomputer with -identity, -server lon-dc1.adatum.com and -properties operatingsystem.
Display name, dnshostname, operating system from each returned object.
Result
    3 lab computer accounts were queried for info - name, dnshostname, and OS. Info was displayed correctly and in order.
Validation
    3 AD computer records populate.
    These results come from the active directory database - Get-ADComputer is an AD query.


Challenge 06: Challenge 6: Flag local services for review. Query eventlog, w32time, and spooler with a foreach loop.
If status is running, print OK with the service name. Otherwise print review with the name and current status.
Count the services marked review and display the count after the loop.
 Result
 Validation


Challenge 07:
Result
Validation


Challenge 08:
Result
Validation


Challenge 09:
Result
Validation


Challenge 10:
Result
Validation