@echo off
title = PythonOS Backup Manager - Create Backup
color 0c
echo PythonOS Backup Manager
echo Powered By 7Zip
pause
7z a PythonOSBackup.pyos @backupfiles.txt
echo ---------------------------
pause