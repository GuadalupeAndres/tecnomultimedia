class Juego {
  JPantalla pantallaInicio;
  JMapa mapa;
  int pantallaActual=0;
  boolean ganar=false, perder=false;


  Juego() {
    mapa=new JMapa();
    this.pantallaActual=0;
    this.pantallaInicio= new JPantalla("Jim llega al fortín gracias Ben.\nAl llegar se da cuenta que\nsería buena idea tomar control\ndel barco y esconderlo.", 
    "Muévete y ayuda a Jim a llegar al bote\nantes que el pirata, así podrá\nabordar el barco e intentar tomar control de él.", "Jugar");
  }

  void dibujar() {
    if (this.inicioDelJuego()) {
      this.pantallaInicio.dibujar();
      this.mapa.iniciar();
      println("JINI");//Borrar
    } else if (this.estoyJugando()) {
      this.mapa.dibujar();
      if (this.mapa.ganar()) {
        this.gane();
      } else if (this.mapa.perder()) {
        this.perdi();
      }
    } else if (this.gane()) {
      this.cambiarSiguientePantalla();
    } else if (this.perdi()) {
      this.cambiarSiguientePantalla();
    }
  }

  void teclaPresionada() {
    this.mapa.teclaPresionada();
  }

  boolean inicioDelJuego() {
    println("J0");//Borrar
    return this.pantallaActual==0;
  }

  boolean estoyJugando() {
    println("J1");//Borrar
    return this.pantallaActual==1;
  }

  boolean perdi() {
    if (this.mapa.perder()) {
      this.perder=true;
      this.pantallaActual=3;
    } else {
     this.perder=false; 
    }
    return this.perder;
  }

  boolean gane() {
    if (this.mapa.ganar()) {
      this.ganar=true;
      this.pantallaActual=2;
    } else {
     this.ganar=false; 
    }
    return this.ganar;
  }

  void mousePresionado() {
    if (this.inicioDelJuego()) { 
      if(this.pantallaInicio.mousePresionado()==true){
      this.cambiarSiguientePantalla();
      }
    } 
  }

  void cambiarSiguientePantalla() {
    if (this.inicioDelJuego()) {
      this.pantallaActual=1;
    } else if (this.estoyJugando()) {
      this.mapa.iniciar();
    } else if (this.gane()) {
      this.pantallaActual=0;
    } else if (this.perdi()) {
      this.pantallaActual=0;
    } 
  }
  
  void iniciar(){
   this.pantallaActual=0; 
    
  }
}
