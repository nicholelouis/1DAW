@echo off

REM ***************************
REM * NOMBRE: menu_choice.bat
REM * AUTOR: Antonio Dorta <adorlor@gobiernodecanarias.org>
REM *
REM * OBJETIVO: Ejemplo de choice
REM *
REM * VERSIÓN: 2024-01-23 
REM *
REM ***************************

title Ejemplo de menu

REM Capturar los argumentos
set a=%1
set b=%2


if "%a%" == "" (
  set /p a=Introduzca el primer dato:
)
if NOT DEFINED b (
  set /p b=Introduzca el segundo dato:
)


cls
echo.
echo ***********
echo * M E N U *
echo ***********
echo.
echo Los datos son a=%a% y b=%b%
echo.
echo 1. Sumar
echo 2. Restar
echo 3. Multiplicar
echo 4. Dividir

choice /C 1234 /M "Elige entre una de las opciones "
REM choice devuelve como código de error, la opción pulsada
REM el codigo de error se guarda en la variable ERRORLEVEL

if %errorlevel% EQU 1 set /a res=a+b
if %errorlevel% EQU 2 set /a res=a-b
if %errorlevel% EQU 3 set /a res=a*b
if %errorlevel% EQU 4 set /a res=a/b

echo El resultado es %res%


 

