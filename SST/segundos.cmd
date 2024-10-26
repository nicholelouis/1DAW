@echo off
REM************************************
REM* Nombre: Convertidor de seg
REM* Autor: Nichole Louis
REM* Objetivo: pasar de seg a h, m y s
REM************************************

set /p seg=Ingrese los segundos: 
set /a horas=seg/3600
set /a minutos=(seg%3600)/60
set /a seg=seg%%60

echo %seg% serian %horas% horas, %minutos% minutos y %seg% segundos