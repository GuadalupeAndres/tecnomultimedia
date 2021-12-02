class JPersonaje {
  int posy, posx, tamCelda;
  PImage personaje;
 
  JPersonaje() {
    this.personaje= loadImage("personaje1.png");
  }

  void dibujar() {
    image(this.personaje, this.posx, this.posy, this.tamCelda, this.tamCelda);
  }

  void teclaPresionada() {
   
  }
}
