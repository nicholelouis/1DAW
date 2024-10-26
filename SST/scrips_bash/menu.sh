#!/bin/bash  

#################################################
#
# Nombre: Calcula_seg.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Realizar un menú.
#
# Entradas: Opciones del usuario.
# Salidas: Resultado de las opciones.
#
# Historial:
#   29-01-2024: versión 1.0
#
#################################################

while true; do
    echo "----------- Menú del Sistema -----------"
    echo "1. porlibre o 1: Indicar espacio libre de la partición raíz (en porcentaje)."
    echo "2. tamlibre o 2: Indicar espacio libre de la partición raíz (en tamaño)."
    echo "3. usuario o 3: Indicar el usuario actual."
    echo "4. maquina o 4: Indicar el nombre de la máquina."
    echo "5. usuarios o 5: Indicar el número de usuarios del sistema."
    echo "6. espacio o 6: Total de espacio usado en todos los directorios personales (formato 'humano')."
    echo "7. Nueva Opción 1: (agrega aquí una descripción)."
    echo "8. Nueva Opción 2: (agrega aquí una descripción)."
    echo "0. Salir"

    read -p "Seleccione una opción: " opcion

    case $opcion in
        "porlibre" | 1)
            porcentaje_libre=$(df --output=pcent / | awk 'NR==2 {print $1}')
            echo "Espacio libre en la partición raíz: $porcentaje_libre"
            ;;
        "tamlibre" | 2)
            tamano_libre=$(df --output=size / | awk 'NR==2 {print $1}')
            echo "Espacio libre en la partición raíz: $tamano_libre"
            ;;
        "usuario" | 3)
            usuario_actual=$(whoami)
            echo "Usuario actual: $usuario_actual"
            ;;
        "maquina" | 4)
            nombre_maquina=$(hostname)
            echo "Nombre de la máquina: $nombre_maquina"
            ;;
        "usuarios" | 5)
            num_usuarios=$(who | cut -d' ' -f1 | sort -u | wc -l)
            echo "Número de usuarios del sistema: $num_usuarios"
            ;;
        "espacio" | 6)
            espacio_usado=$(du -sh ~ | cut -f1)
            echo "Total de espacio usado en directorios personales: $espacio_usado"
            ;;
        "" | 7)
            echo "Has seleccionado la Nueva Opción 1."
            ;;
        "" | 8)
            echo "Has seleccionado  la Nueva Opción 2."
            ;;
        "salir" | 0)
            echo "Saliendo del programa. ¡Hasta luego!"
            exit 0
            ;;
        *)
            echo "Error: Opción no válida." ;;
    esac
done