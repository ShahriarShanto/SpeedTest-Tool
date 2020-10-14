@echo off
color a
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