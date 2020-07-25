# https://github.com/kubernetes/kubernetes/issues/85379

$cpus = (Get-CimInstance Win32_ComputerSystem).NumberOfLogicalProcessors

foreach ($loopnumber in 1..$cpus){
    Start-Job -ScriptBlock{
    $result = 1
	foreach($mm in 1..2147483647){$res1=1;foreach($num in 1..2147483647){$res1=$mm*$num*1340371};$res1}
    }
}

# https://stackoverflow.com/a/60016244

$totalRam = (Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property capacity -Sum).Sum
while($true) {
    $date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $cpuTime = (Get-Counter '\Processor(_Total)\% Processor Time').CounterSamples.CookedValue
    $availMem = (Get-Counter '\Memory\Available MBytes').CounterSamples.CookedValue
    $date + ' > CPU: ' + $cpuTime.ToString("#,0.000") + '%, Avail. Mem.: ' + $availMem.ToString("N0") + 'MB (' + (104857600 * $availMem / $totalRam).ToString("#,0.0") + '%)'
    Start-Sleep -s 2
}