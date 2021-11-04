class Mapa {
  Celda [][] celdas;
  boolean limites=false, ganar=false, perder=false, empezar=false;
  int cantidadCelda=10;
  int tamCelda = width/10;
  int posx=9, posy=0;
  int [] posArbolX;
  int []posArbolY;
  int posxEnemigo, posyEnemigo;

  Mapa() {
    celdas= new Celda [cantidadCelda][cantidadCelda];
    posArbolX= new int [15];
    posArbolY= new int [15];
    if (this.iniciar()) {
      for (int g=0; g< cantidadCelda; g++) {
        for (int j=0; j< cantidadCelda; j++) {
          celdas [g][j]= new Celda(g*tamCelda, j*tamCelda, tamCelda);
        }
      }

      for (int f=0; f<15; f++) {
        posArbolX [f]=round(random(0, 9));
        posArbolY [f]=round(random(1, 8));
      }
    }
  }

  void dibujar() {
      for (int g=0; g<this.cantidadCelda; g++) {
        for (int j=0; j< cantidadCelda; j++) {
          celdas [g][j].dibujar();
        }
      }
      for (int f=0; f<15; f++) {     
        this.celdas[posArbolX[f]][posArbolY[f]].crearArbol(new Arbol());
      }
    
    this.celdas[this.posx][this.posy].crearPersonaje(new Personaje());

    this.celdas[this.posxEnemigo][this.posyEnemigo].crearEnemigo(new Enemigo());
    this.moverAlEnemigo();

    this.celdas[5][9].crearBote();
  }

  void teclaPresionada() {
    for (int g=0; g< cantidadCelda; g++) {
      for (int j=0; j< cantidadCelda; j++) {
        celdas [g][j].teclaPresionada();
      }
    }   
    if (keyCode==UP) {
      this.moverArriba();
    } else if (keyCode==DOWN) {
      this.moverAbajo();
    } else if (keyCode==RIGHT) {
      this.moverDerecha();
    } else if (keyCode==LEFT) {
      this.moverIzquierda();
    }
  }

  void moverArriba() {
    if (this.posy>0) {
      if (this.celdas[this.posx][this.posy-1].noHayNada()) {
        this.posy-=1;
        if (this.posy<=0) {
          this.posy=0;
        }
      }
    }
  }

  void moverAbajo() {
    if (this.posy<9) {
      if (this.celdas[this.posx][this.posy+1].noHayNada()) {
        this.posy+=1;
        if (this.posy>=cantidadCelda) {
          this.posy=9;
        }
      }
    }
  }

  void moverDerecha() {
    if (this.posx<9) {
      if (this.celdas[this.posx+1][this.posy].noHayNada()) {
        this.posx+=1;
        if (this.posx>=cantidadCelda) {
          this.posx=9;
        }
      }
    }
  }

  void moverIzquierda() {
    if (this.posx>0) {
      if (this.celdas[this.posx-1][this.posy].noHayNada()) {
        this.posx-=1;
        if (this.posx<=0) {
          this.posx=0;
        }
      }
    }
  }

  void moverAbajoEnemigo() {
    if (this.posyEnemigo<9) {
      if (this.celdas[this.posxEnemigo][this.posyEnemigo+1].noHayNada()) {
        this.posyEnemigo+=1;
        if (this.posyEnemigo>=cantidadCelda) {
          this.posyEnemigo=9;
        }
      }
    }
  }

  void moverDerechaEnemigo() {
    if (this.posxEnemigo<9) {
      if (this.celdas[this.posxEnemigo+1][this.posyEnemigo].noHayNada()) {
        this.posxEnemigo+=1;
        if (this.posxEnemigo>=cantidadCelda) {
          this.posxEnemigo=9;
        }
      }
    }
  }

  void moverIzquierdaEnemigo() {
    if (this.posxEnemigo>0) {
      if (this.celdas[this.posxEnemigo-1][this.posyEnemigo].noHayNada()) {
        this.posxEnemigo-=1;
        if (this.posxEnemigo<=0) {
          this.posxEnemigo=0;
        }
      }
    }
  }

  boolean estaDentroDeLosLimites() {
    if (posxEnemigo>=1 && posxEnemigo<=8 && posyEnemigo>=1 && posyEnemigo<=8) {
      limites= true;
    } else {
      limites=false;
    }
    return limites;
  }

  void moverAlEnemigo() {
    if (posy>=posyEnemigo) {
      if (estaDentroDeLosLimites()) {
        this.moverAbajoEnemigo();
        if (posxEnemigo<5 && celdas[posxEnemigo][posyEnemigo+1].noHayNada==false && posyEnemigo<=9) {
          this.moverDerechaEnemigo();
          if (posyEnemigo==9) {
            posyEnemigo=9;
          }
        } else if (posxEnemigo>=1 && posxEnemigo<5 && celdas[posxEnemigo][posyEnemigo+1].noHayNada==false) {
          this.moverIzquierdaEnemigo();
        }
      }
    }
  }

  boolean ganar() {
    if (this.posx==5 && this.posy==9) {
      this.ganar=true;
    } else {
      ganar=false;
    }
    return ganar;
  }
  boolean perder() {
    if (this.posxEnemigo==5 && this.posyEnemigo==9) {
      this.perder=true;
    } else {
      perder=false;
    }
    return perder;
  }

  boolean iniciar() {
    this.posx=9;
    this.posy=0;
    this.posxEnemigo=1;
    this.posyEnemigo=1;
    this.ganar=false;
    this.perder=false;
    return empezar=true;
  }
}
