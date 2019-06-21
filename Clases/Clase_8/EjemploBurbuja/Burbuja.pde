class Burbuja {
  float y;
  float x;
  float diametro;
  float vel;
  color col;
  float distancia;

  Burbuja(float tempD) {
    diametro = tempD;
    y = height + diametro/2;
    x = random(50, width-50);
    vel = random(1, 3);
    colorMode(HSB, 360, 100, 100);
    col = color(random(174, 214), 100, 100);
  }

  void mostrar() {
    fill(col);
    ellipse(x, y, diametro, diametro);
  }

  void mover() {
    y = y - vel;
    x = x + random(-1, 1);

    if (y < 0) {
      y = height + diametro/2;
    }
  }

  void colision(Burbuja otro) {
    distancia = dist(x, y, otro.x, otro.y);
    //println(distancia);

    if (distancia < 100 ) {
      col = color(random(360), 100, 100);
    } else {
      fill(col);
    }
  }
}
