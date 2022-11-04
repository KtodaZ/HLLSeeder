@echo off
CD ../
CALL config.bat

rem Clicks URL to open game
START "" %serverUrl%
SLEEP 80
rem Click URL again to join server, it takes 2 clicks since last patch
START "" %serverUrl%


ECHO "Game will automatically close in %closeGameAfterMinutes% minutes from this message"
ECHO "Close this window to cancel the process"
set /A timeout =  %closeGameAfterMinutes%*60
SLEEP %timeout%

rem Kill HLL
TASKKILL /IM HLL-Win64-Shipping.exe /F

exit