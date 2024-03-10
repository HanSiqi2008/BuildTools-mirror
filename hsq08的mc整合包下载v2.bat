::powershell -command ("wget -o ")

title Installing mcpacks
@echo off
:start
cls
echo Press 1 to install hsq08's basic pack
echo Press 2 to install hsq08's recommand pack
::echo Press 3 to install WarSkyGod's MCE pack
::echo Press 4 to install all
set t=no
set /p t=Key:
if %t%==1 goto packbasic
if %t%==2 goto recommandpack
if %t%==3 goto mcepack
if %t%==4 goto getall
goto start
:packbasic
powershell -command ("wget -o basic.bat https://github.ink/HanSiqi2008/something-mirror/raw/bat-install-mc/basic.bat")
basic.bat
pause
:recommandpack
powershell -command ("wget -o basic.bat https://github.ink/HanSiqi2008/something-mirror/raw/bat-install-mc/basic.bat")
powershell -command ("wget -o recommand.bat https://github.ink/HanSiqi2008/something-mirror/raw/bat-install-mc/recommand.bat")
basic.bat
pause
:mcepack
echo will add in the future
pause
:getall
echo will add in the future
pause
echo ¸ü¶à