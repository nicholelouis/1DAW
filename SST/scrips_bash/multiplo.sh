#!/bin/bash  

#################################################
#
# Nombre: multiplo.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Si los numeros son multiplos de un valor dado.
#
# Entradas: argumentos con los numeros y valor.
# Salidas: indica si el numero es multiplo o no.
#
# Historial:
#   09-02-2024: versión 1.0
#
#################################################

numeros=("$@")

read -p "Introduzca un valor: " valor

echo "Analizando si los números ${numeros[*]} son o no múltiplos de $valor"
for numero in "${numeros[@]}"; do
    if [ $((numero % valor)) -eq 0 ]; then
        echo "El número $numero si es múltiplo de $valor"
    else
        echo "El número $numero no es múltiplo de $valor"
    fi
done