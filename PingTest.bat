@echo off
color a
title PingTest Tool
:begin
echo PingTest Tool
echo.
echo Test #1 : Testing with 1.1.1.1 Cloudflare
nping -v-1 -icmp --rate 18 -c 72 --data-length 1024 1.1.1.1 | findstr /v Starting | findstr /v Nping
echo.
echo.
echo Test #2 : Testing with 8.8.8.8 Google
nping -v-1 -icmp --rate 18 -c 72 --data-length 1024 8.8.8.8 | findstr /v Starting | findstr /v Nping
echo.
echo.
echo Test #3 : Testing with 103.254.152.254 Singapore
nping -v-1 -icmp --rate 18 -c 72 --data-length 1024 103.254.152.254 | findstr /v Starting | findstr /v Nping
echo.
timeout /T 10
cls
goto begin