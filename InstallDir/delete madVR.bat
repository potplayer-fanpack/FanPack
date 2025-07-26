@echo off
echo ProgramFiles: %ProgramFiles%
echo ProgramW6432: %ProgramW6432%

if exist "%ProgramFiles%\madVR" (
    echo Znaleziono folder w %ProgramFiles%\madVR
    goto deinstalacja
)
if exist "%ProgramW6432%\madVR" (
    echo Znaleziono folder w %ProgramW6432%\madVR
    goto deinstalacja
)
goto nie istnieje

:deinstalacja
@regsvr32.exe madVR.ax /u /s
@if errorlevel 1 echo Błąd podczas wyrejestrowania madVR.ax
@if exist "%SystemRoot%\SysWOW64\cmd.exe" (
    @regsvr32.exe madVR64.ax /u /s
    @if errorlevel 1 echo Błąd podczas wyrejestrowania madVR64.ax
)
:sukces
@echo.
@echo Deinstalacja zakonczyla sie pomyslnie.
@echo.
goto usun folder

:usun folder
RD /S /Q "%ProgramFiles%\madVR"
if exist "%ProgramFiles%\madVR" echo Błąd: Folder %ProgramFiles%\madVR nie został usunięty.
RD /S /Q "%ProgramW6432%\madVR"
if exist "%ProgramW6432%\madVR" echo Błąd: Folder %ProgramW6432%\madVR nie został usunięty.
exit

:nie istnieje
echo Folder madVR nie istnieje.
exit