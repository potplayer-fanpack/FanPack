:: Downloads video from link in clipboard using yt-dlp and ffmpeg
:: https://t.me/wincmd64

@echo off

:: finds the downloads folder
for /F "USEBACKQ TOKENS=2,*" %%a in (
	`REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /V {374DE290-123F-4565-9164-39C4925E467B}`
) do (set DOWNLOADS=%%b)

:: get value from clipboard
for /F "delims=" %%i in ('powershell Get-Clipboard') do set url=%%i

:check
yt-dlp.exe -F -S vext "%url%"
if ERRORLEVEL 1 (
	:: if the url is not read from the buffer - enter manually
	set /p url=Enter the url:
	echo.
	goto check
)
echo.
set num=
set /p num=Enter ID or videoID+audioID or leave empty for MP4*1080*AVC if available:
echo.
if not defined num (
	:: hit Enter for best video\audio
	yt-dlp.exe -f "bestvideo[height<=?1080][vcodec^=avc][ext=mp4]+bestaudio[acodec^=mp4a][ext=m4a]/best" "%url%" -P %DOWNLOADS% -o "%%(title).100s.%%(ext)s" --no-part
	if ERRORLEVEL 1 (goto check)
) else (
	yt-dlp.exe -f %num% "%url%" -P %DOWNLOADS% -o "%%(title).100s.%%(ext)s" --no-part
	if ERRORLEVEL 1 (goto check)
)
color 27
explorer %DOWNLOADS%
timeout 2