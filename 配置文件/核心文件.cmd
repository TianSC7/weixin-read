echo off
chcp 65001
set p=9 
:010
echo 系统启动>日期识别文件.txt
echo %date% %time%>>日期识别文件.txt
for /f "skip=1 delims=" %%i in (日期识别文件.txt) do (
set z=%%i
goto 06
)
:06
set year=%z:~3,4%
set mou=%z:~8,2%
:00
echo begin>menu.txt
dir "C:\Users\TINA\Documents\WeChat Files\wxid_5r178g22w0ua22"\FileStorage\File\%year%-%mou% /A-D /b /o-d>>menu.txt 
echo end>>menu.txt
set q=1 
cls
:01
for /f "skip=%q% delims=" %%i in (menu.txt) do (
set w=%%i
goto 03
)
:03
set e="%w%"
set r=%w:~-4%
echo %w%
if %r%==end goto 04
attrib -s -r "C:\Users\TINA\Documents\WeChat Files\wxid_5r178g22w0ua22"\FileStorage\File\%year%-%mou%\%e%
set /a q=%q%+1
goto 01
:04
set /a p=%p%+1 
echo %p%>日志.txt
echo %p%>>日志.txt
if %p%==10 goto 05
goto 010
:05
cls
if "%1"=="hide" goto CmdBegin
start mshta vbscript:createobject("wscript.shell").run("""%~0"" hide",0)(window.close)&&exit
:CmdBegin
start ma.cmd
goto 010
