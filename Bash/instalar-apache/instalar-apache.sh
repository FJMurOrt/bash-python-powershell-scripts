#!/bin/bash

#Veo antes si está instalado
if command -v apache2 &> /dev/null; then
    echo "Apache ya está instalado."
else
    echo "Apache no está instalado."

    read -p "¿Lo quieres instalar? (s/n): " respuesta

    if [ "$respuesta" = "s" ]; then
        sudo apt update
        sudo apt install apache2 -y
    else
        echo "Instalacion cancelada."
        exit 0
    fi
fi

#Hago una comprobación del servicio a ver si está funcionando bien
if systemctl is-active --quiet apache2; then
    echo "Apache está funcionando."
else
    echo "Apache no está en funcionamiento."
fi
