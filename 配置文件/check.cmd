@echo off
chcp 65001
cls
setlocal enabledelayedexpansion
title check

echo 10>日志.txt
echo 10>>日志.txt
color a
echo 启动中...
:01
for /f "skip=1 delims=" %%i in (日志.txt) do (
set a=%%i
goto 02
)
:02
cls
echo 启动中
echo ------------------------------------
echo 当前进度：%a%%%
timeout /t 2 >nul
for /f "skip=1 delims=" %%i in (日志.txt) do (
set b=%%i
goto 03
)
:03
cls
color c
echo 重复启动
echo ------------------------------------
echo 错误代码【%b%】将退出...
timeout /t 1 >nul
if %a%==%b% goto 04
start ms.cmd
exit
:04
cls
echo 启动中...
echo 当前进度：%b%%%
start 微信解除只读.cmd
exit
