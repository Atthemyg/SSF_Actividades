#!/usr/bin/bash

#VERIFICAR SI SE PASÓ UN DIRECTORIO COMO PARÁMETRO
DIR="."

if [[ -z "$1" ]]; then
    echo "Asumimos directorio actual como directorio de trabajo."
elif 
    #VERIFICAR QUE EL DIRECTORIO EXISTE
    [[ ! -d "$DIR" ]]; then
    echo "El directorio no existe"
    exit 1
else
    #GUARDAR EL DIRECTORIO DESTINO
    DIR="$1"  
    echo "Asumimos $DIR como directorio de trabajo."
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
    if [[ -f "$file" ]] && [[ ! -s "$file" ]]; then
        mv "$file" VACIOS/
        echo "$file se ha movido a VACIOS"
        ((vacio_count++))
    fi
done

#MOVER IMÁGENES
for file in *.jpg *.png *.gif; do
    if [[ -f "$file" ]]; then
        mv "$file" IMGS/
        echo "$file se ha movido a IMGS"
        ((img_count++))
    fi
done

#MOVER DOCUMENTOS
for file in *.docx *.odt; do
    if [[ -f "$file" ]]; then
        mv "$file" DOCS/
        echo "$file se ha movido a DOCS"
        ((doc_count++))
    fi
done

#MOVER TXTS
for file in *.txt; do
    if [[ -f "$file" ]]; then
        mv "$file" TXTS/
        echo "$file se ha movido a TXTS"
        ((txt_count++))
    fi
done

#MOVER PDFS
for file in *.pdf; do
    if [[ -f "$file" ]]; then
        mv "$file" PDFS/
        echo "$file se ha movido a PDFS"
        ((pdf_count++))
    fi
done

#CONTAR CARPETAS VACÍAS
for dir in */; do
    if [[ -d "$dir" ]] && [[ -z "$(ls -A "$dir")" ]]; then
        ((dirvacio_count++))
    fi
done

echo
echo "Limpieza completada"
echo
echo "Se han movido $img_count imágenes"
echo "Se han movido $doc_count documentos"
echo "Se han movido $txt_count archivos de texto"
echo "Se han movido $pdf_count PDFs"
echo "Se encontraron $vacio_count archivos vacíos"
echo "Se encontraron $dirvacio_count carpetas vacías"


if [[ "$vacio_count" -gt 0 ]] || [[ "$dirvacio_count" -gt 0 ]]; then
    echo
    echo "Archivos vacíos:"
    find . -type f -empty

    echo
    echo "Carpetas vacías:"
    find . -type d -empty

    echo
    echo -n "¿Deseas eliminar los elementos vacíos? (s/n): "
    read opcion

    if [[ "$opcion" == "s" || "$opcion" == "S" ]]; then
        
        #ELIMINAR ARCHIVOS VACÍOS
        find . -type f -empty -delete
        
        #ELIMINAR CARPETAS VACÍAS
        find . -type d -empty -delete
        
        echo "Elementos vacíos eliminados."
    else
        echo "No se eliminaron los elementos vacíos."
    fi
fi
