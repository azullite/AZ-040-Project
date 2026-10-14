# Challenge 08: Test lab network responses. Build the same 3 fully qualified computer names inside foreach.
# Use test-connection with -count 1 -quiet -erroraction silentlycontinue. Use if and else to display ICMP reply or No ICMP
# reply for each name. Count replies.

$computers = @("lon-cl1.adatum.com", "lon-dc1.adatum.com", "lon-svr1.adatum.com")
$replyCount = 0
foreach ($computer in $computers) {
    if (Test-Connection -ComputerName $computer -Count 1 -Quiet -ErrorAction SilentlyContinue) {
        Write-Output "ICMP reply from $computer"
        $replyCount++
    } else {
        Write-Output "No ICMP reply from $computer"
    }
}
Write-Output "Total ICMP replies: $replyCount"