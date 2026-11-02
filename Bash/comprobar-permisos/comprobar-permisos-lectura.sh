#!/bin/bash

#Introducir la ruta del archivo
read -p "Introduce la ruta del archivo: " archivo

#Comprobación
if [ -f "$archivo" ]; then
    #Comprobación de los permisos
    if [ -r "$archivo" ]; then
        echo "El archivo tiene permisos de lectura."
    else
        echo "No tienes permisos de lectura sobre este archivo."
    fi
else
    echo "No se encontró el archivo que querías comprobar."
fi