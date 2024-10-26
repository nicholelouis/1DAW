#!/bin/bash  

#################################################
#
# Nombre: Cambio.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Calcular el cambio.
#
# Entradas: precio y dinero.
# Salidas: calculo del cambio con billetes.
#
# Historial:
#   09-02-2024: versión 1.0
#
#################################################

if [ $# -eq 0 ] 
then
    echo "Error: Debes proporcionar el precio del artículo como argumento."
    exit
fi

precio_articulo=$1

if [ -z "$2" ]
 then
    read -p "Introduzca el dinero entregado: " dinero_entregado
else
    dinero_entregado=$2
fi

calcular_cambio() {
    dinero_entregado=$1
    cambio=$((dinero_entregado - precio_articulo))

    if [ $cambio -lt 0 ] then
        echo "El cliente no entregó suficiente dinero. Faltan $(($cambio * -1)) euros."
        exit
    elif [ $cambio -eq 0 ] then
        echo "El cliente entregó la cantidad exacta. No hay cambio."
        exit
    else
        echo "Cambio a devolver: $cambio euros"

    fi
    
}

calcular_cambio "$dinero_entregado"