#!/bin/bash

ORIGEN="/var/www/log/"
DESTINO="/var/Washington/log/"

mkdir -p "$DESTINO"

if [ "$(ls -A $ORIGEN 2>/dev/null)" ]; then
    cp -r ${ORIGEN}* "$DESTINO"

    if [ $? -eq 0 ]; then
        echo "Copia OK"
        rm -rf ${ORIGEN}*
        echo "Archivos eliminados"
    else
        echo "Error en copia"
    fi
else
    echo "No hay archivos para copiar"
fi