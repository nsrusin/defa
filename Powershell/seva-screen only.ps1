$Users = Get-ADUser -filter * -properties Mobile, givenName, sn -SearchBase 'ou=Учётные записи, dc=defanew, dc=local' | where -Property Mobile -ne $null | Select-Object Mobile, givenName, sn | Sort-Object sn
ForEach ($User In $Users)
{
$User.Mobile = $User.Mobile -replace '\+7','8' -replace '\(','' -replace '\)','' -replace '-','' -replace '8 ','8' -replace '\s+',''
Write-Host $User.Mobile  -NoNewline
Write-Host "," -NoNewline
Write-Host $User.givenName -NoNewline
Write-Host "," -NoNewline
Write-Host $User.sn
}
