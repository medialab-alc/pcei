int max = 2;
Burbuja[] lista_burbujas = new Burbuja [1000];

void setup() {
  size(500, 500, P2D);

  for (int i = 0; i < 1000; i++) {
    lista_burbujas[i] = new Burbuja(random(10, 60));
  }
}

void draw() {
  background(0, 0, 255);
  /*for (int i = 0; i < max; i++) {
   lista_burbujas[i].colision();
   lista_burbujas[i].mostrar();    
   lista_burbujas[i].mover();
   }*/

  lista_burbujas[0].colision(lista_burbujas[1]);
  lista_burbujas[0].mostrar();    
  lista_burbujas[0].mover();

  lista_burbujas[1].colision(lista_burbujas[0]);
  lista_burbujas[1].mostrar();    
  lista_burbujas[1].mover();
}

void mousePressed() {
  max++;
}

void keyPressed() {
  max--;
}
