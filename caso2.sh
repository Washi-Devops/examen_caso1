#!/bin/bash

# Ruta destino
DESTINO="/var/www/log"

# Crear carpeta si no existe
mkdir -p "$DESTINO"

# Obtener hora actual
FECHA=$(date +%H%M%S)

# Nombre del archivo
ARCHIVO="$DESTINO/archivo_$FECHA.log"

# Contenido mock (Lorem Ipsum)
echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." > "$ARCHIVO"

echo "Archivo creado: $ARCHIVO"