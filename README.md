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