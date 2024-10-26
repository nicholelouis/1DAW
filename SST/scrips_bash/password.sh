#!/bin/bash  

#################################################
#
# Nombre: password.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Verificar contraseña.
#
# Entradas: Contraseña introducida por usuario.
# Salidas: acceso denagado o aprobado.
#
# Historial:
#   09-02-2024: versión 1.0
#
#################################################

contrasena=$1

obtener_contraseña() {
    read -p "Introduce tu contraseña: " contrasena
}

echo "Bienvenido al sistema."
obtener_contraseña
echo  "Guardando contreseña"

contrasena_inicial=$contrasena

while true; do
    obtener_contraseña
    echo  "Verificando contraseña"

    if [ "$contrasena" == "$contrasena_inicial" ]; then
        echo "Contraseña correcta. ¡Bienvenido!"
        exit
    else
        echo "Contraseña incorrecta. Vuelva a intentarlo."
        exit
    fi
done