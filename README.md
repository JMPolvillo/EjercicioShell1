## Variables

### Ejercicio 1:

1) Para este ejercicio he creado tres variables: nombre, edad y ciudad. Con un = he asignado a cada uno de ellos un valor.
2) En la línea 7 he creado un "echo" mostrando esas variables dentro del mensaje.

### Ejercicio 2:

1) He hecho uso de dos "read -p" para que muestren mensajes y se introduzcan valores a las variables "actividad" y "comida" por parte del usuario.
2) He creado un echo que muestre los valores introducidos dentro de este mensaje. Mostrando la actividad ($actividad) y comida ($comida) favorita.

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

## Condicionales

### Ejercicio 1:

1) Para este ejercicio he empezado asignando la variable "current_user" a "whoami", que índica el usuario actualmente en uso de la terminal.
2) He incluido un IF para que indica que si el usuario actual (current_user) no es (!=) root, muestre que no hay acceso de root a traves de un "echo".
3) En caso contrario (else) muestre acceso permitido con otro "echo".

### Ejercicio 2:

1) He usado dos "read -p" para que introduzca dos mensajes y se les asigne variable (n1 y n2)
2) A continuación he creado un if con la condición de que si las variables (n1 y n2) son iguales (-eq), muestre un echo señalándolo.
3) Una segunda condicíon (elif) por si la variable "n1" sea mayor (-gt) que "n2" y lo muestre con un echo.
4) En caso contrario (else) de las anteriores condiciones, que muestre a traves de un echo que "n2" es mayor que "n1".
5) Cerramos con un fi.

### Ejercicio 3:

1) he empezado un con "read -p" para que muestre un mensaje para introducir número y su variable (numero)
2) A continuación he creado un if para que use la variable "$numero" lo divida entre 2 y muestre el resto (%), si el resto es igual (-eq) a 0 entonces muestre un echo indicando que es divisible.
3) Un "else" para que muestre que no es divisible en caso de que no se cumpla la condición anterior.
4) Se cierra con fi.

## Sustitución de Comandos

### Ejercicio 1:

1) Para este ejercicio he optado por mostrar más instrucciones y fechas, para así hacernos una idea si hemos introducido correctamente los datos.
2) Para las primeras líneas he optado por introducir unos mensajes con "read -p" y que cree variables para el día (d_int), mes (m_int) y año (a_int)
3) A continuación muestra con echo un mensaje con la fecha introducida ($d_int, $m_int y $a_int).
4) Para las líneas 9, 10 y 11, usa nuevas variables para la fecha actual (d_act, m_act, a_act). He usado el comando date para que muestre el día (+%d), mes (+%m) y año (+%Y) actuales. A continuación he usado un echo para que muestre la fecha actual.
5) He usado el comando (let) para indicar que voy a hacer una operación. En este caso una resta (-). He restado a el año actual ($a_act) el año de nacimiento ($a_int)
6) A continuación he realizado un IF para que tenga en cuenta el mes y el día para calcular la edad. La primera condición es si se cumple que el mes actual ($m_act) es menor que el mes del cumpleaños ($m_int) reste la edad en la línea 18. He añadido otra condición con un "||" indicando que si el mes es el mismo (-eq) y el día actual ($d_act) es menor que el introducido ($d_int) entonces pase a la línea 18, restando a la edad una unidad. Asignando al resultado de esta edad la variable "edad".
7) Por último he incluido un echo mostrando la edad ($edad) calculada.

## Bucles

### Ejercicio 1:

1) Para este ejercicio he creado una variable "pid" que genere un número al azar ($$)
2) He tenido en cuenta que los intentos empiezan por 0, así que le he asignado la variable "intentos".
3) He asignado a adivinar_pid una serie de comandos con "() {".
4) Dentro de adivinar_pid he usado un "while true" para que cumpla unas condiciones en un bucle.
5) El uso de "do" para que muestre un mensaje con read -p he introduzca un número. Automáticamente sumará 1 por cada intento.
6) Un IF en caso de que el número sea menor, lo muestre y vuelva al do (línea 8)
7) Una segunda condición (ELIF) en caso de que el número ingresado sea mayor.
8) Un else en el caso de que no se cumpla que sea mayor o menor, por lo tanto es el número correcto.
9) Muestra con echo el acierto y el número de intentos ($intentos).
10) Se cierra el "if" con un "fi" y el "do" con "done". Cerramos adivinar_pid con el cierre de corchete "}".
11) a continuación ponemos adivinar_pid para que inicie la secuencia.

### Ejercicio 2:

1) Para este ejercicio he creado tres secuencias con "() {": para agregar archivos, mostrar archivos y borrar archivos.
2) He creado "agregar_archivo" y le he indicado que pida el nombre de archivo que quiere crear "$nombre_archivo", juntando otro echo con la creación con éxito del archivo.
3) Para "mostrar_archivos" he incluido un "echo" con lista de archivos seguido de un "ls".
4) En "borrar_archivo" he creado dos echo que indiquen el nombre de archivo y el formato (no he sido capaz de conseguir que borre un archivo junto a su extensión). Esta información lo he agrupado en una nueva variable: "archivo_completo".
5) a continuación he creado un if en el que el archivo (-f) que hemos introducido ($archivo_completo) lo borre con un comando "rm", usando un "echo" para mostrar que se ha borrado. Un "else" para el caso de que no exista archivo con ese nombre y un "echo" mostrando el mensaje.
6) A continuación se introduce "agregar_archivo", "sleep 3" para que espere tres segundos a "mostrar_archivos".
7) Para finalizar, tenemos un "echo" que muestra si se quiere borrar un archivo y el uso de if para el borrado y else en caso de que no se haya podido borrar. He incluido varias respuestas de SI, en caso de mayúsculas, tildes, etc.





