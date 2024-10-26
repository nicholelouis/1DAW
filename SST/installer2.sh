#!/bin/bash  

#################################################
#
# Nombre: installer2.sh
# Autor: Nichole Louis nicholelouiss@gmail.com
#
# Objetivo: Instalador de paquetes.
#
# Entradas: Nombre de un paquete.
# Salidas: Depende de la elección del usuario.
#
# Historial:
#   09-02-2024: versión 1.0
#
#################################################

if [ $# -eq 0 ]
 then   
        while True;
         do 
                read -p "Introduzca un nombre de paquete: " nombre_paquete
            if [ -n "$nombre_paquete" ]; 
             then 
                break
            fi
         done
else
    nombre_paquete=$1
fi
sudo apt-get update
dpkg -s $nombre_paquete >/dev/null 2>/dev/null
              
if [ $? -ne 0 ]
 then
        apt-cache show $nombre_paquete
            if [ $? -ne 0 ]
             then
                echo "EL $nombre_paquete no esta instalado"
                apt-cache show $nombre_paquete
                echo "Si lo quiere instalar presione 1, para salir presione 0"
                read -p opcion
                
                case $opcion in

                    "" | 1)
                        sudo apt-get install $nombre_paquete;;
                    "" | 0)  
                        echo "Saliendo del programa. ¡Hasta luego!"
                        exit 0;;
                    "" | *)
                    echo "Error: Opción no válida." 
                esac
            else
                echo "El paquete no existe, aqui los paquetes que tienen nombres similares"
                apt-cache search $nombre_paquete
            fi
else
        echo"El paquete $nombre_paquete esta instalado."
        echo "1. Mostrat información con respecto al paquete."
        echo "2. Reinstalar el paquete."
        echo "3. Actiualizar este paquete."
        echo "4. Eliminar paquete gurdando su configuración." 
        echo "5. Eliminar por completo el paquete."
        echo "0. Salir"
        
        read -p "Seleccione una opción: " opcion
                
        case $opcion in
        
                "" | 1)
                   apt-cache show $nombre_paquete;;
                "" | 2)
                    sudo apt-get install --reinstall $nombre_paquete;;
                "" | 3)
                   sudo apt-get install $nombre_paquete;;
                "" | 4)
                   sudo apt-get remove $nombre_paquete;;
                "" | 5)
                   sudo apt-get purge $nombre_paquete;;
                "" | 0)
                   echo "Saliendo del programa. ¡Hasta luego!"
                   exit 0;;
                "" | *)
                    echo "Error: Opción no válida." 
        esac
fi