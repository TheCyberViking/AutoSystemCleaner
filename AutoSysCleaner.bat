@echo off

title Auto System Clearer V1 ~Educational/Personal~ © Deano (copyright 2018)

echo Wellcome to Auto System Clearer V1
echo.
echo This is going to Remove all System created files by user Such as Temp Data
echo.
echo Are you sure you would like to continue
echo.
pause
cls

echo REGEDIT74 > %temp%\showhidden.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced] >> %temp%\showhidden.reg
echo "Hidden"=dword:00000001 >> %temp%\showhidden.reg
echo "HideFileExt"=dword:00000000 >> %temp%\showhidden.reg
echo "ShowSuperHidden"=dword:00000001 >> %temp%\showhidden.reg
regedit /r %temp%\showhidden.reg
regedit /s %temp%\showhidden.reg

echo REGEDIT4 > c:\clean.reg
echo [-HKEY_LOCAL_MACHINE\SOFTWARE\CLASSES\Software\Microsoft\Windows\CurrentVersion\Run] >> c:\clean.reg
echo [-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run] >> c:\clean.reg
echo [-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnceEx] >> c:\clean.reg
echo [-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce] >> c:\clean.reg
echo [-HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Run] >> c:\clean.reg
echo [-HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Runonce] >> c:\clean.reg
echo [-HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run] >> c:\clean.reg
echo [-HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce] >> c:\clean.reg
echo [-HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnceEx] >> c:\clean.reg
echo [-HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServicesOnce] >> c:\clean.reg
echo [-HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Runonce] >> c:\clean.reg

echo Auto Cleaning in progress, you may want to get a cookie... 

:clean removing temporay files on Windows XP
FOR /F "delims==" %%A IN ('DIR/B "C:\Documents and Settings"') DO rd /s/q "C:\Documents and Settings\%%A\Local Settings\Temporary Internet Files"
FOR /F "delims==" %%A IN ('DIR/B "C:\Documents and Settings"') DO rd /s/q "C:\Documents and Settings\%%A\Local Settings\History"
FOR /F "delims==" %%A IN ('DIR/B "C:\Documents and Settings"') DO rd /s/q "C:\Documents and Settings\%%A\Local Settings\Temp"
FOR /F "delims==" %%A IN ('DIR/B "C:\Documents and Settings"') DO rd /s/q "C:\Documents and Settings\%%A\Cookies"
FOR /F "delims==" %%A IN ('DIR/B "C:\Documents and Settings"') DO rd /s/q "C:\Documents and Settings\%%A\Recent"
FOR /F "delims==" %%A IN ('DIR/B "C:\Documents and Settings"') DO rd /s/q "C:\Documents and Settings\%%A\Local Settings\Temporary Internet Files"

:create creating replacment files
FOR /F "delims==" %%A IN ('DIR/B "C:\Documents and Settings"') DO mkdir "C:\Documents and Settings\%%A\Local Settings\Temporary Internet Files"
FOR /F "delims==" %%A IN ('DIR/B "C:\Documents and Settings"') DO mkdir "C:\Documents and Settings\%%A\Local Settings\History"
FOR /F "delims==" %%A IN ('DIR/B "C:\Documents and Settings"') DO mkdir"C:\Documents and Settings\%%A\Local Settings\Temp"
FOR /F "delims==" %%A IN ('DIR/B "C:\Documents and Settings"') DO mkdir "C:\Documents and Settings\%%A\Cookies"
FOR /F "delims==" %%A IN ('DIR/B "C:\Documents and Settings"') DO mkdir "C:\Documents and Settings\%%A\Recent"
FOR /F "delims==" %%A IN ('DIR/B "C:\Documents and Settings"') DO mkdir "C:\Documents and Settings\%%A\Local Settings\Temporary Internet Files"

:clean removing temporay files on Windows Vista/7
FOR /F "delims==" %%A IN ('DIR/B "C:\Users"') DO rd /s/q "C:\Users\%%A\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\*.*"
FOR /F "delims==" %%A IN ('DIR/B "C:\Users"') DO rd /s/q "C:\Users\%%A\AppData\Local\History\*.*"
FOR /F "delims==" %%A IN ('DIR/B "C:\Users"') DO rd /s/q "C:\Users\%%A\AppData\Local\Temp\*.*"
FOR /F "delims==" %%A IN ('DIR/B "C:\Users"') DO rd /s/q "C:\Users\%%A\AppData\Roaming\Microsoft\Windows\Cookies\*.*"
FOR /F "delims==" %%A IN ('DIR/B "C:\Users"') DO rd /s/q "C:\Users\%%A\AppData\Roaming\Microsoft\Windows\Recent\*.*"
FOR /F "delims==" %%A IN ('DIR/B "C:\Users"') DO rd /s/q "C:\Users\%%A\Local Settings\Temporary Internet Files\*.*"

:create creating replacment files
FOR /F "delims==" %%A IN ('DIR/B "C:\Users"') DO mkdir "C:\Users\%%A\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5"
FOR /F "delims==" %%A IN ('DIR/B "C:\Users"') DO mkdir "C:\Users\%%A\AppData\Local\History"
FOR /F "delims==" %%A IN ('DIR/B "C:\Users"') DO mkdir "C:\Users\%%A\AppData\Local\Temp"
FOR /F "delims==" %%A IN ('DIR/B "C:\Users"') DO mkdir "C:\Users\%%A\AppData\Roaming\Microsoft\Windows\Cookies"
FOR /F "delims==" %%A IN ('DIR/B "C:\Users"') DO mkdir "C:\Users\%%A\AppData\Roaming\Microsoft\Windows\Recent"
FOR /F "delims==" %%A IN ('DIR/B "C:\Users"') DO mkdir "C:\Users\%%A\Local Settings\Temporary Internet Files"

cls

echo All Done :D 
echo.
echo Thank You for using my Tool 
echo.
echo if you like this tool dont forget to Thank Deano :D
pause
