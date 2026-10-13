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


    Challenge 04: Count local services. Store all local services returned by get-service. Set a counter to zero before the loop, then display each service name and incrememnt the counter inside of foreach. After loop, print the total.
    Result
    Validation