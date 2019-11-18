$time = Read-Host -Prompt "Minutes to wait before shutdown"

$host.privatedata.ProgressForegroundColor = "white";

while ($time -ne 1){
	Write-Progress "$time minutes left to shutdown. Close to cancel."
	$time = $time - 1
	sleep 60
}

$time = 60
$host.privatedata.ProgressBackgroundColor = "darkred";

while ($time -ne 0){
	Write-Progress "$time seconds left to shutdown. Close to cancel."
	$time = $time - 1
	sleep 1
}

$host.privatedata.ProgressBackgroundColor = "red";

Write-Progress "Shutting down..."
shutdown -s -t 00