#!/usr/bin/bash

#CONTROL DE ERRORES
set -euo pipefail

echo -n "Base: "
read BASE

echo -n "Altura: "
read ALTURA

AREA=$(( BASE * ALTURA / 2 ))

echo "Área: $AREA"
echo

for (( i=1; i<=ALTURA; i++ ))
do
  for (( j=1; j<=i; j++ ))
  do
    echo -n "#"
  done
  echo
done