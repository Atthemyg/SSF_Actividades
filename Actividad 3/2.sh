#!/usr/bin/bash

#CONTROL DE ERRORES
set -euo pipefail

MENSAJE="$*"

git add .
git commit -m "$*"
git push