# Run this before installing adobe or after
![lRjfdgM](https://github.com/deadboy18/Adobe/assets/53135082/0043d051-703f-42c9-bd50-830159b27e54)
![QuvN6UL](https://github.com/deadboy18/Adobe/assets/53135082/179a862b-fbb2-400a-bcc4-dbd971d09a2d)
![hrs4pVD](https://github.com/deadboy18/Adobe/assets/53135082/8923ca2d-93da-4e17-b635-564194f6d9f1)
![6z2SH](https://github.com/deadboy18/Adobe/assets/53135082/037af2bd-81bc-45ae-8789-9ce10bf881d5)
![avatar20447_9](https://github.com/deadboy18/Adobe/assets/53135082/25f5c5d5-e5a4-43ca-8c2a-19b8817b9b2a)


1. Delete any previous adobe stuff from your system using revo pro uninstaller trial on their website and scan all windows account leftover otherwise might not work
2. IDK how to combine them into 1 or make it pretty so if u can do it you can and maybe share here otherwise the ccstopper script is to stop adobe process etc and the other one is to add 
   the host to block.
3. U don't need this but if you're still facing issue run the following commands in powershell
```
  New-NetFirewallRule -DisplayName "Block Acrobat DC" -Direction Outbound -Program "%ProgramFiles%\Adobe\Acrobat DC\Acrobat\Acrobat.exe" -Action Block
  New-NetFirewallRule -DisplayName "Block Acrobat DC" -Direction Inbound -Program "%ProgramFiles%\Adobe\Acrobat DC\Acrobat\Acrobat.exe" -Action Block
```

```
New-NetFirewallRule -DisplayName "Block AcroCEF" -Direction Outbound -Program "C:\Program Files\Adobe\Acrobat DC\Acrobat\AcroCEF\AcroCEF.exe" -Action Block
New-NetFirewallRule -DisplayName "Block AcroCEF" -Direction Inbound -Program "C:\Program Files\Adobe\Acrobat DC\Acrobat\AcroCEF\AcroCEF.exe" -Action Block
```

 That will just block adobe in defender firewall or you can manually block Acrobat.exe and AcroCEF.exe files in Windows Firewall
