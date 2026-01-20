@echo off
REM Get the hostname
set HOSTNAME=%COMPUTERNAME%

REM Get the IP address (first one found)
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4 Address"') do (
    set IP=%%a
)

REM Trim spaces
set IP=%IP: =%

echo Hostname: %HOSTNAME%
echo IP Address: %IP%
