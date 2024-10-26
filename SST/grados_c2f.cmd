@echo off
REM************************************
REM* Nombre: Convertidor
REM* Autor: Nichole Louis
REM* Objetivo: Convertir de c a f
REM************************************

set /p celsius=Ingrese la temperatura en grados Celsius: 
set /a f=(celsius*9/5)+32

echo La temperatura en grados fahrenheit es %f%