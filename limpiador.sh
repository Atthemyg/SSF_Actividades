#!/usr/bin/bash

#VERIFICAR SI SE PASÓ UN DIRECTORIO COMO PARÁMETRO
if [ -z "$1" ]; then
    echo "Uso: $0 <directorio>"
    exit 1
fi

#GUARDAR EL DIRECTORIO DESTINO
DIR="$1"

#VERIFICAR QUE EL DIRECTORIO EXISTE
if [ ! -d "$DIR" ]; then
    echo "El directorio no existe"
    exit 1
fi

#ENTRAR AL DIRECTORIO
cd "$DIR" || exit

#CREAR CARPETAS
mkdir IMGS
mkdir DOCS
mkdir TXTS
mkdir PDFS
mkdir VACIOS

#CREAR CONTADORES
img_count=0
doc_count=0
txt_count=0
pdf_count=0
vacio_count=0

#MOVER ARCHIVOS VACIOS
for file in *; do
    if [ -f "$file" ] && [ ! -s "$file" ]; then
        mv "$file" VACIOS/
        echo "$file se ha movido a VACIOS"
    fi
done

#MOVER IMÁGENES
for file in *.jpg *.png *.gif; do
    if [ -f "$file" ]; then
        mv "$file" IMGS/
        echo "$file se ha movido a IMGS"
    fi
done

#MOVER DOCUMENTOS
for file in *.docx *.odt; do
    if [ -f "$file" ]; then
        mv "$file" DOCS/
        echo "$file se ha movido a DOCS"
    fi
done

#MOVER TXTS
for file in *.txt; do
    if [ -f "$file" ]; then
        mv "$file" TXTS/
        echo "$file se ha movido a TXTS"
    fi
done

#MOVER PDFS
for file in *.pdf; do
    if [ -f "$file" ]; then
        mv "$file" PDFS/
        echo "$file se ha movido a PDFS"
    fi
done

echo "Limpieza completada"