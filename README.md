# HLLSeeder

 Seeding Script for Automatically Launching and Seeding a Hell Let Loose server

This script will automatically wake your computer up, start Hell Let Loose and connect you to a preconfigured server.

After 60 minutes, the script will shut down the game, unless you intervene.

## Installation

- Download and extract the [release .zip](https://github.com/KtodaZ/HLLSeeder/releases) anywhere on your computer
- If you are updating from an old version, delete the old version first
- (Optional) Edit `config.txt` to configure Startup Time and server link. ESPT Members set the time to 10AM ET (in your local time)
- Run setup.bat

## How this script works

- Running setup.bat creates a windows scheduled task that runs `runGame.bat` at the set time every day.
- After the desired time, the game closes, unless you close the running cmd before the configured time in `config.txt`
