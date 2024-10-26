@echo off
REM************************************
REM* Nombre: Suma
REM* Autor: Nichole Louis
REM* Objetivo: Sumar dos valores
REM************************************

set /p num1=Ingrese un valor:
set /p num2=Ingrese otro valor:
set /a result=%num1%+%num2%

echo la suma de %num1% y %num2% es %result%