class Juego {
  JPantalla pantallaInicio;
  JMapa mapa;
  int pantallaActual=0;


  Juego() {
    mapa=new JMapa();
    this.pantallaActual=0;
    this.pantallaInicio= new JPantalla("¡Bienvenido!", "Muevete y ayuda a Jim\n a llegar al bote\n antes que el pirata", "Jugar");
  }

  void dibujar() {
    if (this.inicioDelJuego()) {
      this.pantallaInicio.dibujar();
    } else if (this.estoyJugando()) {
      this.mapa.dibujar();
      if (this.mapa.ganar()) {
        this.gane();
      } else if (this.mapa.perder()) {
        this.perdi();
      }
    } else if (this.gane()) {
    } else if (this.perdi()) {
    }
  }

  void teclaPresionada() {
    this.mapa.teclaPresionada();
  }

  boolean inicioDelJuego() {
    return this.pantallaActual==0;
  }

  boolean estoyJugando() {
    return this.pantallaActual==1;
  }

  boolean perdi() {
    if (this.mapa.perder()) {
      this.pantallaActual=3;
    }
    return this.pantallaActual==3;
  }

  boolean gane() {
    if (this.mapa.ganar()) {
      this.pantallaActual=2;
    }
    return this.pantallaActual==2;
  }

  void mousePresionado() {
    this.pantallaInicio.mousePresionado();

    if (this.inicioDelJuego()) {      
      this.cambiarSiguientePantalla();
      this.mapa.iniciar();
    } else if (this.estoyJugando()) {
    } else if (this.gane()) {
    } else if (this.perdi()) {
    }
  }

  void cambiarSiguientePantalla() {
    if (this.inicioDelJuego()) {
      this.pantallaActual=1;
    } else if (this.estoyJugando()) {
      this.mapa.iniciar();
    } else if (this.gane()) {
    } else if (this.perdi()) {
    }
  }
}
