@title Rsync-Master123-To-other
@echo on&setlocal enabledelayedexpansion 
@for /f "tokens=1,2,3 delims=- " %%a in ('date /t') do @set dated=%%a-%%b-%%c
@for /F "tokens=1,2 delims=: " %%s in ('time /t') do @set timed=%%s:%%t
@set timedb=%dated%  %timed%
@if exist imgrsynclog_1.log (@del imgrsynclog_1.log /q)
@if exist imgrsynclog.log (@ren imgrsynclog.log imgrsynclog_1.log)
@SET CYGWIN=nontsec
::关闭的时间(秒)
@set /a tt = dd = 60
:: --delete 

@echo 192.168.2.92 >>imgrsynclog.log
"C:\Program Files (x86)\cwRsync\bin\rsync.exe" -avzP --exclude-from=exclude.ini --progress /cygdrive/c/website/* DingquRSYNC@192.168.2.92::www --port=11873 --password-file=/cygdrive/c/rsync_bat/client_password.ini


:Timeout
@set /a tt=tt-1
@title %timedb%   === 运行同步bat结果如下,此窗口[%tt%秒/%dd%秒]后自动关闭 ===
@ping 127.0.0.1 -n 2 >nul
@if "%tt%"=="0" goto Next
@goto Timeout
@exit

:Next
@exit

