set-location C:\survivingtech\
. C:\survivingtech\03_00_GlobalVariables.ps1
clear-host 
if ($AzureSub.length -gt 0) {    
 Write-Host 'Global variables have been set.' -ForegroundColor Green
}