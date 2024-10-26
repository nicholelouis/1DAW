#!/bin/bash  

#################################################
#
# Nombre: rectangulo.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Imprimir rectángulo y calcular el área.
#
# Entradas: Altura y base.
# Salidas: rectangulo y su área.
#
# Historial:
#   09-02-2024: versión 1.0
#
#################################################

base=$1
altura=$2

if [ $# -eq 0 ]; then
    base=7
    altura=4
elif [ $# -eq 1 ]; then
    base=$1
    altura=4
else
    base=$1
    altura=$2
fi

if ! [[ $base =~ ^[1-9][0-9]*$ ]] || ! [[ $altura =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: La base y altura deben ser enteros positivos."
    exit 1
fi

imprimir_rectangulo() {
    for (( i=1; i<=altura; i++ )); do
        for (( j=1; j<=base; j++ )); do
            echo -n "*"
        done
        echo
    done
}

area=$((base * altura))

echo "Rectángulo con base=$base y altura=$altura:"
imprimir_rectangulo

echo "Área del rectángulo: $area"