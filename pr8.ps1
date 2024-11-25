while(Get-Process | Where{$_.ProcessName -eq 'notepad'}){
    Write-Host 'Notepad is running'
}
