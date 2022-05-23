## Datos: Variables

¿Qué son los datos? En informática, los datos son representaciones simbólicas (vale decir: numéricas, alfabéticas, algorítmicas, etc.) de un determinado atributo o variable cualitativa o cuantitativa, o sea: la descripción codificada de un hecho empírico, un suceso, una entidad.

Los datos son, así, la información (valores o referentes) que recibe el computador a través de distintos medios, y que es manipulada mediante el procesamiento de los algoritmos de programación. Su contenido puede ser prácticamente cualquiera: estadísticas, números, descriptores, que por separado no tienen relevancia para los usuarios del sistema, pero que en conjunto pueden ser interpretados para obtener una información completa y específica.

En los lenguajes de programación, empleados para crear y organizar los algoritmos que todo sistema informático o computacional persigue, los datos son la expresión de las características puntuales de las entidades sobre las cuales operan dichos algoritmos. Es decir, son el input inicial, a partir del cual puede procesarse y componerse la información.

Fuente: https://concepto.de/dato-en-informatica/#ixzz5POlIsw8j

En programación, las variables son espacios reservados en la memoria que, como su nombre indica, pueden cambiar de contenido a lo largo de la ejecución de un programa. Una variable corresponde a un área reservada en la memoria principal del ordenador.

---

1. `variable a = 0`
2. Le sumo`2`a la variable`a`
3. `variable a = 2`
4. Le sumo`3`a la variable`a`
5. `variable a = 5`

---

> Para que nuestro código sea más entendible y claro, el identificador de la variable, es decir el nombre de la misma, debe ser mnemotécnico, esto significa que el nombre de la variable debe representar su contenido o su funcion dentro del programa.
>
> Por ejemplo, variables con nombres mnemotécnicos:
>
> * idioma = 'Español'
> * dia = 'Lunes'
> * diasemana = 7
> * año = 1930
> * pais = 'República Dominicana'
> * pi = 3.14

## Variables

Una variable es un contenedor para guardar datos. Las variables permiten que cada datos sea reutilizado muchas veces en un programa. Cada variable tiene dos partes: un nombre y un valor. Si una variable almacena el valor 21 y es llamada edad, el nombre edad puede aparecer muchas veces en el programa. Cuando el programa se ejecute, la palabra edad cambiará por el valor de 21. Una variable debe ser, siempre, declarada antes de ser usada. En p5.js no necesitamos (a diferencia de otros lenguajes) definir el tipo de dato que contendrá esa variable. Nos alcanza solo con nombrar la variable, darle un nombre y asignarle un valor.

```
let x;         //Declaración de variable con nombre "x"
let y;         //Declaración de variable con nombre "y"
let b;         //Declaración de variable con nombre "b"


x = 50;        //Asignar el valor 50 a la variable x
y = 12.6;      //Asignar el valor 12.6 a la variable y
b = true;      //Asignar el valor true a la variable b
```

Hay una forma mas sintetizada de hacer lo mismo. Podemos, entonces, escribir lo mismo en una sola línea:

```
let x = 50;
let y = 12.6;
let b = true;
```

Más de una variable del mismo tipo pueden ser declaradas en la misma línea y luego asignarse un valor por separado a cada una:

```
let x, y, b;
x = -5.56;
y = 12.6;
b = 76.789;
```

Algo a tener en cuenta es que no es posible definir dos veces la misma variable, eso nos marcara un error.

```
let x = 69;        //Declara variable x y le asigna el valor de 69
x = 70;            //Cambiar el valor de x por 70
let x = 71;        //ERROR – La variable x ya existe
```

El símbolo de igual \( = \) se utiliza para asignar valores, únicamente. Le asigna el valor que se encuentra en el lado derecho, a la variable del lado izquierdo. Por lo tanto, es importante que lo que se encuentre del lado izquierdo sea una variable:

```
5 = 25;         //ERROR – Lo que se encuentre del lado izquierdo debe ser una variable
```


## Condicionales

Las estructuras condicionales le permiten a un programa saber que línea de código ejecutar y cuales no. Las líneas de código solo serán “visibles” para el programa si se cumple una condición. Permiten al programa diferenciar acciones dependiendo el valor de variables.

##### Condicionales de Selección.

Se chequean condiciones para decidir qué instrucciones ejecutar. Esto implica que algunas instrucciones pueden no ejecutarse.

---

### si-entonces 

### if-then 

Se evalúa una condición, si ésta se cumple entonces se ejecuta el bloque que tenga en su interior, de lo contrario se continúan ejecutando las instrucciones que siguen a la estructura `if-then`.

![](https://0000marcosg.gitbooks.io/eypc/content/assets/Flujoifthen.png)

---

### si-no-entonces 

### if-then-else 

Se evalúa una condición, si ésta se cumple entonces se ejecuta el bloque 1, de lo contrario se pasa a ejecutar el bloque 2.

![](https://0000marcosg.gitbooks.io/eypc/content/assets/Flujoifthenelse.png)

### Operadores

Podemos realizar varios tipos de comparación y determinar cuando una condición es verdadera según los operadores que usemos:

| Operador | Comparación |
| :--- | :--- |
| **a == b** | **a** es igual a **b** |
| **a != b** | **a** es diferente a **b** |
| **a &lt; b** | **a** es menor a **b** |
| **a &gt; b** | **a** es mayor a **b** |
| **a &lt;= b** | **a** es menor o igual a **b** |
| **a &gt;= b** | **a** es mayor o igual a **b** |

---

### Operadores Lógicos

Los operadores lógicos se utilizan al combinar dos o mas expresiones de condición. Los símbolos de los operadores lógicos corresponden a los conceptos de Y, O y NO.

| Operador | Significado |
| :---: | :---: |
| && | Y |
| \|\| | O |
| ! | NO |

La siguiente tabla muestra todas las operaciones posibles y los resultados:

| Expresión | Evaluación |
| :---: | :---: |
| true && true | true |
| true && false | false |
| false && false | false |
| true \|\| true | true |
| true \|\| false | false |
| false \|\| false | false |
| !true | false |
| !false | true |

---

## Valores Inesperados

La función `random()` permite devolver un valor completamente aleatorio e inesperado de un rango especificado por parámetros:

```
random(max);
random(min, max);
```

La función regresa un valor aleatorio decimal \( float \) desde el 0 hasta el parámetro alto. Otra forma de ingresar parámetros a la función es a través de dos parámetros en lugar de uno solo. El valor bajo será el primer valor del rango, y el valor alto será el último. Eso significa que si ingresamos el valor 3 primero, y luego el valor 5, nos devolverá un valor aleatorio decimal entre, por supuesto, 3 y 5. Además, acepta perfectamente valores negativos.

El valor siempre será un numero decimal. 

```
let f = random(5.2);       //Asigna a f un valor decimal entre 0 y 5.2
```

Es importante marcar que estos valores aleatorios son generados en el momento en el que el programa se ejecuta, por lo tanto cada vez que ejecutemos nuestro programa estos valores van a ser siempre diferentes.
