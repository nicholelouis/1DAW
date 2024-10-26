#!/bin/bash  

#################################################
#
# Nombre: cslcula_tiempo.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Mostrar el cuadrado de unos numeros dados.
#
# Entradas: tansformar segundos a minutos, horas, días.
# Salidas: Segundos convertidos a minutos, horas y o días.
#
# Historial:
#   09-02-2024: versión 1.0
#
#################################################

tiempo_en_segundos=$1

if [ $# -eq 0 ]
then
	echo "Error: No has indicado argumento"
	echo "SINTAXIS: $0 <tiempo_en_segundos>"
	exit 

elif [ $# -eq 1 ]
then
	echo "Perfecto!!"
else
	echo "Has indicado $# argumentos, sólo usare el primeros y se ignorará el resto"
fi

dias=$((tiempo_en_segundos / 86400))
segundos_restantes=$((tiempo_en_segundos % 86400))

horas=$((segundos_restantes / 3600))
segundos_restantes=$((segundos_restantes % 3600))

minutos=$((segundos_restantes / 60))
segundos=$((segundos_restantes % 60))

echo "$tiempo_en_segundos segundos son $dias días, $horas horas, $minutos minutos y $segundos segundos"