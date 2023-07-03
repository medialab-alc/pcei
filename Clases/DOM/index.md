# DOM
Las siglas DOM significan Document Object Model, o lo que es lo mismo, la estructura del documento HTML. Una página HTML está formada por múltiples etiquetas HTML, anidadas una dentro de otra, formando un árbol de etiquetas relacionadas entre sí, que se denomina árbol DOM (o simplemente DOM).

![DOM](https://lenguajejs.com/javascript/dom/que-es/que-es-dom.png)

En Javascript, cuando nos referimos al DOM nos referimos a esta estructura de árbol, mediante la cuál podemos acceder a ella y modificar los elementos del HTML desde Javascript, añadiendo nuevas etiquetas, modificando o eliminando otras, cambiando sus atributos HTML, añadiendo clases, cambiando el contenido de texto, etc.
Esta posibilidad de trabajo con elementos HTML nos permite poder crear elementos de interaccion o construccion mas amplios que solo lo limitado a nuestro canvas, podemos utilizar las posibilidades de p5.js para trabajar sobre todo una pagina web.

## createButton()
Crea un elemento `button` en el DOM. Utiliza .size() para establecer el tamaño de visualización del botón. Usa .mousePressed() para especificar el comportamiento al pulsarlo.

```javascript
let button;
function setup() {
  createCanvas(100, 100);
  background(0);
  button = createButton('clickeame');
  button.position(0, 0);
  button.mousePressed(cambiarFondo);
}

function cambiarFondo() {
  let val = random(255);
  background(val);
}
```

## createSlider()
Crea un elemento `slider` en el DOM. Utiliza .size() para establecer el tamaño del slider.
```javascript
let slider;
function setup() {
  slider = createSlider(0, 255, 100);
  slider.position(10, 10);
  slider.size(1000);
}

function draw() {
  let val = slider.value();
  background(val);
}
```

## createElement()
Esta funcion permite crear cualquier elemento HTML con el contenido deseado, lo que permite generar etiquetas HTML en timpo real o cambiar su contenido de forma dinamica. 

```javascript
let h5 = createElement('h5', 'im an h5 p5.element!');
h5.style('color', '#00a1d3');
h5.position(0, 0);
```

### Referencia completa a los elementos DOM
[Referencia: DOM](https://p5js.org/es/reference/#group-DOM)

### Github Pages - Hosting para nuestro sketch
[Video de referencia, hasta el minuto 9](https://youtu.be/ZneWjyn18e8)

