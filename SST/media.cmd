@echo off
REM************************************
REM* Nombre: Media
REM* Autor: Nichole Louis
REM* Objetivo: Encontrar la media
REM************************************

set /p num=Introduce un número: 

set media=0
setlocal enabledelayedexpansion
for /L %%i in (1 1 %num%) do (
  set /a media+=%%i
  echo En la iteración %%i la media vale %media% o !media!
)
set /a media/=num
echo La media es %media%
REM endlocal