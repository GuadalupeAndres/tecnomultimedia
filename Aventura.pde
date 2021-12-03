class Aventura {
  Historia historia;
  PantallaInicial pantallaInicial;
  Credito creditos;
  int pantallaActual=0;

  Aventura() {
    this.historia = new Historia();
    this.pantallaInicial = new PantallaInicial();
    this.creditos = new Credito();
  }

  void dibujar() {
    if (this.inicio()) {
      this.pantallaInicial.dibujar("Créditos", "Aventura");
    } else if (this.estoyEnAventura()) {
      this.historia.dibujar();
      if (this.historia.volverInicio()==true) {
        this.siguientePantalla();
      }
    } else if (this.estoyEnCreditos()) {
      this.creditos.dibujar();
      if (this.creditos.volverInicio()==true) {
        this.siguientePantalla();
      }
    }
  }

  void mousePresionado() {
    this.pantallaInicial.mousePresionado();

    if (this.inicio()) {
      if (this.pantallaInicial.izquierda()) {
        this.creditos.iniciar();
        this.siguientePantalla();
      } else if (this.pantallaInicial.derecha()) {
        this.historia.iniciar();
        this.siguientePantalla();
      }
    } else if (this.estoyEnAventura()) {
      this.historia.mousePresionado();
    } else if (this.estoyEnCreditos()) {
      this.creditos.mousePresionado();
    }
  }

  void siguientePantalla() {
    if (this.inicio()) {
      if (this.pantallaInicial.izquierda()) {
        this.pantallaActual=2;
        this.estoyEnCreditos();
      } else if (this.pantallaInicial.derecha()) {
        this.pantallaActual=1;
        this.estoyEnAventura();
      }
    } else if (this.historia.volverInicio()==true) {
      this.pantallaActual=0;
      this.inicio();      
    } else if (this.creditos.volverInicio()==true) {
      this.pantallaActual=0;
      this.inicio();
    }
  }

  boolean inicio() {
    return pantallaActual==0;
  }

  boolean estoyEnAventura() {
    return pantallaActual==1;
  }

  boolean estoyEnCreditos() {
    return pantallaActual==2;
  }

  void teclaPresionada() {
    this.historia.teclaPresionada();
  }
}
