@echo off
REM************************************
REM* Nombre: IMC
REM* Autor: Nichole Louis
REM* Objetivo: Calcular el IMC de una persona
REM************************************

set /p peso=Ingrese su peso en k: 
set /p altura=Ingrese su altura en m: 
set /a imc=peso/(altura*altura)

echo Su IMC es %imc%