# PowerShell's New-Item creates a folder
$Location = "c:\PowerShell\"
New-Item -Path $Location -Name "Ezines" -ItemType "directory"
#Invoke-Item $Location