$files = get-childitem C:\Ravi\Languages\Demo\SurvivingTech\MyFiles | select name 
foreach ($i  in $files.name ) {
 "This is an awesome file! $i `n------------------------------------------" 
}