@echo off
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%userprofile%\Desktop\微信解除占用.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%~dp0\check.cmd"  >> CreateShortcut.vbs
echo oLink.Arguments = "" >> CreateShortcut.vbs 
var pathe = "%~dp0\check.cmd";
echo oLink.WorkingDirectory = "%~dp0" >> CreateShortcut.vbs
echo oLink.Description = "联系邮箱：it@fzsji.cn" >> CreateShortcut.vbs
echo oLink.IconLocation = "%~dp0\ico.ico" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs
exit