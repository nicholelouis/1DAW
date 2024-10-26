#!/bin/bash  

#################################################
#
# Nombre: Resta.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Restar.
#
# Entradas: Dos numeros.
# Salidas: Resta.
#
# Historial:
#   29-01-2024: versión 1.0
#
#################################################

numero1=$1
numero2=$2

read -p "Indique el primer número: " numero1
read -p "Indique el segundo número: " numero2

resultado=$((numero1 - numero2))

echo "La resta de $numero1 y $numero2 es: $resultado"