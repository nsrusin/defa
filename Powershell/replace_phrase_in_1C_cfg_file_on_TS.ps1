#Замена на терминалах в профилях бухгалтеров строки в файле cfg
$Users = Get-ADUser -filter * -properties SamAccountName -SearchBase 'ou=Бухгалтерия, ou=Офис, ou=Санкт-Петербург, ou=Учётные записи, dc=defanew, dc=local' | Select-Object SamAccountName | Sort-Object SamAccountName #учётки бухгалтеров
ForEach ($User in $Users)
{
   $U=$User.SamAccountName
   $CFG = get-content -Path "\\srv-ts-04\C$\Users\$U\AppData\Roaming\1c\1CESTART\1cestart.cfg"
   echo $U
   $CFG = $CFG -replace 'UseHWLicenses=0','UseHWLicenses=1'
   $CFG
   echo "`n"
   Out-File -FilePath \\srv-ts-04\C$\Users\$U\AppData\Roaming\1c\1CESTART\1cestart.cfg -InputObject $CFG -Encoding UTF8
}
