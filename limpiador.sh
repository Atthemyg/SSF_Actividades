#!/usr/bin/bash

#CREAR CARPETAS
mkdir IMGS
mkdir DOCS
mkdir TXTS
mkdir PDFS
mkdir VACIOS

#CONTADORES
img_count=0
doc_count=0
txt_count=0
pdf_count=0
vacio_count=0

#MOVER ARCHIVOS
for f in *; do
    echo "Procesando $f"

    if [ -f $f ]; then                # Verifica que es archivo
    
    case $f in 
    
    *.jpg *.png *.gif)
    mv $f "IMGS"
    ((img_count++))
    echo -n "Movido a IMGS"
    ;;

    *.docx *.odt)
    mv $f "DOCS"
    ((doc_count++))
    echo -n "Movido a DOCS"
    ;;
    *.txt)
    mv $f "TXTS"
    ((txt_count++))
    echo -n "Movido a TXTS"
    ;;
    *.pdf)
    mv $f "PDFS"
    ((pdf_count++))
    echo -n "Movido a PDFS"
    ;;

    *)
    if [ ! -f $f ]; then               # Verificar archivos vacíos
    mv $f "VACIOS"
    ((vacio_count++))
    echo -n "Movido a VACIOS"
    
    fi
done
    






#echo "Procesando $f"
#done

#OTRO
#for archivo in *
#do echo "====>>> $archivo"