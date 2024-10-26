@echo off
REM************************************
REM* Nombre: user
REM* Autor: Nichole Louis
REM* Objetivo: crear usuario
REM************************************

set /p name=Ingrese su nombre:
set /p surname=Ingrese su apellido:
set user=%1
set id=%random%

echo Tu nombre es %name% %surname%
echo Tu user es %user%
echo Tu nuevo id es %id%