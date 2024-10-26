#!/bin/bash  

#################################################
#
# Nombre: Info_ruta.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Ejecutar el script para cada elemento del sistema.
#
# Entradas: ninguna.
# Salidas: información de la rutas.
#
# Historial:
#   29-01-2024: versión 1.0
#
#################################################

mkdir abcd
mkdir efgh

elementos=$(find . -maxdepth 1 -type d -name '????*')

for elemento in $elementos; do
    ./ej09-info_ruta.sh "$elemento"
done