# HLLSeeder

 Seeding Script for Automatically Launching and Seeding a Hell Let Loose server

This script will automatically wake your computer up, start Hell Let Loose and connect you to a preconfigured server.

After 60 minutes, the script will shut down the game, unless you intervene.

## Installation

- Download and extract the [release .zip](https://github.com/KtodaZ/HLLSeeder/releases) anywhere on your computer
- (Optional) Edit `variables.bat` to configure Startup Time and server link
- Run setup.bat

## How this script works

- Running setup.bat runs a program called [WakeupOnStandBy](https://dennisbabkin.com/wosb/) to wake up your computer at the scheduled time and open the configured URL
- After the desired time, the game closes, unless you close runGame.bat before the configured time in `variables.bat`
