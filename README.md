## Parámetros

### Ejercico 1:

1) Para este ejercicio he empezado con un IF, indicando que su el número de parámetros ingresados ($#) sea menor (-lt) de 3, muestre un mensaje con echo señalando que es número incorrecto.
2) El segundo IF tiene la misma función que el primero, con la diferencia que muestra un mensaje de error con echo si el archivo es mayor (-ne) que 3.
3) Por último, he añadido dos echoes que muestren el primer parámetro introducido ($1) y el tercero ($3).

### Ejercicio 2:

1) Antes de empezar el ejercicio he creado un archivo (archivo.txt) con una serie de caracteres.
2) Para empezar, he creado 4 lineas con un IF, la intención es asegurar que si el número de parámetros ($#) es igual (-eq) a cero (0) escriba un mensaje con echo, indicando una serie de instrucciones.
3) A continuación, he indicado que si se introduce un parámetro ($1) se le asigne la variable "archivo"
4) He creado otro if en el que si NO (!) hay un archivo (-f) entonces muestre un mensaje con echo que el archivo no existe.
5) Para la línea 15, he creado una variable (cantidad_parametros) que realice un comando para leer caracteres (wc) en un archivo (-w) para la variable "archivo".
6) Por último, un echo que muestre los caracteres del archivo indicado.

## Sustitución de Comandos

### Ejercicio 1:

1) Para este ejercicio he optado por mostrar más instrucciones y fechas, para así hacernos una idea si hemos introducido correctamente los datos.
2) Para las primeras líneas he optado por introducir unos mensajes con "read -p" y que cree variables para el día (d_int), mes (m_int) y año (a_int)
3) A continuación muestra con echo un mensaje con la fecha introducida ($d_int, $m_int y $a_int).
4) Para las líneas 9, 10 y 11, usa nuevas variables para la fecha actual (d_act, m_act, a_act). He usado el comando date para que muestre el día (+%d), mes (+%m) y año (+%Y) actuales. A continuación he usado un echo para que muestre la fecha actual.
5) He usado el comando (let) para indicar que voy a hacer una operación. En este caso una resta (-). He restado a el año actual ($a_act) el año de nacimiento ($a_int)
6) A continuación he realizado un IF para que tenga en cuenta el mes y el día para calcular la edad. La primera condición es si se cumple que el mes actual ($m_act) es menor que el mes del cumpleaños ($m_int) reste la edad en la línea 18. He añadido otra condición con un "||" indicando que si el mes es el mismo (-eq) y el día actual ($d_act) es menor que el introducido ($d_int) entonces pase a la línea 18, restando a la edad una unidad. Asignando al resultado de esta edad la variable "edad".
7) Por último he incluido un echo mostrando la edad ($edad) calculada.

## 
9) 
