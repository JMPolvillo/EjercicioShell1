**Parámetros**

Ejercicio 2:

1) Antes de empezar el ejercicio he creado un archivo (archivo.txt) con una serie de caracteres.
2) Para empezar, he creado 4 lineas con un IF, la intención es asegurar que si el número de parámetros ($#) es igual (-eq) a cero (0) escriba un mensaje con echo, indicando una serie de instrucciones.
3) A continuación, he indicado que si se introduce un parámetro ($1) se le asigne la variable "archivo"
4) He creado otro if en el que si NO (!) hay un archivo (-f) entonces muestre un mensaje con echo que el archivo no existe.
5) Para la línea 15, he creado una variable (cantidad_parametros) que realice un comando para leer caracteres (wc) en un archivo (-w) para la variable "archivo".
6) Por último, un echo que muestre los caracteres del archivo indicado.
7) 
