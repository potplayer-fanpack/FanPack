@echo off
REM Przenoszenie plików z AviSynth
IF EXIST "%~dp0AviSynth\*.*" (
    MOVE /Y "%~dp0AviSynth\*.*" "%ProgramFiles%\DAUM\PotPlayer\AviSynth"
)

REM Przenoszenie plików z PxShader
IF EXIST "%~dp0PxShader\*.*" (
    MOVE /Y "%~dp0PxShader\*.*" "%ProgramFiles%\DAUM\PotPlayer\PxShader"
)

REM Przeniesienie PotPlayerMini64.exe
IF EXIST "%~dp0PotPlayerMini64.exe" (
    MOVE /Y "%~dp0PotPlayerMini64.exe" "%ProgramFiles%\DAUM\PotPlayer\PotPlayerMini64.exe"
)
