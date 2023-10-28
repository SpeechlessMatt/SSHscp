@echo off
echo SSHscp0 current version: 2.21.1 lastest updated: 2023.5.21
echo By Czy_420b (Byx)
dir|find "sshbat0.config">nul
if "%errorlevel%" == "1" (goto level1) else (goto level2)

:level1
set /p ipaddr="IP地址（包括登入账户）："
set /p dk="端口："
echo 1.上传 2.下载

:xh
set /p if1="："
if "%if1%" == "1" (goto mode1)
if "%if1%" == "2" (goto mode2)
echo 错误，请按任意键继续
pause>nul
goto xh

:mode1
echo 文件夹要在前面加-r 
set /p wj="本机文件（可以拖入）："
set /p load="上传路径："
start cmd /k scp -P %dk% %wj% %ipaddr%:%load%^&echo 按任意键退出^&pause^>nul^&exit
set load2=none
set load3=none
goto end

:mode2
echo 文件夹要在前面加-r 
set /p load2="文件路径："
set /p load3="下载路径（绝对路径或相对路径）："
start cmd /k scp -P %dk% %ipaddr%:%load2% %load3%^&echo 按任意键退出^&pause^>nul^&exit
set load=none
set wj=none
goto end

:end
echo ;1.IP地址：;%ipaddr%;ipaddr;ipaddr>sshbat0.config
echo ;2.端口：;%dk%;dk;dk>>sshbat0.config
echo ;3.本机文件地址：;%wj%;wj;wj>>sshbat0.config
echo ;4.上传位置：;%load%;load;load>>sshbat0.config
echo ;5.下载文件地址：;%load2%;load2;load2>>sshbat0.config
echo ;6.下载路径：;%load3%;load3;load3>>sshbat0.config
exit

::level2是模式2，检测到存档文件
:level2
echo 曾经使用如下配置，您可以选择修改或继续：
for /f "tokens=1-2 delims=;" %%i in (sshbat0.config) do echo %%i%%j
echo 键入h获取帮助

:www
set /p wtf="："
if "%wtf%" == "exit" (exit)
if "%wtf%" == "h" (echo usage:^<exit^/y^/n^/h^/[number]^>&&echo 输入y则全部保留输入n则全部舍弃&&echo 键入数字并回车以修改&&goto www)
if "%wtf%" == "y" (goto mode3)
if "%wtf%" == "n" (goto level1)
if "%wtf%" == "1" (goto x1)
if "%wtf%" == "2" (goto x2)
if "%wtf%" == "3" (goto x3)
if "%wtf%" == "4" (goto x4)
if "%wtf%" == "5" (goto x5)
if "%wtf%" == "6" (goto x6)
echo 错误，请按任意键继续
pause>nul
goto www

:mode3
for /f "tokens=2-3 delims=;" %%i in (sshbat0.config) do set %%j=%%i
echo 1.上传 2.下载

:xh2
set /p if1="："
if "%if1%" == "1" (goto mode1s)
if "%if1%" == "2" (goto mode2s)
echo 错误，请按任意键继续
pause>nul
goto xh2

:mode1s
start cmd /k scp -P %dk% %wj% %ipaddr%:%load%^&echo 按任意键退出^&pause^>nul^&exit
goto end

:mode2s
start cmd /k scp -P %dk% %ipaddr%:%load2% %load3%^&echo 按任意键退出^&pause^>nul^&exit
goto end

:x1
for /f "tokens=2-3 delims=;" %%i in (sshbat0.config) do set %%j=%%i
set /p ipaddr="修改为："
goto xend

:x2
for /f "tokens=2-3 delims=;" %%i in (sshbat0.config) do set %%j=%%i
set /p dk="修改为："
goto xend

:x3
for /f "tokens=2-3 delims=;" %%i in (sshbat0.config) do set %%j=%%i
set /p wj="修改为："
goto xend

:x4
for /f "tokens=2-3 delims=;" %%i in (sshbat0.config) do set %%j=%%i
set /p load="修改为："
goto xend

:x5
for /f "tokens=2-3 delims=;" %%i in (sshbat0.config) do set %%j=%%i
set /p load2="修改为："
goto xend

:x6
for /f "tokens=2-3 delims=;" %%i in (sshbat0.config) do set %%j=%%i
set /p load3="修改为："
goto xend

:xend
echo ;1.IP地址：;%ipaddr%;ipaddr;ipaddr>sshbat0.config
echo ;2.端口：;%dk%;dk;dk>>sshbat0.config
echo ;3.本机文件地址：;%wj%;wj;wj>>sshbat0.config
echo ;4.上传位置：;%load%;load;load>>sshbat0.config
echo ;5.下载文件地址：;%load2%;load2;load2>>sshbat0.config
echo ;6.下载路径：;%load3%;load3;load3>>sshbat0.config
for /f "tokens=1-2 delims=;" %%i in (sshbat0.config) do echo %%i%%j
goto www







