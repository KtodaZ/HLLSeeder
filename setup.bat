@echo off
setlocal enableDelayedExpansion

for /f "delims=" %%x in (config.txt) do (set "%%x")
set "workDir=%cd%"

REM editing XML file to add local directory
type "TaskSchedulerTemplate.xml"|repl "workDir" "%workDir%"|repl "startTime" "%startupTime%" >TaskSchedulerTemplate_local.xml

schtasks /create /xml "%workDir%\TaskSchedulerTemplate_Local.xml" /tn "HLL-Seeder"

ECHO "Setup Complete. Your game should now start every day at %startupTime%."
ECHO "To turn turn off the schedule, disable in windows Task Scheduler."

PAUSE