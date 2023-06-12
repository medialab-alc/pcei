## p5.sound
p5.sound expande las propiedades de p5 para la generacion de audio, con capacidades de reproduccion, audio-input, analisis y sintesis.  
Para usos fuera del editor de p5, necesitamos agregar la biblioteca a nuestro html.  
```html
<script src="path/to/p5.sound.js"></script>
```

### p5.SoundFile
El objeto SoundFile se encarga de la funcionalidades necesarias para cargar y reproducir audios en nuestros sketchs. Solo necesitamos usar la funcion `loadSound()` con la ruta al archivo para cargarlo en memoria.
Sin embargo, dado que no todos los navegadores reconocen todos los formatos de audio, es util crear un directorio con varias versiones del mismo archivo en varios formatos. Utilizando la funcion `soundFormats` podemos establecer los formatos que tenemos y dejar que p5.js elija por nosotros.  

```javascript
let mySound;
function preload() {
  soundFormats('mp3', 'ogg');
  mySound = loadSound('assets/doorbell');
}

function setup() {
createCanvas(100, 100);
  background(220);
  text('tap here to play', 10, 20);
}

function mousePressed() {
  mySound.play();
}
```
[Referencia: p5.SoundFile](https://p5js.org/es/reference/#/p5.SoundFile)  
Es importante notar que debido a restricciones de los navegadores, todas las acciones de sonido deberan iniciar luego de que el usuario haya realizado una accion en el sitio.  

### p5.AudioIn  
Obtiene el audio proveniente del microfono del dispositivo. Podemos iniciar o detener la captura de audio utilizando las funciones `start()` y `stop()`. Tambien obtener su volumen utilizando la funcion `getLevel()`.  

```javascript

let mic;

 function setup(){
  let cnv = createCanvas(100, 100);
  cnv.mousePressed(userStartAudio);
  textAlign(CENTER);
  mic = new p5.AudioIn();
  mic.start();
}

function draw(){
  background(0);
  fill(255);
  text('tap to start', width/2, 20);

  micLevel = mic.getLevel();
  let y = height - micLevel * height;
  ellipse(width/2, y, 10, 10);
}
```
[Referencia: p5.AudioIn](https://p5js.org/es/reference/#/p5.AudioIn)  

### p5.Oscillator  
El objeto oscilador genera una señal de audio que oscila entre -1 y 1. Por defecto la señal generada es del tipo `sine`, pero podemos usar tambien `square, triangle y sawtooth` [Ver tipos de onda basicos](https://www.aulart.com/es/blog/formas-de-onda-del-oscilador-tipos-y-usos-parte-i/)  
Por defecto, el oscilador comienza a 440Hrz, el equivalente a la nota `LA`.  

```javascript
let osc, playing, freq, amp;

function setup() {
  let cnv = createCanvas(100, 100);
  cnv.mousePressed(playOscillator);
  osc = new p5.Oscillator('sine');
}

function draw() {
  background(220)
  freq = constrain(map(mouseX, 0, width, 100, 500), 100, 500);
  amp = constrain(map(mouseY, height, 0, 0, 1), 0, 1);

  text('Click para reproducir', 20, 20);
  text('freq: ' + freq, 20, 40);
  text('amp: ' + amp, 20, 60);

  if (playing) {
    // Se suaviza la transicion en 0.1 segundo
    osc.freq(freq, 0.1);
    osc.amp(amp, 0.1);
  }
}

function playOscillator() {
  // el oscilador se inicia con una accion del usuario

  osc.start();
  playing = true;
}

function mouseReleased() {
  //Se suavilza la salida del oscilador en 0.5 segundos
  osc.amp(0, 0.5);
  playing = false;
}
```
[Referencia: p5.Oscillator](https://p5js.org/es/reference/#/p5.Oscillator)  

### Usos avanzados de los osciladores: p5.Envelope
[Referencia: p5.Envelope](https://p5js.org/es/reference/#/p5.Envelope)

