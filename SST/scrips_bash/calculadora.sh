#!/bin/bash  

#################################################
#
# Nombre: Calculadora.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Calculadora sencilla.
#
# Entradas: Dos valores.
# Salidas: operación elegida.
#
# Historial:
#   29-01-2024: versión 1.0
#
#################################################

a=$1
b=$2

if [ $# -ne 2 ]
then
	echo "Error, debe indicar dos valores"
	echo "SINTAXIS: $0 <valor1> <valor2>"
	exit
fi


PS3="Elija una de las opciones: "
select opcion in "Sumar" "Restar" "Multiplicar" "Dividir" "Salir"
do
	case $opcion in
		"Sumar") echo "El resultado de $a + $b = $(( a+b ))" ;;
		"Restar") echo "El resultado de $a - $b = $(( a-b ))" ;;
		"Multiplicar") echo "El resultado de $a * $b = $(( a*b ))" ;;
		"Dividir") echo "El resultado de $a / $b = $(( a/b ))" ;;
		"Salir") break ;;
		*) echo "ERROR, '$REPLY' no es una opción"
	esac
done