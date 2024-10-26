#!/bin/bash  

#################################################
#
# Nombre: grados_FH.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Convertir C a F.
#
# Entradas: celcius.
# Salidas: Mensaje.
#
# Historial:
#   29-01-2024: versión 1.0
#
#################################################

Celsius=$1

read -p "Indique los grados Celsius: " Celsius

Fahrenheit=$(echo "$Celsius * 9/5 + 32" | bc )
echo "${Celsius}ºC son ${Fahrenheit}ºF"