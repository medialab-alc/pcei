# Repetición, Iteracion.

Las estructuras repetitivas son encargadas de producir iteraciones. Es decir, a través de pocas líneas de código se puede repetir, prácticamente, infinitas veces una misma línea de código. Esto ayuda a un mejor rendimiento del programa, pero especialmente a un mejor rendimiento del programador, que con simples estructuras puede reducir notablemente el tiempo y, por ende, errores. 
Dentro de las posibilidades que tenemos al momento de usar una estructura de repeticion, nos encontramos con que podemos usar la estructura `while` o la estructura `for`.

Teniendo este codigo que produce una serie de lineas verticales:  
```Processing
//Programa Original

size(200, 200);
line(20, 20, 20, 180);
line(30, 20, 30, 180);
line(40, 20, 40, 180);
line(50, 20, 50, 180);
line(60, 20, 60, 180);
line(70, 20, 70, 180);
line(80, 20, 80, 180);
line(90, 20, 90, 180);
line(100, 20, 100, 180);
line(110, 20, 110, 180);
line(120, 20, 120, 180);
line(130, 20, 130, 180);
line(140, 20, 140, 180);
```
Se podria simplificar de la siguiente manera en un loop `while`:

```Processing
size(200, 200);
int x = 0;
while(x < 150) {
    line(x, 20, x, 180;
    x = x + 10;
}
```

Y de la siguiente manera utilizando un ciclo `for`
```Processing
//Codigo utilizando un FOR

size(200, 200);
for (int i = 20; i < 150; i += 10) {
    line(i, 20, i, 180);
}
```
---
La estructura `while` ejecuta el codigo en su interior mientras la expression en sus parentesis sea verdadera. Su sintaxis es casi identica a la del bloque `if` pero la diferencia fundamental es que el bloque `if` si su condicion es verdadera ejecutara el codigo en su interior solo una vez; mientras que la estructura `while` lo ejecutara de manera indefinida hasta que su condicion deje de ser verdadera.  
Es un bucle que puede ser peligroso si no nos aseguramos de que el bucle tenga una salida y la condicion deje de ser verdadera, puede colgar nuestro programa, e incluso Processing.

```	
while (condición) {
  acciones;
}
```
---

La estructura `for` perfecciona las repeticiones, pudiendo simplificarse su código básico en esta simple y funcional estructura:

```
for(iniciador, condición, actualización){
    acciones;
}
```

Los paréntesis asociados a esta estructura corresponden a tres acciones internas: iniciador , condición y actualización . Las acciones dentro del bloque del código se ejecutan constantemente, siempre y cuando la condición devuelva un true \(verdadero\). El iniciador asigna el valor inicial de la iteración, mientras que la actualización modifica el valor del iniciador con cada bucle. Los pasos en un FOR son los siguientes:

1. ##### El iniciador comienza a ejecutarse
2. ##### La condición evalúa si es true o false
3. ##### Si la condición es true , continúa en el paso 4, si es false , pasa al paso 6
4. ##### Ejecuta las acciones en el bloque
5. ##### Ejecuta la actualización y pasa al paso 2
6. ##### Sale de la estructura y continúa ejecutando el resto del programa

### Ejemplos de Uso:

```
// El iniciador es"int i = 20", la condición es"i < 80",
// y la actualización es "i += 5". Cabe notar que el punto-y-coma termina los dos primeros elementos

for (int i = 20; i < 80; i += 5) {
    // Esta línea continuará ejecutándose hasta que “i” sea mayor a 80.
    line(20, i, 80, i+15);
}
```

![](https://raw.githubusercontent.com/0000marcosg/CVyP/master/assets/5import.png)


```
for (int x = -16; x < 100; x += 10) {
    line(x, 0, x+15, 50);
}

strokeWeight(4);

for (int x = -8; x < 100; x += 10) {
    line(x, 50, x+15, 100);
}
```

![](https://raw.githubusercontent.com/0000marcosg/CVyP/master/assets/6import.png)

```
noFill();
for (int d = 150; d > 0; d -= 10) {
    ellipse(50, 50, d, d);
}
```

![](https://raw.githubusercontent.com/0000marcosg/CVyP/master/assets/7import.png)

```
for (int i = 0; i < 100; i += 2) {
    stroke(255-i);
    line(i, 0, i, 200);
}
```

![](https://raw.githubusercontent.com/0000marcosg/CVyP/master/assets/8import.png)

### Iteración Anidada

La estructura `FOR` produce repeticiones en una dimensión. Anidando iteraciones podemos crear efectos sumamente interesantes. Por ejemplo, teniendo tan solo dos coordenadas de puntos, si los anidamos en una estructura `FOR` , podemos cambiar una simple dimensión a una figura de dos dimensiones.

```
for (int y = 10; y < 100; y += 10) {
    point(10, y);
}
```

![](https://raw.githubusercontent.com/0000marcosg/CVyP/master/assets/9import.png)

```
for (int x = 10; x < 100; x += 10) {
    point(x, 10);
}
```

![](https://raw.githubusercontent.com/0000marcosg/CVyP/master/assets/10import.png)

```
for (int y = 10; y < 100; y += 10) {
    for (int x = 10; x < 100; x += 10) {
        point(x, y);
    }
}
```

![](https://raw.githubusercontent.com/0000marcosg/CVyP/master/assets/11import.png)

La técnica es muy útil para crear fondos, texturas y los conocidos patterns. Los números producidos por las variables de control de repeticiones pueden aplicarse a la posición, al color, al tamaño, a la transparencia o a cualquier otra cosa de atributo visual.

```
fill(0, 76);
noStroke();
smooth();
for (int y = -10; y <= 100; y += 10) {
    for (int x = -10; x <= 100; x += 10) {
        ellipse(x + y/8.0, y + x/8.0, 15 + x/2, 10);
    }
}
```

![](https://raw.githubusercontent.com/0000marcosg/CVyP/master/assets/12import.png)

```
for (int y = 1; y < 100; y += 10) {
    for (int x = 1; x < y; x += 10) {
        line(x, y, x+6, y+6);
        line(x+6, y, x, y+6);
    }
}
```

![](https://raw.githubusercontent.com/0000marcosg/CVyP/master/assets/13import.png)

---

![](https://raw.githubusercontent.com/0000marcosg/CVyP/master/assets/14import.png)

> #### Ejercicio:
>
> #### Utilizando la estructura `for` obtener un resultado similar al obtenido en la imagen de arriba.
