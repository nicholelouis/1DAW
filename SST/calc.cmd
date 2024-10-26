@echo off
REM************************************
REM* Nombre: Menú
REM* Autor: Nichole Louis
REM* Objetivo: Depende de la opción
REM************************************

set a=%1
set b=%2

if "%a%" == "" (
  set /p a=Introduzca el primer número:
)
if NOT DEFINED b (
  set /p b=Introduzca el segundo número:
)

echo Menú
echo 1. Sumar
echo 2. Restar
echo 3. Multiplicar
echo 4. Dividir

choice /C 1234 /M "Elige una opción: "

if %errorlevel% EQU 1 set /a result=a+b
if %errorlevel% EQU 2 set /a result=a-b
if %errorlevel% EQU 3 set /a result=a*b
if %errorlevel% EQU 4 set /a result=a/b

echo El resultado es %result%
