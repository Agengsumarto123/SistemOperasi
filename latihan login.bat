@echo off
color 7
:login
cls
echo ******************************************************
echo                    LOGIN USER
echo ******************************************************
echo .
echo ------------------------------------------------------
set /p name=        User     :
set /p password=    Password :
if "%name%" == "ageng" (
if "%password%" == "123" (
    goto begin
	) else (
	echo password salah	
	pause
	goto login  
)	
	) else (
	echo username salah
	pause
	goto login
)

:begin
cls
echo =======================================================
echo 						MENU   
echo =======================================================
echo 	[1] Menu setting
echo 	[2] Menu Makanan
echo 	[3] exit
echo =======================================================
set /p pilihan=Pilih menu yang anda inginkan :

		if %pilihan% == 1 (
			goto setting
		) else if %pilihan% == 2 (
			goto makanan
		) else if %pilihan% == 3 (
			goto exit
		)

	:setting 
	cls
	echo ========================================================
	echo 				Menu setting 
	echo ========================================================
	echo [1] Setting Keyboard
	echo [2] Setting Language
	echo [3] Setting Date
	echo [4] Add user
	echo [5] Sound Control
	echo [6] Open Startup
	echo [7] chrome
	echo [88] kembali		[0] keluar
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
			goto begin
			:exit
			exit


		:makanan
		cls
		echo =================================
		echo 	Pilihan Menu
		echo =================================
		echo [1] paket 1 (ayam + es teh)
		echo [2] paket 2 (ayam bakar + teh anget)
		echo [3] paket 3 (ayam goreng krispi)
		echo [4] paket premium (gurame + cumi)
		echo [5] paket gold (gurame + seafood)
		echo [88] kembali
		echo [0] exit
		set /p pilihan=Pilih Menu Masakan :

				if %pilihan% == 1 (
					goto 1
				) else if %pilihan% == 2 (
					goto 2
				) else if %pilihan% == 3 (
					goto 3
				) else if %pilihan% == 4 (
					goto 4
				) else if %pilihan% == 5 (
					goto 5
				) else if %pilihan%	== 88 (
					goto 88
				) else if %pilihan% == 0 (
					goto 0
				)

				:1
				cls
				echo =========================================================
				echo nama paket	= paket 1
				echo harga 		= Rp 50.000
				echo keuntungan	= nasi + air putih + kurma
				echo ========================================================= 
				pause
				goto begin

				:2
				cls
				echo =========================================================
				echo nama paket	= paket 2
				echo harga 		= Rp 75.000
				echo keuntungan	= nasi + air putih + kurma
				echo ========================================================= 
				pause
				goto begin

				:3
				cls
				echo =========================================================
				echo nama paket	= paket 3
				echo harga 		= Rp 80.000
				echo keuntungan	= nasi + air putih + kurma
				echo ========================================================= 
				pause
				goto begin

				:4
				cls
				echo =========================================================
				echo nama paket	= paket 4
				echo harga 		= Rp 125.000
				echo keuntungan	= nasi + air putih + kurma
				echo ========================================================= 
				pause
				goto begin

				:5
				cls
				echo =========================================================
				echo nama paket	= paket 5
				echo harga 		= Rp 250.000
				echo keuntungan	= nasi + air putih + kurma
				echo ========================================================= 
				pause
				goto begin

				:88
				goto begin

				:0
				exit
				
:exit
exit
