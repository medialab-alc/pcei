# Objetos
--- 
Las variables y las funciones son los bloques constructores de la programación. Frecuentemente, muchas
funciones son utilizadas juntas para relacionar variables. La programación orientada a objetos, la cual es
posible con Processing, utiliza objetos y clases como bloques constructores. Una clase define un grupo de
métodos (funciones) y de campos (variables). Un objeto es simplemente una instancia de la clase. Los
campos de un objeto son, generalmente, accesibles solo vía sus propios métodos, lo cual permite ocultar su
complejidad del programa general. Similar a lo que ocurre al manejar, un conductor no ve los procesos de
ingeniería que ocurren en el motor, pero si puede ver la velocidad a la que va en el velocímetro. El mismo tipo
de abstracción es utilizada en la programación orientada a objetos (POO).

## Programación Orientada a Objetos
Un programa modular se compone de módulos de código, encargados de una tarea específica. Las variables
son la forma más básica en pensar en reutilizar elementos en un programa. Permiten que un valor pueda
aparecer la cantidad de veces que sea necesario y que sea cambiado. Las funciones abstraen una tarea
específica y permiten a los bloques de código se reutilizados. Generalmente, uno está conectado con lo que
la función hace, y no como ella funciona. La programación orientada a objetos extiende la modularidad de
utilizar variables y escribir funciones por relacionarlas entre ellas, al ser agrupadas juntas.
Es posible hacer una analogía entre los objetos del software y los artefactos reales. Para obtener una visión
del mundo como pequeños programas orientados a objetos, se presenta la siguiente lista:

```
Nombre    Manzana
Campos    color, peso
Métodos   crecer(), caer(), pudrir()

Nombre    Mariposa
Campos    especie, genero
Métodos   agitarAlas(), aterrizar()

Nombre    Radio
Campos    frecuencia, volumen
Métodos   encender(), tono(), establecerVolumen()

Nombre    Auto
Campos    marca, modelo, color, año
Métodos   acelerar(), frenar(), girar()
```

Al extender el ejemplo de la Manzana, se revelan posibilidades mas interesantes de la programación
orientada a objetos. Para hacer un programa que simule la vida de una manzana, el método crecer()
posiblemente reciba valores de entrada de temperatura y humedad. El método crecer() puede incrementar
el campo peso del objeto, basándose en esos valores de entrada. El método caer() se encontraría
revisando constantemente el campo peso, y cuando este pase cierto límite, la manzana caerá a la tierra. El
método pudrir() comenzará a funcionar una vez que la manzana llegue al suelo. Este método podría hacer
decrecer el campo peso y cambiar el color de la manzana.
Como queda dicho en la introducción, los objetos son creados con las clases y las clases son un conjunto de
métodos y campos. Los objetos de una clase deben tener un nombre propio, al igual que una variable. Por
ejemplo, dos objetos llamados fuji y golden pertenecen a la clase Manzana.

```
Nombre    fuji
Campos    color: red
          peso: 6.2

Nombre    golden
Campos    color: yellow
          peso: 8.4
 ```
Dos populares estilos de representación de clases son las tablas y un diagrama circular inspirado en la
biología de una célula. Cada estilo de representación muestra el nombre de la clase, los campos y los
métodos. Es muy útil definir las características de cada clase en alguno de estos diagramas antes de
comenzar con el código en sí. 

Dos populares estilos de representación de clases son las tablas y un diagrama circular inspirado en la
biología de una célula. Cada estilo de representación muestra el nombre de la clase, los campos y los
métodos. Es muy útil definir las características de cada clase en alguno de estos diagramas antes de
comenzar con el código en sí. 

| Manzana | fuji | golden |
| :-------------: |:-------------:| :-----:|
| color | red | yellow |
| peso | 6.2 | 8.4 |
| crecer() | crecer() | crecer() |
| caer() | caer() | caer() |
| pudrir() | pudrir() | pudrir() |

El diagrama circular adquiere más bien un concepto de encapsulación, la idea de que los campos de un
objeto no deberían ser accedidos desde afuera. Los métodos de un objeto actúan como un buffer entre el
código fuera de la clase y los datos contenidos.

# IMAGEN

Los campos y métodos de un objetos son accesibles a través del operador punto, un período. Para obtener el
calor de color del objeto fuji, la sintaxis correspondiente será fuji.color. Para ejecutar el método
crecer() dentro de objeto golden, habrá que escribir golden.crecer().

