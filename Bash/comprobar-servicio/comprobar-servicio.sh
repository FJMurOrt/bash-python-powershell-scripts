#!/bin/bash

#Nombre del servicio
read -p "Introduce el nombre del servicio: " servicio

#Comprobación del servicio
if systemctl is-active --quiet "$servicio"; then
    echo "El servicio $servicio funciona."
else
    echo "El servicio $servicio no está en funcionamiento."
fi
