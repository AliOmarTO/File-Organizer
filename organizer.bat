rem organizes all files in directory by their file type
@echo off
ECHO Would you like to organize files?
PAUSE
rem For each file in your folder
FOR %%a IN (".\*") DO (
rem check if the file has an extension and if it is not our script
IF "%%~xa" NEQ "" IF "%%~dpxa" NEQ "%~dpx0" (
rem check if extension folder exists, if not it is created
IF NOT EXIST "%%~xa" MKDIR "%%~xa"
rem Move the file to directory
MOVE "%%a" "%%~dpa%%~xa\"
))

ECHO Files successfully organized!
PAUSE