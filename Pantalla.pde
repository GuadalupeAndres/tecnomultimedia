class Pantalla {
  Boton boton;
  Boton botonDerecho;
  Boton botonIzquierdo;
  Texto texto;
  int tipo, imgTexto;
  boolean botonIzquierda=false, botonDerecha=false; 
  PImage fondo, fondoPantalla;
  String accion1, accion2;

  Pantalla(int tipo, String accion1, String accion2, int imgTexto) {    
    boton = new Boton();
    botonDerecho = new Boton(300);
    botonIzquierdo = new Boton (50, 50);
    texto = new Texto();
    this.tipo=tipo;
    this.accion1=accion1;
    this.accion2=accion2;
    this.imgTexto=imgTexto;
    fondo=loadImage("fondo26.jpeg");
    fondoPantalla=loadImage("fondo"+imgTexto+".jpeg");
  }

  void dibujar() {
    image(fondoPantalla, 0, 0, width, height/2);
    image(fondo, 0, height/2, width, height/2);
    this.texto.dibujar(imgTexto);
    if (tipo==1) {
      this.dibujarUnBoton(accion1);
    } else {
      this.dibujarDosBotones(accion1, accion2);
    }
  }

  void mousePresionado() {
    this.boton.mousePresionado();
    this.botonDerecho.mousePresionado();
    this.botonIzquierdo.mousePresionado();
  }

  void dibujarUnBoton(String accion) {

    this.boton.dibujar(accion);
  }

  void dibujarDosBotones(String accion1, String accion2) {
    this.botonIzquierdo.dibujar(accion1);
    this.botonDerecho.dibujar(accion2);
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
}
