Start-Transcript C:\temp\cleanup.txt
Get-ChildItem "C:\Users\*\AppData\Local\Google\Chrome\User Data\Default\Cache\Cache_Data\*" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Local\Chromium\User Data\Default\Cache\*" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Local\Chromium\User Data\Default\Code Cache\*" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Local\Microsoft\Outlook\*.ost" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Local\Microsoft\Power BI Desktop\LuciaCache\*" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Local\Microsoft\Power BI Desktop\LuciaIndex\*" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Cache\*" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Local\Microsoft\Windows\INetCache\Content.Outlook\*" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Local\WhatsApp\app-2.2222.12\resources\*" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Local\WhatsApp\app-0.3.3328\resources\*" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Roaming\Telegram Desktop\tdata\user_data\cache\*" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Roaming\Telegram Desktop\tdata\user_data\media_cache\*" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Local\Microsoft\Windows\WER\*" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Local\1C\1Cv8\*" | Where {$_.Name -as [guid]} |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Roaming\1C\1Cv8\*" | Where {$_.Name -as [guid]} |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\downloads\*" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Roaming\Rocket.Chat\Cache\*" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Cache\*" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Skype-Setup.exe" |Remove-Item -Force -Recurse -Verbose
Get-ChildItem "C:\Users\*\Appdata\Local\Temp\*" | Remove-Item -Force -Recurse -Verbose
Stop-Transcript
