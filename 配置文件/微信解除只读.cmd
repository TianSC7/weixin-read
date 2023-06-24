@echo off
chcp 65001
cls
setlocal enabledelayedexpansion
title 微信解除占用-win11版
if not exist "path.txt" goto 01
set p=1

:004
echo ces>日志.txt
echo end>>日志.txt
for /f "skip=3 delims=" %%i in (date.txt) do (
set a03=%%i
goto 005
)
:005
if %a03%==done goto 001
goto 00

:001
for /f "skip=1 delims=" %%i in (date.txt) do (
set a01=%%i
goto 002
)
:002
set year=%a01%

:003
for /f "skip=2 delims=" %%i in (date.txt) do (
set a02=%%i
goto 0002
)
:0002
set mou=%a02%

:00
for /f "skip=1 delims=" %%i in (path.txt) do (
set a=%%i
goto 02
)

:02
set b=/AD /b /o-d
set b1=/A-D /b /o-d
if %a03%==done goto 03
goto 05

:03
echo echo off>核心文件.cmd
echo chcp 65001>>核心文件.cmd
echo set p=9>>核心文件.cmd
echo :00>>核心文件.cmd
echo dir %a%\FileStorage\File\%year%-%mou% %b1%^>^menu.txt >>核心文件.cmd
echo echo end^>^>menu.txt>>核心文件.cmd
echo set q=1 >>核心文件.cmd
echo cls>>核心文件.cmd
echo :01>>核心文件.cmd
echo for /f "skip=%%q%% delims=" %%%%i in (menu.txt) do (>>核心文件.cmd
echo set w=%%%%i>>核心文件.cmd
echo goto 03>>核心文件.cmd
echo )>>核心文件.cmd
echo :03>>核心文件.cmd
echo set e="%%w%%">>核心文件.cmd
echo set r=%%w:~-4%%>>核心文件.cmd
echo echo %%w%%>>核心文件.cmd
echo if %%r%%==end goto 04>>核心文件.cmd
echo attrib -s -r %a%\FileStorage\File\%year%^-^%mou%\%%e%%>>核心文件.cmd
echo set /a q=%%q%%+1>>核心文件.cmd
echo goto 01>>核心文件.cmd
echo :04>>核心文件.cmd
echo set /a p=%%p%%+1 >>核心文件.cmd
echo echo %%p%%^>^日志.txt>>核心文件.cmd
echo echo %%p%%^>^>日志.txt>>核心文件.cmd
echo if %%p%%==10 goto 05>>核心文件.cmd
echo goto 010>>核心文件.cmd
echo :05>>核心文件.cmd
echo cls>>核心文件.cmd
type hold.txt>>核心文件.cmd
echo start ma.cmd>>核心文件.cmd
echo goto 010>>核心文件.cmd
goto 06

:05
echo echo off>核心文件.cmd
echo chcp 65001>>核心文件.cmd
echo set p=9 >>核心文件.cmd
echo :010>>核心文件.cmd
echo echo 系统启动^>^日期识别文件.txt>>核心文件.cmd
echo echo %%date%% %%time%%^>^>日期识别文件.txt>>核心文件.cmd
echo for /f "skip=1 delims=" %%%%i in (日期识别文件.txt) do (>>核心文件.cmd
echo set z=%%%%i>>核心文件.cmd
echo goto 06>>核心文件.cmd
echo )>>核心文件.cmd
echo :06>>核心文件.cmd
echo set year=%%z:~3,4%%>>核心文件.cmd
echo set mou=%%z:~8,2%%>>核心文件.cmd
echo :00>>核心文件.cmd
echo echo begin^>^menu.txt>>核心文件.cmd
echo dir %a%\FileStorage\File\%%year%%-%%mou%% %b1%^>^>menu.txt >>核心文件.cmd
echo echo end^>^>menu.txt>>核心文件.cmd
echo set q=1 >>核心文件.cmd
echo cls>>核心文件.cmd
echo :01>>核心文件.cmd
echo for /f "skip=%%q%% delims=" %%%%i in (menu.txt) do (>>核心文件.cmd
echo set w=%%%%i>>核心文件.cmd
echo goto 03>>核心文件.cmd
echo )>>核心文件.cmd
echo :03>>核心文件.cmd
echo set e="%%w%%">>核心文件.cmd
echo set r=%%w:~-4%%>>核心文件.cmd
echo echo %%w%%>>核心文件.cmd
echo if %%r%%==end goto 04>>核心文件.cmd
echo attrib -s -r %a%\FileStorage\File\%%year%%^-^%%mou%%\%%e%%>>核心文件.cmd
echo set /a q=%%q%%+1>>核心文件.cmd
echo goto 01>>核心文件.cmd
echo :04>>核心文件.cmd
echo set /a p=%%p%%+1 >>核心文件.cmd
echo echo %%p%%^>^日志.txt>>核心文件.cmd
echo echo %%p%%^>^>日志.txt>>核心文件.cmd
echo if %%p%%==10 goto 05>>核心文件.cmd
echo goto 010>>核心文件.cmd
echo :05>>核心文件.cmd
echo cls>>核心文件.cmd
type hold.txt>>核心文件.cmd
echo start ma.cmd>>核心文件.cmd
echo goto 010>>核心文件.cmd
goto 06

:06
start 核心文件.cmd
exit
for /f "skip=1 delims=" %%i in (日志.txt) do (
set u=%%i
goto 07
)
:07
set h=%u%
echo %h%
pause

:01
cls
echo 错误：404
echo ----------------------------------
echo 文件状态错误
echo.
echo 文件【path.txt】不存在
echo.
echo 可能原因：未运行引导文件而直接打开本应用；请运行【引导程序】
echo ----------------------------------
echo 按任意键退出...
pause >nul