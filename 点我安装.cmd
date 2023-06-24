@echo off
chcp 65001
cls
setlocal enabledelayedexpansion
title 安装引导
if not exist "%~dp0/配置文件" goto 01

:02
cls
type 配置文件\界面.txt
echo ---------------------------------
set /p a=请输入你的微信路径：
echo 自动识别文件 > 配置文件\path.txt
echo "%a%">>配置文件\path.txt
set b=%a:~0,1%
if %b%==8 goto 03
cls
goto 04

:04
cls
echo 你确定吗？
echo ----------------------
echo 你输入的路径是：【%a%】
echo ----------------------
set /p a=输入【8】确认或按回车键退出重输入：
if %a%==8 goto 05
goto 02

:05
echo 系统启动>配置文件\日期识别文件.txt
echo %date% %time%>>配置文件\日期识别文件.txt
cls 
echo 写入成功！将继续...
goto 010

:010
for /f "skip=1 delims=" %%i in (配置文件\日期识别文件.txt) do (
set z=%%i 
goto 06
)

:06
set year=%z:~3,4%
set mou=%z:~8,2%

:07
cls
echo 请帮我确认日期
echo ------------------------------
echo 电脑日期是：%year%年%mou%月
echo ------------------------------
set /p a=输入【8】修改日期或输入【0】确认：
if %a%==8 goto 08
goto 011

:011
echo 日期文件>配置文件\date.txt
echo %year%>>配置文件\date.txt
echo %mou%>>配置文件\date.txt
echo auto>>配置文件\date.txt
goto 015

:015
start %~dp0/配置文件/图标.cmd
color c
cls
echo 安装完成！
echo ------------------------------
echo 请从桌面打开本程序即可运行~
echo ------------------------------
echo 按任意键退出...
pause >nul
exit

:014
start %~dp0/配置文件/微信解除只读.cmd
mshta vbscript:msgbox("程序已经成功",64,"提示")(window.close)
exit

:012

goto 013

:08
cls
echo 请帮我确认日期
echo ------------------------------
set /p year=请输入今年是那一年：
echo 输入成功！
cls
goto 09

:09
echo 请帮我确认日期
echo ------------------------------
set /p mou=请输入括号内的月份[01 02 03 04 05 06 07 08 09 10 11 12]：
echo 输入成功！

if %mou% ==01 goto 016
if %mou% ==02 goto 016
if %mou% ==03 goto 016
if %mou% ==04 goto 016
if %mou% ==05 goto 016
if %mou% ==06 goto 016
if %mou% ==07 goto 016
if %mou% ==08 goto 016
if %mou% ==09 goto 016
if %mou% ==10 goto 016
if %mou% ==11 goto 016
if %mou% ==12 goto 016
color c
cls
echo 提示：请输入括号内的数字
goto 09


:016
color c
cls
echo 请帮我确认日期
echo ------------------------------
echo 电脑日期是：%year%年%mou%月
echo.
echo 警告：当前使用手动模式；每月1日需要重新打开本软件进行日期更新
echo.
echo 否则程序将无法正常工作！！
echo ------------------------------
set /p a=输入【8】继续修改日期或输入【0】确认：
if %a%==8 goto 08
goto 017

:017
echo 日期文件>配置文件\date.txt
echo %year%>>配置文件\date.txt
echo %mou%>>配置文件\date.txt
echo done>>配置文件\date.txt
goto 015


:01
cls
echo 错误：404
echo ----------------------------------
echo 文件错误丢失
echo 文件夹【%~dp0配置文件】不存在
echo 可能原因：文件解压不完整；文件丢失；请检查文件
echo ----------------------------------
echo 即将退出...
timeout /t 10 >nul

:03
cls
echo 文件已打开，将自动跳转...
"%~dp0/配置文件/帮助.png"
timeout /t 3 >nul
goto 02