 # PowerShell's New-Item creates a folder

 param (
    [string]$server = "http://defaultserver"

 )
 write-host $server
 $query = "update [cs2010].[KIni] SET [IniValue] ='''" + $server `
        + "''' WHERE [IniSection] like 'docviewer.Settings' and [IniKeyword] like 'clienturl'"

write-host $query

$Location = "c:\PowerShell\"
#New-Item -Path $Location -Name "Ezines" -ItemType "directory"
Invoke-Sqlcmd -ServerInstance Enterprise `
    -Database CS2010 -UserName sa -Password livelink -Query $query

# sqlcmd -S "Enterprise" -U sa -P livelink -i rename.sql -o rename.log -v url='http://www.yahoo.com'