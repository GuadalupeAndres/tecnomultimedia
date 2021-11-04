class Boton {
  boolean area=false;
  boolean clickeado=false;
  int posx, posy, anc, alt;
  String accion;

  Boton() {
  }

  void dibujar(int posx, int posy, int anc, int alt, String accion) {
    this.posx=posx;
    this.posy=posy;
    this.anc=anc;
    this.alt=alt;
    this.accion=accion;

    if (this.estaEnElArea()) {      
      if (this.mousePresionado()) {
        fill(#984A1D);
      } else {
        fill(#F5B857);
      }
    } else {
      fill(#F0D8B3);
    }
    noStroke();
    rect(posx, posy, anc, alt);

    fill(0);
    textSize(25);
    text(accion, posx+(150/2), posy+25);
  }

  boolean mousePresionado() {
    if(mousePressed){
      this.clickeado=true;
    } else {
      this.clickeado=false;
    }
    return this.clickeado;
  }

  boolean estaEnElArea() {
    if (mouseX<posx+anc && mouseX>posx && mouseY<posy+alt && mouseY>posy) {
      area=true;
    } else {
      area=false;
    }
    return area;
  }
}
