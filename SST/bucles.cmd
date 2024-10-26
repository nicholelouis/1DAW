@echo off

REM ***************************
REM * NOMBRE: bucles.cmd
REM * AUTOR: Antonio Dorta <adorlor@gobiernodecanarias.org>
REM *
REM * OBJETIVO: ejemplos de bucles
REM *
REM * VERSIÓN: 2024-01-23 
REM *
REM ***************************
title Ejemplos de bucles

REM VARIABLES DE ITERACIÓN EN LOS BUCLES FOR EN BATH
REM 1) Una única letra - CASE SENSITIVE
REM 2) En la línea de comandos se usa %i, pero en script, se debe usar %%i

REM Bucle simple indicando valores (se pueden separar por comas y/o espacios)
echo Iterar por valores indicados:
for %%i in (1, 56,  765 34 23 56 casa coche) do (
  echo Los valores indicados son %%i
)
echo.
pause

REM Bucle por RANGO (usar /L)
echo Iterar por rango:
set n=21
REM           ini step  end
for /L  %%i in (1  2  %n%) do (
  echo Los valores con rango son %%i
)
echo.
pause

echo Iterar por ficheros:
REM Debo indicar el nombre del fichero o los COMODINES: *  *.???   a*.cmd  
for %%f in (b*.???) do (
  echo Los ficheros son %%f
)
echo.
pause

echo Iterar por directorios:
REM Debo indicar /D y el nombre del directorio o los COMODINES: *  b*d* 
for /D %%d in (*) do (
  echo Los directorios son %%d
)
echo.
pause


echo Iterar de forma recursiva:
REM Debo indicar /R y el nombre del elemento los COMODINES: *  *.???   a*.cmd  
for /R %%e in (*) do (
  echo Los elementos son %%e
)
echo.
pause

REM la opción /F funciona con tokens y delimitadores (similar al cut de bash)

REM EJERCICIO 
REM Calcular la media de los primeros N números

set /p num=Introduce el numero maximo: 
echo Calculando la media entre 1 y %num%

set media=0
setlocal enabledelayedexpansion
for /L %%i in (1 1 %num%) do (
  set /a media+=%%i
  echo En la iteracion %%i la media vale %media% o !media!
)
set /a media/=num
echo La media es %media%
REM endlocal




