# Array

Pensemos en una variable como un elemento capaz de seguir los cambios de informacion dentro de un espacio en la memoria del programa en un periodo de tiempo. Un array es exactamente lo mismo, la diferencia es que en lugar de seguir una pieza particular de informacion un array se encarga de seguir a un conjunto de piezas.

![](https://raw.githubusercontent.com/0000marcosg/CVyP/master/assets/15import.png)

Debemos pensar en el array como una lista de variables. Por lo tanto, como lista es importante para dos cosas: en primer lugar sigue los cambios de cada uno de los elementos almacenados en ella, y numero dos, la lista mantiene el orden de los elementos que la componen.

En una array, cada elemento posee un unico valor de indice, designado por un numero entero que marca su posicion en la lista \(elemento \#1, elemento \#2, elemento \#3, etc.\) . En todos los casos, el nombre del array refiere a la lista completa, y para acceder a un elemento en particular lo hacemos a traves de su numero de indice.

La manera en la que este indice se organiza, como se ve en la imagen de mas abajo es el siguiente: Si tenemos un array de 10 elementos o posiciones, el primero de ellos va a ser nombrado con el indice 0 y el ultimo con el indice 9. Podria llamarnos la atencion el hecho de que el primer elemento sea nombrado con el indice 0, pero refiere a que existe cero distancia entre el comienzo del array y el primer elemento.

### ![](https://raw.githubusercontent.com/0000marcosg/CVyP/master/assets/16import.png)

### Declaracion de un array

Si tomamos como referencia que para crear una variable debiamos indicar un tipo de dato \(int, float, bool, etc.\) debemos saber que no existe diferencia con el respecto a las arrays. Sin embargo, la sintaxis es diferente.

Creamos un array colocanto un par de parentesis rectos \( \[ \] \) luego del tipo de dato y el nombre del array.

Por ejemplo, un array de numero enteros seria definida de la siguiente manera:

```Processing
int [] arrayDeEnteros;
```

Al igual que una variable, el nombre es totalmente trivial y puede ser cualquier cosa que queramos.

Una cosa a tener en cuenta con las arrays es que su tamaño no puede cambiar. Una vez que la declaremos con 10 posiciones, no puede pasar a tener 11 lugares en un determinado momento \(esto es en el caso de processing, en otros lenguajes existen las arrays dinamicas\).

Sin embargo, en ninguna parte del codigo de arriba definimos el tamaño del array, solo la declaramos, pero debemos asegurarnos de crearla con la cantidad de espacios que vayamos a requerir.

```Processing
int [] arrayDeEnteros = new int [10];
```

Al agregar el operador new estamos diciendole a Processing "Crea una nueva array de numeros enteros".

La declaracion de arriba muestra como ese array debe ser declarado, en el cual le indicamos el tipo de dato y la cantidad de elementos que vamos a ubicar, o tecnicamente, le avisamos a Processing cuanta memoria de la computadora vamos a estar usando. El orden como queda marcado es: el operador new, el tipo de dato y la cantidad de elementos, indicado con un numero entero dentro de los parentesis rectos.

El numero de elementos puede ser indicado directamente con numeros, con una variable o como el resultado de expresiones que representen numeros enteros.

```Processing
float[] puntos = new float[4];        //Una lista de cuatro elementos de tipo float

int num = 50;
int [] puntos = new int [num];     //Se utiliza una variable para declarar la cantidad de elementos

int [] puntos = new int [num*2];    //Se utiliza una expresion para declarar la cantidad de elementos
```

### Inicializar el Array

Una manera de inicializar un array es ubicando los valores uno a uno en cada una de las posiciones.

```Processing
int [] cosas = new int [3];

cosas[0] = 8;    //El primer elemento del array equivale a 8
cosas[1] = 3;    //El segundo elemento del array equivale a 3
cosas[2] = 12;    //El tercer elemento del array equivale a 12
```

Otra manera de inicializar la lista es ingresando manualmente toda la lista de valores dentro de llaves curvas.

```Processing
int[] arrayDeEnteros = { 1, 5, 8, 9, 4, 5 };
float[] arrayDeFloat = { 1.2, 3.5, 2.0, 3.4123, 9.9 };
```

> ### Ejemplo de Clase: [Burbujas](EjemploBurbuja.zip)

---
