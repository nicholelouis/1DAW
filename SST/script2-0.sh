#!/bin/bash

####################################
#
# Nombre: Gestión_servicios.sh
# Autor: César Domínguez Romero y Nichole Louis
#
# Objetivo: Gestionar servicios de un equipo con S.O. Linux.
#
# Entradas: Nombre del servicio
# Salidas: La posibilidad de manipular el proceso
#
# Historial:
#        2024-02-28: Versión 1
#
####################################

service_name=$1

# Se pregunta hasta que el usuario indique un nombre

while [ -z "$service_name" ]; do
    read -p "Introduzca un nombre de servicio: " service_name
done

# Confirmamos que el servicio existe

systemctl status "$service_name" >/dev/null 2>/dev/null
if [ "$?" -eq 4 ]; then
    echo "Servicio no encontrado"
    exit 10
fi

# Consultamos el estado del servicio 

is_active=$(systemctl is-active "$service_name")
is_enabled_masked=$(systemctl is-enabled "$service_name")

if [ "$is_active" == "active" ]; then
    echo "El servicio está en el estado $is_active"
else
    echo "El servicio está en el estado $is_active"
fi

case "$is_enabled_masked" in
    enabled)
        echo "El servicio está $is_enabled_masked y no está masked"
        ;;
    masked)
        echo "El servicio está $is_enabled_masked y no está enabled"
        ;;
    *)
        echo "El servicio no está ni enabled ni masked"
        ;;
esac

# Creamos el menú que se mostrará en pantalla
mostrar_menu() {
    echo "--------------------------------------------------"
    echo "----------------------MENÚ------------------------"
    echo "--------------------------------------------------"
    echo ""
    echo
    echo "1. Activar/Desactivar servicio"
    echo "2. Habilitar/Deshabilitar servicio"
    echo "3. Enmascarar/Desenmascarar servicio"
    echo "4. Mostrar configuración del servicio"
    echo "5. Reiniciar servicio (dejando activo)"
    echo "6. Reiniciar servicio (manteniendo el estado)"
    echo "7. Aplicar cambios en la configuración (dejando activo)"
    echo "8. Aplicar cambios en la configuración (manteniendo el estado)"
    echo "9. Asignar configuración de habilitado/deshabilitado"
    echo "10. Mostrar tiempo de carga total del sistema"
    echo "11. Mostrar tiempo de carga del servicio"
    echo "12. Mostrar nivel de ejecución actual del equipo"
    echo "13. Apagar equipo"
    echo "14. Reiniciar equipo"
    echo "15. SALIR"
    echo
}

while true; do
    mostrar_menu
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            if [ "$is_enabled_masked" != "masked" ]; then
                read -p "Si quiere activarlo presione 1 si se ha equivocado elija 2: " eleccion
                case $eleccion in
                    1)
                        systemctl start "$service_name"
                        echo "El servicio $service_name ha sido activado"
                        break
                        ;;
                    2)
                        break
                        ;;
                esac
            else
                if [ "$is_active" == "active" ]; then
                    read -p "Si quiere desactivarlo presione 1 si se ha equivocado elija 2: " eleccion
                    case $eleccion in
                        1)
                            systemctl stop "$service_name"
                            echo "El servicio $service_name ha sido desactivado"
                            break
                            ;;
                        2)
                            break
                            ;;
                    esac
                fi
            fi
            ;;
        2)
            if [ "$is_enabled_masked" == "enabled" ]; then
                read -p "Si quiere habilitarlo presione 1 si se ha equivocado elija 2: " eleccion
                case $eleccion in
                    1)
                        systemctl enable "$service_name"
                        echo "El servicio $service_name ha sido habilitado"
                        break
                        ;;
                    2)
                        break
                        ;;
                esac
            else
                read -p "Si quiere deshabilitarlo presione 1 si se ha equivocado elija 2: " eleccion
                case $eleccion in
                    1)
                        systemctl disable "$service_name"
                        echo "El servicio $service_name ha sido deshabilitado"
                        break
                        ;;
                    2)
                        break
                        ;;
                esac
            fi
            ;;
        3)
            if [ "$is_enabled_masked" == "masked" ]; then
                read -p "Si quiere desenmascarar presione 1 si se ha equivocado elija 2: " eleccion
                case $eleccion in
                    1)
                        systemctl unmask "$service_name"
                        echo "El servicio $service_name ha sido desenmascarado"
                        break
                        ;;
                    2)
                        break
                        ;;
                esac
            else
                read -p "Si quiere enmascararlo presione 1 si se ha equivocado elija 2: " eleccion
                case $eleccion in
                    1)
                        systemctl mask "$service_name"
                        echo "El servicio $service_name ha sido enmascarado"
                        break
                        ;;
                    2)
                        break
                        ;;
                esac
            fi
            ;;
        4)
            systemctl show "$service_name"
            break
            ;;
        5)
            sudo systemctl restart "$service_name"
            break
            ;;
        6)
            sudo systemctl try-restart "$service_name"
            break
            ;;
        7)
            sudo systemctl reload "$service_name"
            break
            ;;
        8)
            sudo systemctl try-reload "$service_name"
            break
            ;;
        9)
            sudo systemctl preset "$service_name"
            break
            ;;
        10)
            uptime
            break
            ;;
        11)
            journalctl -u "$service_name" -n 20
            break
            ;;
        15) 
            echo "Muchas gracias por utilizarlo, esperemos que le haya servido :)"
            exit 0 
            ;;
        *) echo "Opción fuera del menu"
            ;;
    esac
done
   