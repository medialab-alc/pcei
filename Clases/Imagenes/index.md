## Imagenes externas  
p5.js nos permite incluir y trabajar con imagenes en nuestros programas, tanto dentro del canvas (pudiendo editarlas y modificarlas) como fuera del mismo, insertandolas como elementos HTML.  

### loadImage()
El proceso para utilizar imagenes en nuestros sketches dentro del canvas consta de dos pasos: el primero cargar la imagen en la memoria, a traves de la funcion `loadImage()`.  
Esta funcion toma como argumento la ruta relativa al archivo dentro de nuestra carpeta de trabajo.  

```javascript
let delfin;

function setup() {
  createCanvas(400, 400);
  delfin = loadImage('delfin.jpg');
}
```
La carga de imagenes siempre la realizamos dentro de la funcion `setup()` o, para una mejor practica, dentro de la funcion `preload()`. Esta ultima funcion se ejecuta antes del `setup()` y se asegura de no mostrar nada en el canvas hasta que todos los elementos esten cargados en memoria.

```javascript

let delfin;

function preload(){
  delfin = loadImage('delfin.jpg');
}

function setup(){
  createCanvas(400, 400);
}
```

### image()  
Una vez cargada la imagen usando la funcion `loadImage()` ya podemos mostrar la imagen en el canvas usando la funcion `image()`  
Esta funcion toma como argumento en primer lugar la imagen previamente almacenada en memoria, y luego una posicion en el canvas. Como argumento opcional, podemos especificar el tamaño al que queremos mostrar la imagen, de no especificar, se mostrara a su tamaño original.
En el siguiente ejemplo se muestra la imagen en la posicion del mouse.
```javascript
function draw() {
  image(delfin,mouseX, mouseY,100,100);
}
```
---  
### createCapture()
De la misma forma que cargamos una imagen externa a nuestro canvas, podemos hacer una simple modificacion al programa para capturar en su lugar la entrada de video de la camara de nuestro dispositivo.
La funcion `createCapture()` crea un elemento de captura HTML, que puede capturar tanto el VIDEO como el AUDIO a traves del microfono. La sintaxis es la siguiente:

```javascript  
let cam;

function setup() {
  createCanvas(400, 400);
  cam = createCapture(VIDEO);
}

function draw() {
  image(cam,mouseX, mouseY,100,100);
}
```
Por defecto, el elemento HTML creado se muestra por debajo del canvas, por esa razon tendremos dos entradas de video. Para ocultarlo, utilizamos la funcion `hide()` que viene asosciada al elemento HTML.
```javascript
function setup() {
  createCanvas(400, 400);
  cam = createCapture(VIDEO);
  cam.hide();
}
```
De esta manera, la imagen solo se mostrara en el canvas.


### filter()
Como complemento, se puede usar la funcion `filter()` para aplicar un filtro visual al canvas. [Referencia: filter()](https://p5js.org/es/reference/#/p5/filter)  
