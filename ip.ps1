$t = 5                  # The number of times to loop
$s = 60                 # The time between loops

$minRaw = ($t * ($s + '.01') / 60)
$minRound = [math]::Round($minRaw,2)
"This script will run for approximatly $minRound minutes"
For (; $t -gt 0 ; $t--) {$ip = Invoke-WebRequest -Uri https://api.ipify.org?format=json | ConvertFrom-Json
$a = Get-Date
Add-Content C:\Users\auzzi\Desktop\ip.txt "$a $ip"
Start-Sleep -s $s
}