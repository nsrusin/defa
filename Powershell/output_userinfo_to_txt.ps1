Remove-item .\Seva3.txt
$Users = Get-ADUser -filter * -properties Mobile, givenName, sn -SearchBase 'ou=Учётные записи, dc=defanew, dc=local' | where -Property Mobile -ne $null | Select-Object Mobile, givenName, sn | Sort-Object sn
ForEach ($User In $Users)
{
$User.Mobile = $User.Mobile -replace '\+7','7' -replace '\(','' -replace '\)','' -replace '-','' -replace '8 ','8' -replace '\s+',''
$COMMA = ","
$NEWLINE = "`n"
Out-File -FilePath .\Seva3.txt -InputObject $User.Mobile, $COMMA, $User.sn, $COMMA, $User.givenName, $NEWLINE -Encoding UTF8 -NoNewline -append
}
