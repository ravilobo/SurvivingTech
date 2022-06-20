clear-host 
set-location C:\Ravi\Languages\Demo\SurvivingTech\MyFiles
get-childitem *.txt |Remove-Item
1..100|%{
$file = "MyDoc_$_.txt"
"This is the name of my file: `n$file" |out-file -FilePath $file -Force 
}