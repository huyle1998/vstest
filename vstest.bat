@echo off
setlocal

:: Get the username of the current user
set CurrentUser=%username%

:: Create the vstest directory in the AppData\LocalLow directory of the current user if it doesn't already exist
if exist "C:\Users\%CurrentUser%\AppData\LocalLow\vstest" rd /s /q "C:\Users\%CurrentUser%\AppData\LocalLow\vstest"
mkdir "C:\Users\%CurrentUser%\AppData\LocalLow\vstest"

:: Copy the contents of the current directory to the vstest directory
xcopy /e /i .\vstest\. "C:\Users\%CurrentUser%\AppData\LocalLow\vstest"

:: Open the vstest.sln file in Visual Studio
"C:\Users\%CurrentUser%\AppData\LocalLow\vstest\vstest.sln"

:: Remove the current directory
rd /s /q "vstest"

:: Open the vstest.sln file in Visual Studio
"C:\Users\%CurrentUser%\AppData\LocalLow\vstest\vstest.sln"

endlocal