## Usando Clases y Objetos
Definir una clase es crear tu propio tipo de datos. Pero no como los tipos de datos primitivos tales como int,
float o boolean, sino más bien como los tipo String, PImage y PFont, por dicha razón siempre se
escriben con letra capital (primera letra en mayúsculas). Cuando se crea una clase, lo primero es pensar
cuidadosamente el código que llevará dentro, y no programar a la ligera. Lo común es hacer primero una lista
de variables requeridas (las cuales pasaran a llamarse campos), y determinar que tipo de datos serán.
En el primero de los ejemplos que se verán a continuación, un circulo es posicionado en la pantalla, pero el
código es escrito de una forma distinta a como se venía viendo (es escrito en un ámbito de paradigma
orientado a objetos). Es necesario dos campos que almacenen la posición del círculo, y un tercer campo que
controle su diámetro.

```
float x           Coordenada-x del círculo
float y           Coordenada-y del círculo
float diametro    Diámetro del círculo
```

El nombre de la clase debe ser cuidadosamente considerado. Este puede ser un nombre simbólico de lo que
se esté dibujando en pantalla, o un nombre de las convenciones de variables. Sin embargo, siempre, deben
ser escritos con la letra capital. Esto ayuda al programa a separar clases como String o PImage de los
tipos primitivos como int o boolean. El nombre de la clase para el siguiente ejemplo será Punto, puesto
que Circulo no hubiese sido pertinente al caso (ya que se esta dibujando un punto).
En principio, se dispondrá del programa escrito como programación estructurada, ya que siempre es
recomendable escribirlo así y luego convertirlo en un objeto:

```Processing
float x = 33;
float y = 50;
float diametro = 30;
void setup() {
  size(100, 100);
  smooth();
  noStroke();
}
void draw() {
  background(0);
  ellipse(x, y, diametro, diametro);
}
```
Para hacer a este código más útil y genérico, es necesario que la elipse tenga su propia clase. De esta forma,
antes del bloque setup(), la primer línea de código crea al objeto pt de la clase Punto. El objeto pt es
construido dentro del setup(). Luego, usando el operador punto, se le asignan los valores a la elipse dentro
del draw().

```Processing
Punto pt; //Declara el objeto
void setup() {
  size(100, 100);
  smooth();
  noStroke();
  pt = new Punto(); //Construye el objeto
  pt.x = 33; //Asigna 33 al campo x
  pt.y = 50; //Asigna 50 al campo y
  pt.diametro = 30; //Asigna 30 al campo diametro
}
void draw() {
  background(0);
  ellipse(pt.x, pt.y, pt.diametro, pt.diametro);
}
class Punto {
  float x, y; //Coordenada x e y
  float diametro; //Diámetro del círculo
}
```

Ahora ya está lista la clase Punto. Aún así, todavía no está siendo implementada de manera útil. En el
siguiente ejemplo, se le agregará un método a la clase Punto (es aquí donde la programación orientada a
objetos comienza a tomar ventaja). El método mostrar() es añadido a la clase Punto. Para añadir
métodos, necesario seguir la siguiente sintaxis:
```
void display()    Dibuja el círculo para mostrar en la ventana
```
En la última línea del código de la clase, se coloca el método mostrar(), el cual funciona como el operador
punto anteriormente visto. Dentro del método, se coloca la función que dibuja el círculo. Es evidente notar que
ahora los parámetros se escriben sin el operador punto, esto es porque la función ellipse() se encuentra
dentro de la clase Punto, por lo que no es necesario hacer una concatenación. 

```Processing
Punto pt; //Declara el objeto
void setup() {
  size(100, 100);
  smooth();
  noStroke();
  pt = new Punto(); //Construye el objeto
  pt.x = 33;
  pt.y = 50;
  pt.diametro = 30;
}
void draw() {
  background(0);
  pt.mostrar();
}
class Punto{
  float x, y, diametro;
  void mostrar() {
      ellipse(x, y, diametro, diametro);
 }
}
```

El siguiente ejemplo introduce un paso en la programación de objetos llamado constructor. Un constructor es
un bloque de código que es activado cuando el objeto es creado. El constructor siempre lleva el mismo
nombre que la clase, y es generalmente utilizado para asignar valores a los campos del objeto (si no existe el
constructor, el valor de los campos será cero). El constructor es otro tipo de método, solamente que no es
precedido por el void, puesto que no debe devolver ninguna clase de dato. Cuando el objeto pt es creado,
los parámetros 33, 50 y 30 son asignados a las variables xpos, ypos y dia, respectivamente con el
constructor. Con dicho bloque, los valores son asignados a los campos del objeto, x, y y diametro. Para
que los campos sean accesibles con cada método del objeto, ellos deben ser declarados fuera del
constructor. 

