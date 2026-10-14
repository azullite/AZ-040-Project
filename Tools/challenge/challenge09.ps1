Challenge 9: Export a computer account report. Retrieve the same 3 computer accounts and operating systems.
Use if and else to set accountstate to enabled or disabled from each account enabled property.
Make a pscustomobject each iteration with computername, dnshostname, operating system, and accountstate. 
Put all rows in $report. Export rows to Challenge09 CSV file beside the saved script by using join-path and $PSScriptRoot.
Use -notypeinformation and -encoding UTF8. Import it to verify row count.