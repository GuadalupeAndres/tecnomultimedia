class JPantalla {
  String titulo, texto, textoBoton;
  PFont fuente, fuente2;
  boolean clickeado=false;
  PImage imagen;
  Boton boton;

  JPantalla(String titulo, String mensaje, String textoBoton) {
    boton = new Boton();
    imagen = loadImage("fondoJuego.jpeg");
    fuente=loadFont("ARBERKLEY-48.vlw");
    fuente2=loadFont("Gabriola-48.vlw");
    this.texto=mensaje; 
    this.textoBoton=textoBoton;
    this.titulo=titulo;
  }

  void dibujar() {
    image(imagen,0,0,width,height);
    textAlign(CENTER);
    textFont(fuente, 35);
    text(this.titulo, width/2, height/5);
    textFont(fuente2, 30);
    text(texto, width/2, height-200);
    this.boton.dibujar(textoBoton);
  }

  boolean mousePresionado() {
    if (this.boton.estaEnElArea()) {
      this.clickeado=true;
    } else {
      clickeado=false;
    }
    return clickeado;
  }
}
