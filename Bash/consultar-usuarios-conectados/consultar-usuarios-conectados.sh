#!/bin/bash

#Variable
usuarios=$(who)

#Comprobación y conteo
if [ -n "$usuarios" ]; then
    echo "$usuarios"
    echo ""
    echo "Número de usuarios con sesiones abiertas:"
    echo "$usuarios" | wc -l
else
    echo "No hay usuarios."
fi