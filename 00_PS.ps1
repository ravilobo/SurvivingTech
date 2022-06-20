# File list 
#-----------------------------------------------------------
#region 
$filelocation = 'C:\SurvivingTech\MyFiles'
get-childitem $filelocation 
get-childitem $filelocation  -name 
get-childitem $filelocation  -name | out-file $filelocation\out.txt 
invoke-item $filelocation\out.txt
#endregion 















