#!/bin/bash  

#################################################
#
# Nombre: compara.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Comparar dos numeros.
#
# Entradas: Dos numeros.
# Salidas: El mayor de los dos o sin son iguales.
#
# Historial:
#   09-02-2024: versión 1.0
#
#################################################

a=$1
b=$2

if [ "$a" = "" ]
then
	read -p "Por favor, introduzca el primer valor: " a
fi

if [ -z "$b" ]
then
	read -p "Por favor, introduzca el segundo valor: " b
fi

if [ "$a" -gt "$b" ]
then
	echo "$a es mayor que $b"
elif [ "$a" -lt "$b" ]
then
	echo "$b es mayor que $a"
else
	echo "Los dos números son iguales"
fi