#!/bin/bash

ORIGEN="/var/washington/log"
DESTINO="/var/www/backup"

FECHA=$(date +%Y%m%d_%H%M%S)

mkdir -p "$DESTINO"

if [ "$(ls -A $ORIGEN 2>/dev/null)" ]; then


    tar -cvf "$DESTINO/backup_$FECHA.tar" -C "$ORIGEN" .

    zip -r "$DESTINO/backup_$FECHA.zip" "$ORIGEN"

    echo "Backup creado correctamente: $FECHA"

else
    echo "No hay archivos para respaldar"
fi
