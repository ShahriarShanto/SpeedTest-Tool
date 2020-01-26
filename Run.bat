@echo off
color a
title SpeedTest Tool v1.2 ~ Shahriar Shanto
echo SpeedTest Tool v1.2 ~ Shahriar Shanto
type art.txt
echo Enter 1 for Internet // 2 for BDIX
choice /N /T 5 /C 12 /D 1 /M "Your choice:"
IF ERRORLEVEL 1 SET id=4235
IF ERRORLEVEL 2 SET id=14414
cls
echo SpeedTest Tool v1.2 ~ Shahriar Shanto
engine -s %id%
PAUSE>nul