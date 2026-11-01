#!/bin/bash

#Ruta del archivo
read -p "Introduce la ruta del archivo: " archivo

#Comprobación si el archivo, es decir, la ruta existe y contamos
if [ -f "$archivo" ]; then

    lineas=$(wc -l < "$archivo")
    echo "El archivo contiene $lineas lineas."
else
    echo "El archivo no existe."
fi
