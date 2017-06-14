# PowerShell's New-Item creates a folder

 param (
    [string]$server = "http://defaultserver"

 )
 write-host $server

$Location = "c:\PowerShell\"
New-Item -Path $Location -Name "Ezines" -ItemType "directory"

sqlcmd -S $OldName -i rename.sql -o rename.log