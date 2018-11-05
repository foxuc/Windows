@echo off & setlocal enabledelayedexpansion
set Path1=D:\iis_restart
set Log=%Path1%\restartiislog.log

echo #---------s---------------------#>> %Log%
echo %date% %time%>> %Log%

net stop w3svc >> %Log%
net start w3svc >> %Log%

echo %date% %time%>> %Log%

:: 显示所有Internet服务状态
iisreset /status >> %Log%
echo, >> %Log%
echo #---------e---------------------#>> %Log%

echo on
ping 127.0.0.1 -n 9 >nul

