@echo off
color a
title SpeedTest Tool v1.5
echo SpeedTest Tool v1.5
echo.
echo GitHub: https://github.com/ShahriarShanto/SpeedTest-Tool
type art.txt
choice /N /T 5 /C 0123456789X /D 1 /M "Your choice:"

IF %ERRORLEVEL%==11 SET id=6199
IF %ERRORLEVEL%==10 SET id=980
IF %ERRORLEVEL%==9 SET id=7139
IF %ERRORLEVEL%==8 SET id=14623
IF %ERRORLEVEL%==7 SET id=4235
IF %ERRORLEVEL%==6 SET id=2054
IF %ERRORLEVEL%==5 SET id=367
IF %ERRORLEVEL%==4 SET id=13242
IF %ERRORLEVEL%==3 SET id=20144
IF %ERRORLEVEL%==2 SET id=30815
IF %ERRORLEVEL%==1 GOTO PingTest

cls
echo SpeedTest Tool v1.5
echo.
echo GitHub: https://github.com/ShahriarShanto/SpeedTest-Tool
engine -s %id%
GOTO END

:PingTest
cls
title SpeedTest Tool v1.5 ~ PingTest Mode

:begin
echo SpeedTest Tool v1.5 ~ PingTest Mode
echo.
echo GitHub: https://github.com/ShahriarShanto/SpeedTest-Tool
echo.
echo Test #1 : Sending pings to 1.1.1.1 Cloudflare
nping -v-1 -icmp --rate 10 -c 35 1.1.1.1 | findstr /v Starting | findstr /v Nping
echo.
echo.
echo Test #2 : Sending pings to 8.8.8.8 Google
nping -v-1 -icmp --rate 10 -c 35 8.8.8.8 | findstr /v Starting | findstr /v Nping
echo.
echo.
echo Test #3 : Sending pings to 103.254.152.254 Singapore
nping -v-1 -icmp --rate 10 -c 35 103.254.152.254 | findstr /v Starting | findstr /v Nping
echo.
timeout /T 10
cls
goto begin

:END
PAUSE>nul
