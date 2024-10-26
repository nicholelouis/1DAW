#!/bin/bash  

#################################################
#
# Nombre: new_user.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Crear usuario.
#
# Entradas: Nombre, apellido y user.
# Salidas: mensaje.
#
# Historial:
#   29-01-2024: versión 1.0
#
#################################################

nombre=$1
apellido=$2
usuario=$3

if [ $# -eq 0 ]
then
	echo "ERROR: No has indicado argumentos. Debes indicar 3 argumentos"
	echo "SINTAXIS: $0 <nombre> <apellido> <usuario>"
	exit 

elif [ $# -eq 1 ]
then
	echo "Perfecto!! Has indicado 3 argumentos"
else
	echo "Has indicado $# argumentos, sólo usaremos los tres primeros y se ignorará el resto"
fi

echo "Bienvenido, $nombre"
echo "Tus datos son $nombre, $apellido"
echo "Vamos a crear tu usuario: $usuario"
echo "Tu nueva ID es $RANDOM"