```Processing
Punto pt; //Declara el objeto
void setup() {
  size(100, 100);
  smooth();
  noStroke();
  pt = new Punto(33, 50, 30); //Construye el objeto
}
void draw() {
  background(0);
  pt.mostrar();
}
class Punto {
  float x, y, diametro;
  Punto(float xpos, float ypos, float dia) {
  x = xpos; //Asigna 33 a x
  y = ypos; //Asigna 50 a y
  diametro = dia; //Asigna 30 a diametro
 }
 void mostrar() {
   ellipse(x, y, diametro, diametro);
 }
}

```
Así mismo, la clase Punto puede ser extendida por agregar más métodos que mejoren su utilización en la
escena. El siguiente ejemplo extiende la funcionalidad de la clase por añadir movimiento constante de arriba a
abajo. Para esto es necesario determinar dos nuevos campos. Un campo que regule la velocidad y otro la
dirección del objeto. Los llamaremos vel y dir, respectivamente, para que sean cortos y figurativos. De esta
forma, vel será de tipo float para tener un mayor rango de velocidad, y dir un int ya que solo
necesitamos dos valores.

```
float     vel Distancia que se mueve cada cuadro
int dir   Dirección del movimiento (1 es abajo, -1 es arriba)
```
Para crear el movimiento deseado, se necesita actualizar la posición del objeto en cada cuadro. La dirección
también tiene que cambiar al llegar a los bordes de la ventana de representación. Además, hay que
considerar el tipo de valor a regresar. Como en este caso no se necesita regresar ningún valor, se antepone la
palabra clave void.
```
void mover()    Actualiza la posición del círculo
```
El código dentro de los métodos mover() y mostrar() podría incluirse en tan solo un método. Pero, por
cuestiones de claridad, en estos ejemplos se prefiere separarlos. 

```Processing
class Punto {
   float x, y; //Coordenada-x, coordenada-y
   float diametro; //Diámetro del círculo
   float vel; //Distancia que se mueve cada cuadro
   int dir = 1; //Dirección del movimiento (1 es abajo, -1 es arriba)

 //Constructor
 Punto(float xpos, float ypos, float dia, float sp) {
  x = xpos;
  y = ypos;
  diametro = dia;
  vel = sp;
 }

 void mover() {
  y += (vel * dir);
  if ((y > (height - diametro/2)) || (y < diametro/2)) {
    dir *= -1;
 }
 }
 void mostrar() {
  ellipse(x, y, diametro, diametro);
 }
}

```
Para guardar espacio y mantenerse enfocado en el programa en sí, los ejemplos que se muestran en el
presente manual no vuelven a mostrar el código de la clase Punto, y simplemente pone un comentario como
//Insertar clase Punto. Cuando usted vea un comentario como ese, copie y pegue el código de la
clase correspondiente en lugar del comentario. El siguiente ejemplo muestra el resultado de utilizar una clase
con un objeto en movimiento:

```Processing
Punto pt; //Declara el objeto
void setup() {
  size(100, 100);
  smooth();
  noStroke();
  pt = new Punto(33, 50, 30, 1.5); //Construye el objeto
}
void draw() {
  fill(0, 15);
  rect(0, 0, width, height);
  fill(255);
  pt.mover();
  pt.mostrar();
}
//Insertar clase Punto 
```

Como con las funciones, una clase bien escrita pone el foco en el resultado y no en los detalles de ejecución.
Los objetos deben construirse con el propósito de ser reutilizados. Luego de que un complejo programa es
escrito y codificado como un objeto, puede ser utilizado posteriormente como herramienta para construir un
nuevo programa. Por ejemplo, las funciones y las clases que vienen incluidas en Processing, son utilizadas
en cualquier programa de autor como simples herramientas.
Como con los tipos de variables, los objetos adicionales son añadidos al programa por declarar más nombres.
En el siguiente ejemplo se utilizan tres objetos, nombrados pt1, pt2, pt3, y cada uno tiene sus propios
métodos.

```Processing
Punto pt1, pt2, pt3; //Declara el objeto
void setup() {
  size(100, 100);
  smooth();
  noStroke();
  pt1 = new Punto(20, 50, 40, 0.5); //Construye pt1
  pt2 = new Punto(50, 50, 10, 2.0); //Construye pt2
  pt3 = new Punto(80, 50, 30, 1.5); //Construye pt3
}
void draw() {
  fill(0, 15);
  rect(0, 0, width, height);
  fill(255);
  pt1.mover();
  pt2.mover();
  pt3.mover();
  pt1.mostrar();
  pt2.mostrar ();
  pt3.mostrar ();
}
//Insertar clase Punto
```

