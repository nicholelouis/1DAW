#!/bin/bash  

#################################################
#
# Nombre: imc.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Calcular el IMC de una persona y clasificarlo segundo la tabla OMS.
#
# Entradas: Altura en centimetros y peso en KG.
# Salidas: IMC y condición.
#
# Historial:
#   09-02-2024: versión 1.0
#
#################################################

altura=$1
peso=$2


if [ "$#" -ne 2 ]; then
    echo "Error: Debes proporcionar exactamente dos argumentos."
    echo "Sintaxis: $0 <altura_en_cm> <peso_en_kg>"
    exit
fi

imc=$( (10000 * peso) / (altura * altura)  

if [ $imc -lt 16 ]; then
    condicion="Delgadez severa"
elif [ $imc -lt 17 ]; then
    condicion="Delgadez moderada"
elif [ $imc -lt 18.5 ]; then
    condicion="Delgadez leve"
elif [ $imc -lt 25 ]; then
    condicion="Normal"
elif [ $imc -lt 30 ]; then
    condicion="Preobesidad"
elif [ $imc -lt 35 ]; then
    condicion="Obesidad leve"
elif [ $imc -lt 40 ]; then
    condicion="Obesidad moderada"
else
    condicion="Obesidad severa"
fi

echo "IMC: $imc"
echo "Condición: $condicion"
