$computer = "LON-DC1"
$os = get-ciminstance -classname win32_operatingsystem

$cdrive = get-ciminstance -classname win32_logicaldisk -computername $computer -filter "deviceid='c'"

$uptime = $os.LocalDateTime - $os.LastBootUpTime


$info = [PScustomobject]@{
    ComputerName = $computer
    OS = $os.Caption
    LastBootUpTime = $os.LastBootUpTime
    CDriveSize  = $cdrive.size
    CDriveFreeSpace = $cdrive.FreeSpace
    CDriveFreeSpaceGB = [math]::round(($cdrive.FreeSpace / 1GB), 2)
    UptimeHours = [math]::round($uptime.TotalHours, 2)
}
$info
