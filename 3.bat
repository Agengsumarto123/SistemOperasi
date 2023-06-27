@echo off
title latihan menu makanan
:begin
cls
echo =================================
echo 	Pilihan Menu
echo =================================
echo 1. paket 1 (ayam + es teh)
echo 2. paket 2 (ayam bakar + teh anget)
echo 3. paket 3 (ayam goreng krispi)
echo 4. paket premium (gurame + cumi)
echo 5. paket gold (gurame + seafood)
echo 0. exit
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

:0
exit