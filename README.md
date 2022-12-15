# HLLSeeder

![GitHub](https://img.shields.io/github/license/KtodaZ/HLLSeeder)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/KtodaZ/HLLSeeder)
![GitHub all releases](https://img.shields.io/github/downloads/KtodaZ/HLLSeeder/total)

Seeding Script for Automatically Launching and Seeding a Hell Let Loose server

This script will automatically wake your computer up, start Hell Let Loose and connect you to a preconfigured server.

After 120 minutes (configurable), the script will shut down the game, unless you intervene.  

This script runs 100% locally. It uses .bat scripts which you can inspect yourself.

## Installation

- Download and extract the [release .zip](https://github.com/KtodaZ/HLLSeeder/releases) anywhere on your computer
- If you are updating from an old version, delete the old version first
- (optional) Change serverUrl or closeGameAfterMinutes in config.txt.
- Run setup.bat

## Uninstall

- Run `uninstall.bat`

## Changing the start time  

- Simply re-run setup.bat

## How this script works

- Running setup.bat creates a windows scheduled task that runs `runGame.bat` at the set time every day.
- After the desired time, the game closes, unless you close the running cmd window before the configured time in `config.txt`
