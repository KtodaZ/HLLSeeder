@echo off
CD ../
CALL config.bat

rem Clicks URL to open game
START "" %serverUrl%
SLEEP 60
rem Click URL again to join server, it takes 2 clicks since last patch
START "" %serverUrl%
SLEEP 20
rem Some users were having issues with opening the server, try a third time to make sure you're in
START "" %serverUrl%


ECHO "Game will automatically close in %closeGameAfterMinutes% minutes from this message"
ECHO "Close this window to cancel the process"
set /A timeout =  %closeGameAfterMinutes%*60
SLEEP %timeout%

rem Kill HLL
TASKKILL /IM HLL-Win64-Shipping.exe /F

exit