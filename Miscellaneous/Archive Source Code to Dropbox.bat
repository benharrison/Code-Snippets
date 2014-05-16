REM - 7zips my source code directory, and stores it in Dropbox.
REM - Regularly ran as a Windows Scheduled Task.

set source=C:\Source
set destination=C:\Dropbox\Source.7z

del %destination%
7za a -mx9 -t7z %destination% %source%
