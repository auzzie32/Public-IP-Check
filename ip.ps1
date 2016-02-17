$t = 5                  # The number of times to loop
$s = 60                 # The time in seconds between loops
                        # Multiply t and s for total time

$minRaw = ($t * ($s + '.01') / 60)
$minRound = [math]::Round($minRaw,2)
"This script will run for approximatly $minRound minutes"
$dir = Read-Host 'Where would you like the file to be saved? Default is Desktop'
if ($dir -eq "") {$dir = "Desktop/ip-history"}
For (; $t -gt 0 ; $t--) {$ip = Invoke-WebRequest -Uri https://api.ipify.org?format=json | ConvertFrom-Json
$a = Get-Date
Add-Content "$dir" "$a $ip"
$line++
"$line records written"
Start-Sleep -s $s
}