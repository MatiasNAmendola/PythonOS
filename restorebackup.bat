@echo off
title = PythonOS Backup Manager - Restore Backup
color 0f
echo PythonOS Backup Manager
echo Powered By 7Zip
echo ---------------
echo ONLY RESTORE BACKUPS FROM PLACES YOU TRUST!
echo Some backups can steal may steal your info!
echo Warning!
echo This will overwrite your current install
echo If you do not want to continue, close the program now
echo If You Do Want To,
pause
7z e PythonOSBackup.pyos -y
echo ---------------------------
pause