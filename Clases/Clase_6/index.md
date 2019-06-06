# Funciones

Las funciones nos permite separar el codigo en partes, volviendolo modular y reusable sin tener que repetirlo. Vuelve nuestro codigo mas facil de leer y ajustar.

Todo el tiempo estamos haciendo uso de funciones, por ejemplo cada vez que llamamos la funcion line\(\), rect\(\), ellipse\(\)  estamos haciendo uso de una fraccion de codigo escrita por los desarrolladores de Processing. Sin embargo, la creacion de funciones de usuario requiere varias elementos a tener en cuenta.

Los puntos importantes sobre porque deberiamos escribir nuestras propias funciones:

* Modularidad - Las funciones parten un codigo largo en varias partes peque;as, haciendolo mas entendible y manejable. Por ejemplo, una vez que desarrollamos la manera de dibujar cierto elemento, podemos redibujarlo todas las veces que queramos sin preocuparnos de sus caracteristicas.

* Reusabilidad - Las funciones nos permiten reusar una parte del codigo sin tener que escribirlo de nuevo, podemos llamarlo cuantas veces sea necesario.

### Definicion de una Funcion.

Una definicion de funcion consta de tres partes:

* Return Type
* Nombre de la funcion
* Argumentos

Y su sintaxis es la siguiente:

```Processing
returnType NombreFuncion(argumentos){

//Codigo a ejecutar

}
```

Teniendo en cuenta esta sintaxis podemos describir el siguiente ejemplo:

```
void circuloRojo() {
    fill(255, 0, 0);
    ellipse(50,50,20,20);
}
```

Esta funcion cuyo nombre es "circuloRojo" ejecuta esas dos simples lineas de codigo que eventualmente van a resultar en un circulo rojo en pantalla, sin embargo, esta es solo la definicion de la funcion. Nunca se va a ejecutar su contenido si no es llamada.

Para llamarla, la ejecutamos de la siguiente manera, por ejemplo detro de `draw()`:

```
void draw() {
    background(255);
    circuloRojo();
}
```

### Modularidad

Utilicemos el ejemplo de una pelota que rebota en los bordes de la pantalla como un codigo a separar en partes y ver sus posibilidades modulares:

```
// Variables Globales
int x = 0;
int vel = 1;

void setup() {
    size(200,200);
    smooth();
}

void draw() {
    background(255);

    // Movimiento
    x = x + vel; 

    // Rebote de la pelota
    if ((x > width) || (x < 0)) {
        vel = vel * –1;
    } 

    // Mostrar la pelota
    stroke(0);
    fill(175);
    ellipse(x,100,32,32); 
}
```

Una vez que identificamos los elementos que componen nuestro codigo, podemos separarlo en partes y ponerlos en funciones, que luego van a ser llamadas de manera repetida dentro de `draw()`

```
posibilidades modulares:
// Variables Globales
int x = 0;
int vel = 1;

void setup() {
    size(200,200);
    smooth();
}

void draw() {
    background(255);
    mover();
    rebotar();
    mostrar();
}

void mover() {
    // Movimiento
    x = x + vel;
}

void rebotar() {
    // Rebote de la pelota
    if ((x > width) || (x < 0)) {
        vel = vel * –1;
    }
}

void mostrar() {
    // Mostrar la pelota
    stroke(0);
    fill(175);
    ellipse(x,100,32,32);
}
```

Las funciones pueden ser declaradas en cualquier parte del programa fuera de `draw()` y `setup()`, la convencion indica que sean declaradas luego de la funcion `draw()`

De esta manera nuestro loop principal se transformo en una simple lista de funciones a llamar, esto facilita la lectura del programa asi tambien como la modificacion de cada una de sus partes sin tener que preocuparnos por el resto del programa.

Por ejemplo, podemos cambiar simplemente el contenido de la funcion `mostrar()` y su funcionamiento seguira siendo el mismo.

```
void mostrar() {
  rectMode(CENTER);
  noFill();
  stroke(0);
  rect(x, 100, 32, 32);
  fill(255);
  rect(x - 4, 100 - 4, 4, 4);
  rect(x + 4, 100 - 4, 4, 4);
  line(x - 4, 100 + 4, x + 4, 100 + 4);
}
```

Un gran beneficio del uso de funciones es la posibilidad que nos ofrece a la hora de buscar errores en nuestro programa, pudiendo activar o desactivar elementos de nuestro programa:

```
void draw() {
    background(255);
    //mover();
    //rebotar();
    mostrar();
}
```

## Argumentos

Los argumentos son valores que le pasamos a la funcion, son parametros en los cuales la funcion se va a ejecutar.

Tomemos como ejemplo la funcion circuloRojo y agregemos un argumento.

```
void circuloRojo(int diametro) {
    fill(255, 0, 0);
    ellipse(50,50, diametro, diametro);
}
```

Cuando declaramos una funcion y le agregamos un argumentos, lo que estamos haciendo es crear una variable local que solo puede ser usada dentro de esa funcion.

Cuando llamemos en el draw esta funcion, el valor que agreguemos sera asignado a la variable diametro y el circulo se dibujara al tama;o establecido.

```
circuloRojo(20) //El circulo toma un diametro de 20 pixeles
circuloRojo(80) //El circulo toma un diametro de 80 pixeles
```

De la misma manera, si usamos el ejemplo de la funcion mover\(\) de la pelota que rebota, podemos agregar un argumento para la velocidad:

```
void mover(int factorVel) {
    x = x + (vel * factorVel);
}
```

De esta manera multiplicamos la velocidad de movimiento de la pelota:

```
mover(2) //Se mueve dos veces mas rapido
mover(5) //se mueve cinco veces mas rapido
```

La cantidad de argumentos y los tipos de los mismos no tienen un limite, por ejemplo:

```
void mostrar(int x, int y, color c) {
  rectMode(CENTER);
  noFill();
  stroke(0);
  rect(x, y, 32, 32);
  fill(c);
  rect(x - 4, y - 4, 4, 4);
  rect(x + 4, y - 4, 4, 4);
  line(x - 4, y + 4, x + 4, y + 4);
}
```

Variando la cantidad de argumentos y haciendo un correcto uso de ellos se puede reutilizar la funcion con diferencias entre si, por ejemplo:

```
void draw() {
  mostrar(50, 100, color(255, 0, 0));
  mostrar(100, 70, color(0, 0, 200));
}
```

Los argumentos de una funcion pueden ser pasados a la misma, tanto de manera literal con su valores o variables, asi como resultados de expresiones matematicas:

```
void draw() {
  mostrar(100/2, 50 + 50, color(255, 0, 0));
}
```

# Return Type

Hasta ahora todos los ejemplos de funciones que hemos creado tienen como `return type` la palabra `void`, esto indica, sin mas, que la funcion no devuelve ningun valor o dato. Una funcion void o una funcion vacia, simplemente ejecuta las lineas en su interior pero no devuelve ningun resultado de sus calculos.

Un ejemplo de una funcion que retorne un valor seria por ejemplo, si quiseramos crear una funcion que realizara un calculo matematico, por ejemplo una suma.

Definiriamos la funcion de la siguiente manera:

```
int suma(int valor1, int valor2) {

    int total = valor1 + valor2
    return total;

}
```

Esta simple funcion realiza una suma entre sus dos argumentos, almacena el resultado en una variable llamada total y la devuelve mediante una accion return.

Para ver esta suma en la funcion `draw()` por ejemplo, veriamos lo siguiente:

```
int totalSuma = suma(10, 5);
```

La variable entera `totalSuma` sera asignada con el valor que retorne de la funcion `suma()`, en este caso 10 + 5.
