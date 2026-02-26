#!/usr/bin/bash

#CONTROL DE ERRORES
set -euo pipefail

while true
do
  read -p "Introduce contraseña: " PASS1
  read -p "Confirma contraseña: " PASS2

  if [ "$PASS1" = "$PASS2" ]; then
    echo "OK - Contraseña guardada"
    break
  else
    echo "ERROR - No coinciden. Inténtalo de nuevo."
  fi
done