Write-Host "Uninstalling current product key..." -ForegroundColor Cyan
Start-Process -FilePath "cscript.exe" -ArgumentList "C:\Windows\System32\slmgr.vbs /upk" -NoNewWindow -Wait

Write-Host "Clearing the product key from the registry..." -ForegroundColor Cyan
Start-Process -FilePath "cscript.exe" -ArgumentList "C:\Windows\System32\slmgr.vbs /cpky" -NoNewWindow -Wait

Write-Host "Clearing any configured KMS server..." -ForegroundColor Cyan
Start-Process -FilePath "cscript.exe" -ArgumentList "C:\Windows\System32\slmgr.vbs /ckms" -NoNewWindow -Wait

Write-Host "Installing new product key..." -ForegroundColor Cyan
Start-Process -FilePath "cscript.exe" -ArgumentList "C:\Windows\System32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX" -NoNewWindow -Wait

Write-Host "Setting the KMS server to kms8.msguides.com..." -ForegroundColor Cyan
Start-Process -FilePath "cscript.exe" -ArgumentList "C:\Windows\System32\slmgr.vbs /skms kms8.msguides.com" -NoNewWindow -Wait

Write-Host "Activating Windows..." -ForegroundColor Cyan
Start-Process -FilePath "cscript.exe" -ArgumentList "C:\Windows\System32\slmgr.vbs /ato" -NoNewWindow -Wait

Write-Host "All commands completed." -ForegroundColor Green
