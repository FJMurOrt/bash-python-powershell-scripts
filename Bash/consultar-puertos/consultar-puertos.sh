#!/bin/bash

if command -v ss &> /dev/null; then
    echo "Puertos escuchando:"
    echo ""
    ss -tuln
else
    echo "El comando ss no se encuentra en el sistema."
fi