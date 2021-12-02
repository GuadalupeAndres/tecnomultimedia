class PantallaInicial {
  PImage fondo;
  boolean botonIzquierda=false, botonDerecha=false;
  PFont fuente;
  Boton botonDerecho;
  Boton botonIzquierdo;

  PantallaInicial() {
    botonDerecho = new Boton(300);
    botonIzquierdo = new Boton(50, 50);
    fondo=loadImage("fondo0.jpeg");
    fuente= loadFont("ARBERKLEY-48.vlw");
  }

  void dibujar(String textito1, String textito2) {
    image(this.fondo, 0, 0, width, height);
    fill(0);
    textSize(35);
    textFont(this.fuente);
    text("La Isla del\nTesoro", width/2, height/3);    
    this.botonIzquierdo.dibujar(textito1);
    this.botonDerecho.dibujar(textito2);
  }

  boolean izquierda() {
    if (this.botonIzquierdo.estaEnElArea()) {
      this.botonIzquierda=true;
    } else {
      this.botonIzquierda=false;
    }
    return this.botonIzquierda;
  }

  boolean derecha() {
    if (this.botonDerecho.estaEnElArea()) {
      this.botonDerecha=true;
    } else {
      this.botonDerecha=false;
    }
    return this.botonDerecha;
  }

  void mousePresionado() {
    this.botonDerecho.mousePresionado();
    this.botonIzquierdo.mousePresionado();
  }
}
