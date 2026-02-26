#!/usr/bin/bash

#CONTROL DE ERRORES
set -euo pipefail

echo "1. Espacio libre en disco (%)"
echo "2. Espacio libre (tamaño)"
echo "3. Usuario actual y nombre de la máquina"
echo "4. Número de usuarios en la máquina"
echo "5. Espacio usado en tu carpeta"
echo

read OPCION
echo

if [ "$OPCION" = "1" ]; then
  df -h
elif [ "$OPCION" = "2" ]; then
  df -h
elif [ "$OPCION" = "3" ]; then
  echo $USER
  hostname
elif [ "$OPCION" = "4" ]; then
  wc -l /etc/passwd
elif [ "$OPCION" = "5" ]; then
  du -sh $HOME
else
  echo "Opción no válida"
fi