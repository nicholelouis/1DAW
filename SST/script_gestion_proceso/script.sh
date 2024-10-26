#!/bin/bash

############################################################
#
# AUTORAS: Nichole A Louis, Rashi Chugani Narwani
#
# OBJETIVO: Este script verifica si un paquete está instalado en el sistema. Si el paquete no está instalado, verifica si existe en los repositorios del sistema. Si el paquete está instalado, proporciona opciones para administrarlo, como mostrar su versión, reinstalarlo, actualizarlo, eliminarlo (guardando la configuración) o eliminarlo totalmente.
#
# ENTRADA: Nombre del paquete
# SALIDA: Dependiendo del estado del paquete, el script muestra información relevante y opciones para administrarlo.
#
# HISTORIAL:
#   2024-02-24: versión 1.0
#
############################################################

maxCPU=$1
maxMem=$2

function manejar_senal {
    case $1 in
        INT)
            echo "Interrumpiendo ejecución"
            exit 0
            ;;
        TERM)
            echo "Finalizando ejecución"
            exit 0
            ;;
        USR1)
            echo "Carga del sistema:"
            uptime
            ;;
        USR2)
            echo "Límites de los procesos del sistema:"
            ulimit -a
            ;;
    esac
}

if [ $# -ne 2 ]; then
    mostrar_error "Se deben proporcionar dos argumentos: maxCPU y maxMem" 100
fi

    if dpkg -l | grep -q ^ii  "$nombre_paquete"; then
        echo "--------------------------------------------------"
        echo "----------------------MENÚ------------------------"
        echo "--------------------------------------------------"
        echo ""
        echo "El paquete "$nombre_paquete" está instalado."
        echo "Seleccione una opción:"
        echo "1. Mostrar versión"
        echo "2. Reinstalar"
        echo "3. Actualizar"
        echo "4. Eliminar (manteniendo configuración)"
        echo "5. Eliminar totalmente"
        read -p "Elija una opción (1-5): " opcion

        case $opcion in
            1|a|A) 
                dpkg -l | grep ^ii  "$package_name "
                ;;
            2|b|B) 
                sudo apt install --reinstall "$nombre_paquete"
                ;;
            3|c|C) 
                sudo apt install --only-upgrade "$nombre_paquete" 
                ;;
            4|d|D) 
                sudo apt remove "$nombre_paquete"
                ;;
            5|e|E) 
                sudo apt purge "$nombre_paquete"
                ;;
            *) 
                echo "Opción no válida."
                ;;
        esac
    else