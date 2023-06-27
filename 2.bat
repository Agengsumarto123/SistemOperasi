@echo off
title Setting My Komputer
:setting
color b5
cls
echo ---------------------------------------------------------------------------------------
echo 			SETTING KOMPUTER
echo ---------------------------------------------------------------------------------------
echo 			[1] Setting Keyboard
echo 			[2] Setting Language
echo				[3] Setting Date
echo 			[4] Add user
echo				[5] Sound Control
echo 			[6] Open Startup
echo 			[7] chrome
echo 			[88] kembali		[0] keluar
echo.
set /p "pilihanmenu=Masukkan Pilihan Menu: "
if %pilihanmenu%==1	 goto Keyboard
if %pilihanmenu%==2	 goto Language
if %pilihanmenu%==3	 goto Date
if %pilihanmenu%==4	 goto User
if %pilihanmenu%==5	 goto sound
if %pilihanmenu%==6	 goto startup
if %pilihanmenu%==7	 goto chrome
if %pilihanmenu%==88 goto back
if %pilihanmenu%==0	 goto exit

:keyboard
cls
start control keyboard
goto setting
pause
:Language
cls
start intl.cpl
goto setting
pause
:Date
cls
start timedate.cpl
goto setting 
:User
cls
start Netplwiz.exe
goto setting
pause
:Sound
cls
start SndVol.exe
goto setting
pause
:startup
start msconfig
goto setting
pause 
:chrome
"C:\Program Files\Google\Chrome\Application\chrome.exe"
goto setting
:back
goto setting
:exit
exit