# limpiador.sh

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

____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________

# ACTIVIDAD 3

1. Un script qué calcule el número de segundos totales y recibe por parámetros DIA, HORAS y SEGUNDOS.  Ejemplo:  ./segundos.sh 4 2 200 à Debería calcular los segundos que hay en 4 días 2h y 200s.
 
2. Un script qué haga automáticamente: git add, git commit y git push. Con el mensaje que le pases. Ejemplo:  ./commit.sh mensaje de commit
 
3. Un script que calcule el índice IMC de una persona y responda con el IMC calculado e indicando según los valores que dicta la OMS o algún otro organismo de confianza si la persona tiene sobrepeso, si está saludable, si está obeso… etc. Recibe por parámetros obviamente la altura en cm y el peso en kg. Ejemplo:  ./calculaimc.sh  182 72  à equivaldría a 182cm y 72Kg.
 
4. Haga un simple script que pida una contraseña y vuelva a pedir confirmación de la misma y compruebe si son iguales o no. Si son iguales termina el programa con OK y un mensaje si son diferentes ERROR y se reinicia.
 
5. Haga un script que muestre en pantalla un menú similar al siguiente y ejecute el comando correcto para ver lo que pide el usuario:
   1. Espacio libre en disco (%)
   2. Espacio libre (tamaño)
   3. Usuario actual y nombre de la máquina
   4. Números de usuarios en la máquina (/etc/passwd)
   5. Espacio usado en tu carpeta
 
   Elija una opción:
 
6. Haga un script que le solicite por pantalla base y altura (2 números) y que le calcule el área de un rectángulo y se lo dibuje en pantalla usando asteriscos * o usando almohadillas # o de la forma que usted prefiera obviamente en formato ASCII.
 
####################
####################
####################
 
7. Haga un script similar al anterior, pero para un triángulo.
