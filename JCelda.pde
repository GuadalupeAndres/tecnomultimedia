class JCelda {
  int posx, posy, tamCelda;
  boolean noHayNada=false;
  PImage bote;
  JPersonaje personaje;
  JArbol arbol;
  JEnemigo enemigo;

  JCelda(int posx, int posy, int tamCelda) {
    this.posx=posx;
    this.posy=posy;
    this.tamCelda=tamCelda;
    bote= loadImage("bote3.jpg");
  }

  void dibujar() {
    fill(#E3CA89);
    rect(this.posx, this.posy, this.tamCelda, this.tamCelda);
  }

  void teclaPresionada() {
    if (this.personaje!=null) {
      this.personaje.teclaPresionada();
    }
  }

  void crearPersonaje(JPersonaje personaje) {
    this.personaje=personaje;
    this.personaje.posx=this.posx;
    this.personaje.posy=this.posy;
    this.personaje.tamCelda=this.tamCelda;
    personaje.dibujar();
  }

  void crearArbol(JArbol arbol) {
    this.arbol=arbol;
    this.arbol.posx=this.posx;
    this.arbol.posy=this.posy;
    this.arbol.tamCelda=this.tamCelda;
    arbol.dibujar();
  }

  void crearEnemigo(JEnemigo enemigo) {
    this.enemigo=enemigo;
    this.enemigo.posx=this.posx;
    this.enemigo.posy=this.posy;
    this.enemigo.tamCelda=this.tamCelda;
    enemigo.dibujar();
  }

  void crearBote() {
    image(this.bote, this.posx, this.posy, this.tamCelda, this.tamCelda);
  }


  boolean noHayNada() {
    if (this.arbol==null && this.enemigo==null) { 
      this.noHayNada=true;
    }
    return  this.noHayNada;
  }
}
