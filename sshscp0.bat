@echo off
echo SSHscp0 current version: 2.21.1 lastest updated: 2023.5.21
echo By Czy_420b (Byx)
dir|find "sshbat0.config">nul
if "%errorlevel%" == "1" (goto level1) else (goto level2)

:level1
set /p ipaddr="IP��ַ�����������˻�����"
set /p dk="�˿ڣ�"
echo 1.�ϴ� 2.����

:xh
set /p if1="��"
if "%if1%" == "1" (goto mode1)
if "%if1%" == "2" (goto mode2)
echo �����밴���������
pause>nul
goto xh

:mode1
echo �ļ���Ҫ��ǰ���-r 
set /p wj="�����ļ����������룩��"
set /p load="�ϴ�·����"
start cmd /k scp -P %dk% %wj% %ipaddr%:%load%^&echo ��������˳�^&pause^>nul^&exit
set load2=none
set load3=none
goto end

:mode2
echo �ļ���Ҫ��ǰ���-r 
set /p load2="�ļ�·����"
set /p load3="����·��������·�������·������"
start cmd /k scp -P %dk% %ipaddr%:%load2% %load3%^&echo ��������˳�^&pause^>nul^&exit
set load=none
set wj=none
goto end

:end
echo ;1.IP��ַ��;%ipaddr%;ipaddr;ipaddr>sshbat0.config
echo ;2.�˿ڣ�;%dk%;dk;dk>>sshbat0.config
echo ;3.�����ļ���ַ��;%wj%;wj;wj>>sshbat0.config
echo ;4.�ϴ�λ�ã�;%load%;load;load>>sshbat0.config
echo ;5.�����ļ���ַ��;%load2%;load2;load2>>sshbat0.config
echo ;6.����·����;%load3%;load3;load3>>sshbat0.config
exit

::level2��ģʽ2����⵽�浵�ļ�
:level2
echo ����ʹ���������ã�������ѡ���޸Ļ������
for /f "tokens=1-2 delims=;" %%i in (sshbat0.config) do echo %%i%%j
echo ����h��ȡ����

:www
set /p wtf="��"
if "%wtf%" == "exit" (exit)
if "%wtf%" == "h" (echo usage:^<exit^/y^/n^/h^/[number]^>&&echo ����y��ȫ����������n��ȫ������&&echo �������ֲ��س����޸�&&goto www)
if "%wtf%" == "y" (goto mode3)
if "%wtf%" == "n" (goto level1)
if "%wtf%" == "1" (goto x1)
if "%wtf%" == "2" (goto x2)
if "%wtf%" == "3" (goto x3)
if "%wtf%" == "4" (goto x4)
if "%wtf%" == "5" (goto x5)
if "%wtf%" == "6" (goto x6)
echo �����밴���������
pause>nul
goto www

:mode3
for /f "tokens=2-3 delims=;" %%i in (sshbat0.config) do set %%j=%%i
echo 1.�ϴ� 2.����

:xh2
set /p if1="��"
if "%if1%" == "1" (goto mode1s)
if "%if1%" == "2" (goto mode2s)
echo �����밴���������
pause>nul
goto xh2

:mode1s
start cmd /k scp -P %dk% %wj% %ipaddr%:%load%^&echo ��������˳�^&pause^>nul^&exit
goto end

:mode2s
start cmd /k scp -P %dk% %ipaddr%:%load2% %load3%^&echo ��������˳�^&pause^>nul^&exit
goto end

:x1
for /f "tokens=2-3 delims=;" %%i in (sshbat0.config) do set %%j=%%i
set /p ipaddr="�޸�Ϊ��"
goto xend

:x2
for /f "tokens=2-3 delims=;" %%i in (sshbat0.config) do set %%j=%%i
set /p dk="�޸�Ϊ��"
goto xend

:x3
for /f "tokens=2-3 delims=;" %%i in (sshbat0.config) do set %%j=%%i
set /p wj="�޸�Ϊ��"
goto xend

:x4
for /f "tokens=2-3 delims=;" %%i in (sshbat0.config) do set %%j=%%i
set /p load="�޸�Ϊ��"
goto xend

:x5
for /f "tokens=2-3 delims=;" %%i in (sshbat0.config) do set %%j=%%i
set /p load2="�޸�Ϊ��"
goto xend

:x6
for /f "tokens=2-3 delims=;" %%i in (sshbat0.config) do set %%j=%%i
set /p load3="�޸�Ϊ��"
goto xend

:xend
echo ;1.IP��ַ��;%ipaddr%;ipaddr;ipaddr>sshbat0.config
echo ;2.�˿ڣ�;%dk%;dk;dk>>sshbat0.config
echo ;3.�����ļ���ַ��;%wj%;wj;wj>>sshbat0.config
echo ;4.�ϴ�λ�ã�;%load%;load;load>>sshbat0.config
echo ;5.�����ļ���ַ��;%load2%;load2;load2>>sshbat0.config
echo ;6.����·����;%load3%;load3;load3>>sshbat0.config
for /f "tokens=1-2 delims=;" %%i in (sshbat0.config) do echo %%i%%j
goto www







