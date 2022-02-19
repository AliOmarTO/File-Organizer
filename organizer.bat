rem organizes all files in directory by their file type
@echo off
ECHO Would you like to organize files?
PAUSE
rem For each file in your folder
for %%a in (".\*") do (
rem check if the file has an extension and if it does not, skips the file
if "%%~xa" NEQ "" if "%%~dpxa" NEQ "%~dpx0" (
rem check if extension folder exists, if not it is created
if not exist "%%~xa" mkdir "%%~xa"
rem Move the file to directory
move "%%a" "%%~dpa%%~xa\"
))
ECHO Files successfully organized!
PAUSE
