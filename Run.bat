@echo off
title Shahriar SpeedTest Tool v1.0
echo Shahriar SpeedTest Tool v1.0
type art.txt
echo "1 for Internet | 2 for BDIX"
choice /N /T 5 /C 12 /D 1 /M "Your choice:"
IF ERRORLEVEL 1 SET id=4235
IF ERRORLEVEL 2 SET id=14414
engine -s %id%
PAUSE>nul