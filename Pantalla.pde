class Pantalla {
  String titulo, texto, textoBoton;
  PFont fuente, fuente2;
  boolean clickeado=false;
  PImage imagen;
  Boton boton;

  Pantalla(String titulo, String mensaje, String textoBoton) {
    boton = new Boton();
    imagen = loadImage("fondo2.jpeg");
    fuente=loadFont("ARBERKLEY-48.vlw");
    fuente2=loadFont("Gabriola-48.vlw");
    this.texto=mensaje; 
    this.textoBoton=textoBoton;
    this.titulo=titulo;
  }

  void dibujar() {
    image(imagen,0,0,width,height);
    textSize(20);
    textAlign(CENTER);
    textFont(fuente);
    text(this.titulo, width/2, height/3);
    textFont(fuente2, 30);
    text(texto, width/2, height/2);
    this.boton.dibujar(width-325, height-100, 150, 60, textoBoton);
  }

  boolean mousePresionado() {
    if (this.boton.mousePresionado()) {
      this.clickeado=true;
    } else {
      clickeado=false;
    }
    return clickeado;
  }
}
