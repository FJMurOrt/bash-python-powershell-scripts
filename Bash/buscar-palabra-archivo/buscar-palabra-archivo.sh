#!/bin/bash

#Input para la ruta del archivo
read -p "Introduce la ruta del archivo: " archivo

#Vemos si existe o no
if [ -f "$archivo" ]; then
    #Input para la palabra que queramos buscar en el archivo
    read -p "Introduce la palabra que quieres buscar: " palabra
    #La buscamos con grep
    grep -n "$palabra" "$archivo"
else
    echo "El archivo no existe."
fi
