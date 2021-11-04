class Juego {
  Pantalla pantallaInicio, pantallaPerder, pantallaGanar;
  Mapa mapa;
  int pantallaActual=0;


  Juego() {
    mapa=new Mapa();
    pantallaInicio= new Pantalla("¡Bienvenido!","Muevete y ayuda a Jim\n a llegar al bote\n antes que el pirata", "Jugar");
    pantallaGanar=new Pantalla("¡Ganaste!","Lograste llegar al bote,\nahora podrás tomar\ncontrol del barco", "Volver a inicio");
    pantallaPerder= new Pantalla("¡Perdiste!","Los piratas llegaron antes\nal bote, ahora se\napropiaron del barco", "Volver a intentar");
  }

  void dibujar() {
    if (inicioDelJuego()) {
      pantallaInicio.dibujar();
    } else if (estoyJugando()) {
      this.mapa.dibujar();
      if (this.mapa.ganar()) {
        this.gane();
      } else if (this.mapa.perder()) {
        this.perdi();
      }
    } else if (this.gane()) {
      pantallaGanar.dibujar();       
    } else if (this.perdi()) {
      pantallaPerder.dibujar();
    }
  }

  void teclaPresionada() {
    mapa.teclaPresionada();
  }

  boolean inicioDelJuego() {
    return pantallaActual==0;
  }

  boolean estoyJugando() {
    return pantallaActual==1;
  }

  boolean perdi() {
    if (this.mapa.perder()) {
      pantallaActual=3;
    }
    return pantallaActual==3;
  }

  boolean gane() {
    if (this.mapa.ganar()) {
      pantallaActual=2;
    }
    return pantallaActual==2;
  }

  void mousePresionado() {
    pantallaInicio.mousePresionado();
    pantallaGanar.mousePresionado();
    pantallaPerder.mousePresionado();

    if (inicioDelJuego()) {      
      cambiarSiguientePantalla();
      this.mapa.iniciar();
    } else if (estoyJugando()) {
      
    } else if (this.gane()) {
      cambiarSiguientePantalla();
    } else if (this.perdi()) {
      cambiarSiguientePantalla();
    }
  }

  void cambiarSiguientePantalla() {
    if (inicioDelJuego()) {
      this.pantallaActual=1;
    } else if (estoyJugando()) {
      this.mapa.iniciar();
    } else if (this.gane()) {
      this.pantallaActual=0;
    } else if (this.perdi()) {
      this.pantallaActual=0;
    }
  }
}
