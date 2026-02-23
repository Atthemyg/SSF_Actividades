## 📋 Contexto
¿Alguna vez has mirado tu carpeta de Descargas o tu Escritorio y has sentido que el caos ha ganado la batalla? Archivos sueltos, PDFs mezclados con imágenes y carpetas vacías que no sirven para nada.

Tu misión en esta tarea es crear una herramienta de automatización en Bash (un script básicamente) que actúe como un "agente del caos o limpiador del caos". No solo moverás archivos, sino que construirás una herramienta cada vez más robusta y potente con gestión de parámetros y limpieza interactiva.

## 🛠️ Requisitos del la Actividad
 
1. Haz una primera versión del bash script (limpiador.sh) que simplemente ordene los archivos de la propia carpeta donde se ejecuta el script.

- *.jpg, *.png, *.gif --> IMGS/

- *.docx, *.odt --> DOCS/

- *.txt --> TXTS/

- *.pdf --> PDFS/

 - Archivos vacíos (0 bytes)  --> VACIOS/
 
2. Mejora errores e incluye que ahora le puedas pasar por parámetro el directorio de destino a ordenar. (ej: ./kaos.sh ~/Downloads).
   
3. Incluye que ahora el script al final te de un pequeño informe de cuántos archivos se han movido (encontrado) de cada tipo y cuántos archivos y carpetas vacías hay. Ejemplo: "Se han movido 15 imágenes, 3 PDFs y se encontraron 5 elementos vacíos." Hazlo como más te guste a ti y como creas que mejor queda.
 
4. Incluye una opción para que al final si hay algún archivo o carpeta vacía te pregunte si deseas eliminarlos tipo sí/no.
   
5. Mejora la opción del punto 5 haciendo que te muestre en una lista los archivos y carpetas vacías antes de confirmar eliminación tipo: "Archivos vacíos: vacio1.txt, vacio2.txt...
