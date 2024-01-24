# Run this before installing adobe or after
# Delete any previous adobe stuff from your system using revo pro uninstaller trial on their website and scan all windows account leftover otherwise might not work
 IDK how to combine them into 1 or make it pretty so if u can do it you can and maybe share here otherwise the ccstopper script is to stop adobe process etc and the other one is to add the host to block
U don't need this but if you're still facing issue run the following commands in powershell
# New-NetFirewallRule -DisplayName "Block Acrobat DC" -Direction Outbound -Program "%ProgramFiles%\Adobe\Acrobat DC\Acrobat\Acrobat.exe" -Action Block
# New-NetFirewallRule -DisplayName "Block Acrobat DC" -Direction Inbound -Program "%ProgramFiles%\Adobe\Acrobat DC\Acrobat\Acrobat.exe" -Action Block
 That will just block adobe in defender firewall
