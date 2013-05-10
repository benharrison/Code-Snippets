REM - nightly scheduled task for backing up small databases and saving to dropbox
REM - stores as [C:\Dropbox]\Mon, [C:\Dropbox]\Tue, [C:\Dropbox]\Wed, etc..

set databaseServer=localhost\sqlexpress
set databaseName=tIMSdb
set fileName=backup%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%
set backupDirectory=C:\SQLBackup\
set dropboxDirectory=C:\Dropbox\Daily Backup\%DATE:~0,3%\

REM create backup then compress in a temporary 7zip archive
SqlCmd -E -S %databaseServer% -Q "BACKUP DATABASE %databaseName% TO DISK='%backupDirectory%%fileName%.bak'"
7za a -mx9 -t7z %backupDirectory%%fileName%.7z %backupDirectory%%fileName%.bak
del %backupDirectory%%fileName%.bak

REM clear out any previous backups in the daily dropbox folder
del %dropboxDirectory%*.* /Q

REM copy 7zip archive to Dropbox then delete temp file
xcopy "%backupDirectory%%fileName%.7z" "%dropboxDirectory%" /y
del %backupDirectory%%fileName%.7z
