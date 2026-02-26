# Bash Script

### limpiador.sh

¿Alguna vez has mirado tu carpeta de Descargas o tu Escritorio y has sentido que el caos ha ganado la batalla? Archivos sueltos, PDFs mezclados con imágenes y carpetas vacías que no sirven para nada.

limpiador.sh es un script de Bash que actúa como un "agente del caos o limpiador del caos". 

- Ordena los archivos de la propia carpeta donde se ejecuta el script.

  - *.jpg, *.png, *.gif --> IMGS/

  - *.docx, *.odt --> DOCS/

  - *.txt --> TXTS/
  
  - *.pdf --> PDFS/
  
   - Archivos vacíos (0 bytes)  --> VACIOS/
 
- Se le puede pasar por parámetro el directorio de destino a ordenar. (ej: ./kaos.sh ~/Downloads).
   
- Da un pequeño informe de cuántos archivos se han movido/encontrado de cada tipo y cuántos archivos y carpetas vacías hay.
 
- Al final si hay algún archivo o carpeta vacía muestra una lista de estos y pregunta si deseas eliminarlos.

____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________

## ACTIVIDAD 3

### segundos.sh

Calcula el número de segundos totales y recibe por parámetros DIA, HORAS y SEGUNDOS.  Ejemplo: ./segundos.sh 4 2 200  ->  Debería calcular los segundos que hay en 4 días 2h y 200s.

### commit.sh
 
Hace automáticamente git add, git commit y git push. Con el mensaje que le pases. Ejemplo: ./commit.sh mensaje

### imc.sh
 
Calcula el índice IMC de una persona indicando según los valores que dicta la OMS o algún otro organismo de confianza si la persona tiene bajo peso, peso normal, sobrepeso u obesidad. Recibe por parámetros la altura en cm y el peso en kg. Ejemplo:  ./calculaimc.sh  182 72  ->  equivaldría a 182cm y 72Kg.

### password.sh
 
Pide una contraseña y vuelva a pedir confirmación de la misma antes de comprobar si son iguales o no. Si son iguales termina el programa con OK; si son diferentes devuelve ERROR y se reinicia.

### comandos.sh

Muestra en pantalla el siguiente menú y ejecute el comando correcto para ver lo que pide el usuario:

   1. Espacio libre en disco (%)
   2. Espacio libre (tamaño)
   3. Usuario actual y nombre de la máquina
   4. Números de usuarios en la máquina (/etc/passwd)
   5. Espacio usado en tu carpeta
 
### rectangulo.sh

Solicita por pantalla base y altura (2 números) para calcular el área de un rectángulo, y lo dibuja en pantalla usando # en formato ASCII.

### triangulo.sh

Hace un script similar al anterior pero con * para un triángulo.
