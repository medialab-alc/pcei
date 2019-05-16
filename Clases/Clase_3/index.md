# Relleno y bordes

En Processing las figuras primitivas como las vistas hasta ahora están compuestas por dos elementos, un elemento de borde `stroke` y un elemento de interior, o relleno `fill`

## `stroke();`

Define el color de la linea de borde de una figura.

## fill`();`

Define el color de relleno de una figura.

> Debemos tener en cuenta que el orden en el que colocamos estos comandos importa. Deben ir siempre por delante de la función que dibuja la figura a la cual queremos aplicarle estas propiedades, ya que lo que hacen es decirle a Processing como debe preparase para dibujar esa figura.

# Color

### RGB

El modo por defecto en el que se tratan los colores en Processing es en base a valores numéricos correspondientes a los canales RGB.

Estos canales \(Red, Green, Blue\) corresponden a los tres colores primarios de la luz y se combinan para formar el resto.

En Processing, cada canal se representa con un valor numérico entre 0 y 255 y la sintaxis para definirlo, por ejemplo, en la función fill\(\) es la siguiente.

```Processing
fill(R, G, B);

// De esa manera, para obtener un color rojo pleno definimos:

fill(255, 0, 0);

// Damos todo el valor posible al canal rojo y dejamos en 0 los demas.

fill(0, 255, 0); //Verde
fill(0, 0, 255); //Azul

// Y de la misma manera:
fill(255, 255, 255); //Blanco
fill(0, 0, 0); //Negro
```

Si todos los canales están en el valor 255 obtenemos el color blanco, al igual que las propiedades de la luz cuando sumamos los tres canales. De la misma manera, si dejamos todos los canales en 0, marcamos la ausencia de luz, por lo que el color resultante es negro.

Ejemplo:

```Processing
size(300,300);

stroke(255, 0, 0);
fill(0, 0, 150);
ellipse(150, 150, 80, 80);
```

![](https://raw.githubusercontent.com/0000marcosg/CVyP/master/assets/2import.png)

### Posibilidades de relleno en fill\(\) y stroke\(\)

Dependiendo de la cantidad de argumentos que le demos a estas dos funciones tendremos varias opciones disponibles.

```Processing
fill(RGB);
fill(255);
// Con un parámetro, Processing asume que el resto de los parámetros son iguales. 
// Es equivalente a fill(255,255,255);

fill(RGB, Alfa);
fill(255, 255);
// Con dos parámetros, el primero corresponde a los tres valores de RGB.
// El segundo canal corresponde al valor de 'Alfa' o transparencia. 0 es totalmente transparente, 255 opaco.

fill(R, G, B);
fill(0, 120, 255);
// Cada valor corresponde a uno de los canales.

fill(R, G, B, Alfa);
fill(0, 120, 255, 200);
// Cuatro parámetros corresponden a cada uno de los canales RGB, sumado el canal de transparencia.
```

Ejemplo:

```Processing
size(300,300);

stroke(255, 0, 0);
fill(0, 0, 150);
ellipse(150, 150, 80, 80);

stroke(0, 0, 255);
fill(120, 0, 0, 180);
rect(100, 100, 50, 50);
```

![](https://raw.githubusercontent.com/0000marcosg/CVyP/master/assets/3import.png)

> #### Para poder trabajar en otros modos de color ver: [colorMode\(\)](https://processing.org/reference/colorMode_.html)

### background\(\);

La función background\(\) funciona de manera similar a la función fill\(\), pero en lugar de rellenar el interior de una figura rellena toda la ventana con el color marcado.

```Processing
size(300,300);
background(255);

stroke(255, 0, 0);
fill(0, 0, 150);
ellipse(150, 150, 80, 80);

stroke(0, 0, 255);
fill(120, 0, 0, 180);
rect(100, 100, 50, 50);
```

![](https://raw.githubusercontent.com/0000marcosg/CVyP/master/assets/4import.png)

---

# Flow, Flujo del programa

Hasta el momento, venimos ordenando funciones e instrucciones en Processing para ir dibujando elementos en pantalla, pero realmente aun no estamos programando en el sentido mas amplio del concepto.

Estamos dejando afuera uno de los elementos basicos: el flujo.

El flujo del software define la manera en la que este funciona y se ejecuta.

Podemos encontrar dentro del software dos tipos de flujo:

* ##### Basado en Eventos - Por ejemplo, aplicaciones web. Un evento se dispara cuando el usuario hace click, luego otro evento le sigue. Si el usuario no hace nada, el software no hace nada.
* ##### Basado en Loops - Un videojuego es un ejemplo de Flujo basado en Loop. Los enemigos, personajes, entorno se siguen manifestando y ejecutando en base a sus parámetros en una repetición constante hasta que algo los detenga.

En processing podremos hacer uso de ambos.

Con los elementos de flujo entra un concepto conocido como "Bloques de Código".

```Processing
{ //Abrimos bloque de código


    //Nuestro flamante programa


}//Cerramos bloque de codigo
```

En Processing, cuando entramos en el proceso de crear gráficos de manera dinámica, es decir con bloques de código y animaciones, debemos separar el programa en dos bloques principales.

```
setup{

//Este bloque de código se ejecuta solo cuando comienza el programa y no vuelve a ejecutarse.

}

draw{

//Este bloque de código se ejecuta de manera indefinida o hasta que el software se detenga.

}
```

El bloque `setup`corresponde a la parte de nuestro programa que no necesitamos que se ejecute mas de una vez, es la instancia de configuración y preparación.

El bloque `draw`lleva en su interior todos elementos que necesitamos cambien o se modifiquen durante la ejecución del software, es un bloque dinámico. Se repite de manera indefinida, es decir, cuando el programa termina de ejecutar la ultima linea del bloque `draw`, vuelve a la primera del mismo.

Sin embargo, la sintaxis para usar estos bloques en Processing es un poco diferente y debemos definirlo de la siguiente manera:

```Processing
void setup() {

    //Se ejecuta una sola vez.

}

void draw(){

    //Se ejecuta por siempre.

}
```

---

# Variables de Sistema

Las variables, de manera rápida \(ya que profundizaremos mas adelante sobre el concepto\) son elementos capaces de almacenar información dinámica en la memoria de nuestra computadora, permitiéndonos acceder a esos datos desde cualquier momento del programa.

Por ejemplo, pensemos que queremos dibujar un circulo cuyo valor de posición en X sea el mismo al valor de posición de X del mouse.

Diríamos:

```Processing
ellipse(Posision X del mouse, 150, 40, 40);
```

Evidentemente, Processing no conoce esa expresión, pero si conoce una variable integrada que nos da ese valor.

```Processing
ellipse(mouseX, 150, 40, 40);
```

`mouseX`es una variable de sistema, es decir, integrada en el núcleo de Processing y nos entrega la posicion X de nuestro mouse dentro de la ventana.

> La correspondiente al eje Y es la función `mouseY`.
>
> Otras variables de sistema son: [pmouseX](https://processing.org/reference/pmouseX.html), [pmouseY](https://processing.org/reference/pmouseY.html), [width](https://processing.org/reference/width.html) y [heigth](https://processing.org/reference/height.html)

---

# Eventos

Un evento en Processing es un bloque de código que se ejecuta solo una vez, no en el sentido del bloque `setup`, sino en el sentido de que se ejecuta una vez cuando el evento se dispara y espera hasta que sea disparado de nuevo.

```Processing
void mousePressed() {


}

void keyPressed() {


}
```

Por ejemplo, el evento `mousePressed` se dispara cada vez que el mouse es presionado y el evento `keyPressed` se dispara cada vez que una tecla es presionada.
