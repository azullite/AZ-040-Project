# AZ-040-Project

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
    LON-DC1 | LON-DC1.Adatum.com | Windows Server 2019 Datacenter Evaluation
    LON-SVR1 | LON-SVR1.Adatum.com | Windows Server 2019 Datacenter Evaluation
    LON-CL1 | LON-CL1.Adatum.com | Windows 10 Enterprise

Validation
    3 AD computer records populate.
    These results come from the active directory database - Get-ADComputer is an AD query.



Challenge 06: Challenge 6: Flag local services for review. Query eventlog, w32time, and spooler with a foreach loop.
If status is running, print OK with the service name. Otherwise print review with the name and current status.
Count the services marked review and display the count after the loop.

 Result
    OK: eventlog
    OK: w32time
    OK: spooler
    Total services marked for review: 0 
 
 Validation
    3 services returned, with OK or REVIEW status. Correct count of services marked for review at the end.
    Some services may be stopped because they are not in use. Some may be stopped because they were intentionally stopped or failed to start.



Challenge 7: Summarize domain user account states. Import AD module, capture users from DC=adatum,dc=com using get-aduser -filter * and -server lon-dc1.adatum.com. 
For each user, show samaccountname and enabled status. Keep separate enabled and disabled counts and a count of captured users.

Result
    List of many outputs in format - SAMAccountName: $($user.SAMAccountName). At end of output, there is the enabled counter, disabled counter, and
    captured user counter. 
    Total enabled users: 253
    Total disabled users: 2
    Total captured users: 255

Validation
    Enabled, disabled, and captured user counts are present. 
    Enabled accounts can be used, but this info does not reveal sign-in history - last use, if it was ever used, if it is
    currently in use/signed in, and more.



Challenge 08: Test lab network responses. Build the same 3 fully qualified computer names inside foreach.
Use test-connection with -count 1 -quiet -erroraction silentlycontinue. Use if and else to display ICMP reply or No ICMP
reply for each name. Count replies.

Result
    ICMP reply from lon-cl1.adatum.com
    ICMP reply from lon-dc1.adatum.com
    ICMP reply from lon-svr1.adatum.com
    Total ICMP replies: 3

Validation
    Three results from each computer - either positive ICMP reply or no ICMP reply.
    A counter of total ICMP replies.
    An ICMP reply (ping) indicates that the target host is available on the network - it does not verify that PS remoting
    is functioning. PS remoting uses WinRM/WS-Management - these would need to be tested to verify PS remoting ability.



Challenge 09:

Result

Validation



Challenge 10:

Result

Validation