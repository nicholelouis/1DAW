#!/bin/bash  

#################################################
#
# Nombre: Pares.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Mostrar el cuadrado de unos numeros dados.
#
# Entradas: Dos numeros por argumento o por teclado.
# Salidas: el cuadrado de los numeros pares.
#
# Historial:
#   09-02-2024: versión 1.0
#
#################################################

calcular_cuadrado() {
    echo $((numero * numero))
}

mostrar_cuadrado() {
    echo "El cuadrado del número par $numero es $(calcular_cuadrado)"
}

if [ $# -eq 2 ] then
    num1=$1
    num2=$2
else
    read -p "Introduzca el primer número: " num1
    read -p "Introduzca el segundo número: " num2
fi

if [ $num1 -lt $num2 ] then
    menor=$num1
    mayor=$num2
else
    menor=$num2
    mayor=$num1
fi

echo "Cuadrados pares entre $mayor y $menor:"

for (( numero=$mayor; numero>=$menor; numero-=2 )); do
    if [ $((numero % 2)) -eq 0 ]; then
        mostrar_cuadrado
    fi
done