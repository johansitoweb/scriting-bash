#!/bin/bash

# Directorio a respaldar
directorio_a_respaldar="/ruta/a/tu/directorio"

# Directorio de destino de las copias de seguridad
directorio_destino="/ruta/a/tu/directorio/de/respaldos"

# Fecha y hora actual
fecha_hora=$(date +"%Y-%m-%d_%H-%M-%S")

# Crear el directorio de respaldo si no existe
mkdir -p "$directorio_destino"

# Copiar el directorio recursivamente
rsync -avz "$directorio_a_respaldar/" "$directorio_destino/$fecha_hora"

