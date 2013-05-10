set databaseServer=localhost\sqlexpress
set databaseName=IMS
set fileName=backup%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%
set directory=C:\SQLBackup\

SqlCmd -E -S %databaseServer% -Q "BACKUP DATABASE %databaseName% TO DISK='%directory%%fileName%.bak'"
