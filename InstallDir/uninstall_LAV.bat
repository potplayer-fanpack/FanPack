@echo off
setlocal

REM
set "UninstallPath=C:\Program Files (x86)\LAV Filters\unins000.exe"

REM
set "UninstallArgs=/VERYSILENT /NORESTART /SUPPRESSMSGBOXES"

REM
"%UninstallPath%" %UninstallArgs%

echo Deinstalacja zakończona.
pause

endlocal