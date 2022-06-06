# Funciones

Las funciones nos permite separar el codigo en partes, volviendolo modular y reusable sin tener que repetirlo. Vuelve nuestro codigo mas facil de leer y ajustar.

Todo el tiempo estamos haciendo uso de funciones, por ejemplo cada vez que llamamos la funcion line\(\), rect\(\), ellipse\(\)  estamos haciendo uso de una fraccion de codigo escrita por los desarrolladores de p5.js. Sin embargo, la creacion de funciones de usuario requiere varias elementos a tener en cuenta.

Los puntos importantes sobre porque deberiamos escribir nuestras propias funciones:

* Modularidad - Las funciones parten un codigo largo en varias partes pequeñas, haciendolo mas entendible y manejable. Por ejemplo, una vez que desarrollamos la manera de dibujar cierto elemento, podemos redibujarlo todas las veces que queramos sin preocuparnos de sus caracteristicas.

* Reusabilidad - Las funciones nos permiten reusar una parte del codigo sin tener que escribirlo de nuevo, podemos llamarlo cuantas veces sea necesario.

### Definicion de una Funcion.

Una definicion de funcion consta de tres partes:

* Definicion
* Nombre de la funcion
* Argumentos

Y su sintaxis es la siguiente:

```javascript
Definicion NombreFuncion(argumentos){

//Codigo a ejecutar

}
```

Teniendo en cuenta esta sintaxis podemos describir el siguiente ejemplo:

```javascript
function circuloRojo() {
    fill(255, 0, 0);
    ellipse(50,50,20,20);
}
```

Esta funcion cuyo nombre es "circuloRojo" ejecuta esas dos simples lineas de codigo que eventualmente van a resultar en un circulo rojo en pantalla, sin embargo, esta es solo la definicion de la funcion. Nunca se va a ejecutar su contenido si no es llamada.

Para llamarla, la ejecutamos de la siguiente manera, por ejemplo detro de `draw()`:

```javascript
function draw() {
    background(255);
    circuloRojo();
}
```

### Modularidad

Utilicemos el ejemplo de una pelota que rebota en los bordes de la pantalla como un codigo a separar en partes y ver sus posibilidades modulares:

```javascript
// Variables Globales
let x = 0;
let vel = 1;

function setup() {
    size(200,200);
    smooth();
}

function draw() {
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

```javascript
posibilidades modulares:
// Variables Globales
let x = 0;
let vel = 1;

function setup() {
    size(200,200);
    smooth();
}

function draw() {
    background(255);
    mover();
    rebotar();
    mostrar();
}

function mover() {
    // Movimiento
    x = x + vel;
}

function rebotar() {
    // Rebote de la pelota
    if ((x > width) || (x < 0)) {
        vel = vel * –1;
    }
}

function mostrar() {
    // Mostrar la pelota
    stroke(0);
    fill(175);
    ellipse(x,100,32,32);
}
```

Las funciones pueden ser declaradas en cualquier parte del programa fuera de `draw()` y `setup()`, la convencion indica que sean declaradas luego de la funcion `draw()`

De esta manera nuestro loop principal se transformo en una simple lista de funciones a llamar, esto facilita la lectura del programa asi tambien como la modificacion de cada una de sus partes sin tener que preocuparnos por el resto del programa.

Por ejemplo, podemos cambiar simplemente el contenido de la funcion `mostrar()` y su funcionamiento seguira siendo el mismo.

```javascript
function mostrar() {
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

```javascript
function draw() {
    background(255);
    //mover();
    //rebotar();
    mostrar();
}
```

## Argumentos

Los argumentos son valores que le pasamos a la funcion, son parametros en los cuales la funcion se va a ejecutar.

Tomemos como ejemplo la funcion circuloRojo y agregemos un argumento.

```javascript
function circuloRojo(let diametro) {
    fill(255, 0, 0);
    ellipse(50,50, diametro, diametro);
}
```

Cuando declaramos una funcion y le agregamos un argumentos, lo que estamos haciendo es crear una variable local que solo puede ser usada dentro de esa funcion.

Cuando llamemos en el draw esta funcion, el valor que agreguemos sera asignado a la variable diametro y el circulo se dibujara al tamaño establecido.

```javascript
circuloRojo(20) //El circulo toma un diametro de 20 pixeles
circuloRojo(80) //El circulo toma un diametro de 80 pixeles
```

De la misma manera, si usamos el ejemplo de la funcion mover\(\) de la pelota que rebota, podemos agregar un argumento para la velocidad:

```javascript
function mover(let factorVel) {
    x = x + (vel * factorVel);
}
```

De esta manera multiplicamos la velocidad de movimiento de la pelota:

```javascript
mover(2) //Se mueve dos veces mas rapido
mover(5) //se mueve cinco veces mas rapido
```

La cantidad de argumentos y los tipos de los mismos no tienen un limite, por ejemplo:

```javascript
function mostrar(let x, let y, color c) {
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

```javascript
function draw() {
  mostrar(50, 100, color(255, 0, 0));
  mostrar(100, 70, color(0, 0, 200));
}
```

Los argumentos de una funcion pueden ser pasados a la misma, tanto de manera literal con su valores o variables, asi como resultados de expresiones matematicas:

```javascript
function draw() {
  mostrar(100/2, 50 + 50, color(255, 0, 0));
}
```

