#!/usr/bin/bash

#CONTROL DE ERRORES
set -euo pipefail

DIAS=$1
HORAS=$2
SEGUNDOS=$3

TOTAL_SEGUNDOS=$(( DIAS * 86400 + HORAS * 3600 + SEGUNDOS ))

echo "Total de segundos: $TOTAL_SEGUNDOS"
