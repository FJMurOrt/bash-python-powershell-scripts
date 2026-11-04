#!/bin/bash

#Vemos los procesos
echo "Procesos actuales:"
ps aux

#Para introducir el nombre del proceso que queramos buscar
read -p "Introduce el nombre del proceso que quieres buscar: " proceso

#Lo buscamos
ps aux | grep -i "$proceso" | grep -v grep