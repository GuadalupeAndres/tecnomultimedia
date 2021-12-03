class JEnemigo {
  int posy, posx, tamCelda;
  PImage enemigo;

  JEnemigo() {
    enemigo= loadImage("enemigo2.png");
  }

  void dibujar() {
    image(this.enemigo, this.posx, this.posy, this.tamCelda, this.tamCelda);
  }
}
