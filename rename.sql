
GO
USE [contentserver]

GO
USE [contentserver]
UPDATE [csadmin].[KIni]
   SET [IniValue] = replace([IniValue], 'xecm001', 'xecm006')
 WHERE [IniSection] like 'docviewer.Settings' and [IniKeyword] like 'clienturl'
GO
