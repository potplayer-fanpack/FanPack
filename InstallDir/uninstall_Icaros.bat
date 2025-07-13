@echo off
setlocal

REM
set "UninstallPath=C:\Program Files\Icaros\unins000.exe"

REM
set "UninstallArgs=/VERYSILENT /NORESTART /SUPPRESSMSGBOXES"

REM
"%UninstallPath%" %UninstallArgs%

echo Deinstalacja zakończona.
pause

endlocal