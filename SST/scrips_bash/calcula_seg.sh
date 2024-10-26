#!/bin/bash  

#################################################
#
# Nombre: Calcula_seg.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Calcular segundos.
#
# Entradas: Dias, horas, minutos y segundos.
# Salidas: Segundos.
#
# Historial:
#   29-01-2024: versión 1.0
#
#################################################

dias=$1
horas=$2
minutos=$3
segundos=$4

read -p "Indique los días: " dias
read -p "Indique las horas: " horas
read -p "Indique los minutos: " minutos
read -p "Indique los segundos: " segundos

tiempo_en_segundos=$((($dias * 86400) + ($horas * 3600) + ($minutos * 60) + $segundos))

echo "$dias días, $horas horas, $minutos minutos y $segundos segundos son $tiempo_en_segundos segundos"