#!/usr/bin/bash

#CONTROL DE ERRORES
set -euo pipefail

ALTURA_CM=$1
PESO=$2

IMC=$(( PESO * 10000 / (ALTURA_CM * ALTURA_CM) ))

echo "IMC: $IMC"

if (( IMC < 18 )); then
  echo "Bajo peso"
elif (( IMC > 18 && IMC < 25 )); then
  echo "Peso normal"
elif (( IMC > 25 && IMC < 30 )); then
  echo "Sobrepeso"
else
  echo "Obesidad"
fi