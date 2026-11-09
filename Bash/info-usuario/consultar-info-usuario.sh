#!/bin/bash

#Nombre del usuario
read -p "Introduce el nombre del usuario: " usuario

#Comprobamos que exista
if id "$usuario" &> /dev/null; then
    echo "El usuario $usuario existe."
    echo ""
    echo "Informacion del usuario:"
    id "$usuario"
else
    echo "El usuario $usuario no existe."
fi