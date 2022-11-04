@echo off
CALL config.bat
set "rungamePath=%cd%\runGame.bat"

cd wosb
START wosb /run tm="%startupTime%" file="%rungamePath%" /screenon weekdays="Sun+Mon+Tue+Wed+Thur+Fri+Sat"
cd ..

ECHO "Setup Complete. Your game should now start every day at %startupTime%."
ECHO "..."
ECHO "A WakeOnStandby icon will now show in your system tray indicating the process is initialized."
ECHO "To turn turn off the schedule, exit WakeOnStandby."
ECHO "To turn on the schedule, run this setup script again."

PAUSE