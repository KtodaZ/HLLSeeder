@echo off

for /f "delims=" %%x in (config.txt) do (set "%%x")

rem Clicks URL to open game
START "" %serverUrl%
timeout /t 5
timeout /t 60
rem Click URL again to join server, it takes 2 clicks since last patch
START "" %serverUrl%

rem IF YOU HAVE PROBLEMS CONNECTING TO THE SERVER, TRY UNCOMMENTING THE LINES BELOW BY REMOVING 'rem'
rem timeout /t 20
rem START "" %serverUrl%

ECHO "Game will automatically close in %closeGameAfterMinutes% minutes from this message"
ECHO "Close this window to cancel the process"
set /A timeout =  %closeGameAfterMinutes%*60
timeout /t %timeout%

rem Kill HLL
TASKKILL /IM HLL-Win64-Shipping.exe /F

exit