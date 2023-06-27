@echo off
title Latihan perhitungan

rem setting variabel
set /p r=Masukkan jari-jari:
set /p a=Masukkan nilai a:
set /p t=Masukkan nilai t:
set /p b=Masukkan nilai b:

rem hitung
set /a hitung=(3*(r*r)+(0.5*a*t))/(a-b)
set /a hitung1=%hitung%+(30/5)

rem hasil
echo --------------------------------------------
echo hasil perhitungan 
echo --------------------------------------------

echo Nilai r :%r%
echo Nilai a :%a%
echo Nilai t :%t%
echo Nilai b :%b%
echo =((3*r**2)+(1/2*a*t+30/5))/(a-b)
echo =((3*r**2)+(1/2*a*t+30/5))
echo =(a-b)
echo =%hitung1%
pause

