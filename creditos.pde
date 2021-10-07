void creditos() {

  if (pantallas==1) {
    image(fondocredito[0], 0, 0, width, height);
    opacidadtexto[0]++;
    textSize(30);
    textAlign(CENTER);
    fill(0, 0, 0, opacidadtexto[0]);
    textSize(60);
    text("La\nIsla del Tesoro", width/2, 150);
    if (opacidadtexto[0]>=255) {
      pantallas=2;
    }
  } else if (pantallas==2) {
    opacidad++;
    tint(opacidad);
    image(fondocredito[1], 1, y[0], width, height);
    textFont(fuente1);
    textAlign(RIGHT);
    textSize(25);
    fill(255);
    text("Directed by\n  CAPITÁN FLINT", 320, 150);
    if (opacidad>=255) {
      y[0]--;
      y[1]--;
      image(fondocredito[2], x[0], y[1], width, height);
      if (y[1]<=0) {
        y[1]=0;
        pantallas=3;
      }
    }
  } else if (pantallas==3) {
    image(fondocredito[2], x[0], 0, 600, height);
    opacidadtexto[1]++;
    image(fondocredito[3], x[1], 0, 1000, 500);
    fill(0, 0, 0, opacidadtexto[1]);
    textAlign(LEFT);
    textSize(20);
    text("Produced by\n  ROBERT L. STEVENSON", 50, 150);
    text("Executive producers\n  TRELAWNY\nDOCTOR LIVESEY\nJOHN SILVER", 300, 150);

    x[0]=x[0]-2;
    x[1]=x[1]-2;
    if (x[1]<=0) {
      pantallas=4;
    }
  } else if (pantallas==4) {
    x[1]=x[1]-2;
    image(fondocredito[3], x[1], -5, 1500, 500);
    if (x[1]<=100) {
      image(barquito, x[3], 300, 100, 170);
      x[3]=x[3]+3;
      fill(0);
      textAlign(LEFT);
      textSize(18);
      text("Original story by\n    JIM HAWKINS\n  DOCTOR LIVESEY", 20, 100);
      text("Character desing\n  SEÑOR ARROW", 200, 200);
      text("Character animation\n ABRAHAM GRAY", 300, 100);
    }
    if (x[3]>=300) {
      pantallas=5;
    }
  } else if (pantallas==5) {
    x[1]=x[1]-2;
    x[4]=x[4]-2;
    image(fondocredito[3], x[1], 0, 1500, 500);
    image(fondocredito[3], x[4], 0, 1500, 500);
    image(barquito, 350, 300, 100, 170);

    textAlign(LEFT);
    if (frameCount%90==0) {
      imagen++;
      opacidadtexto[2]=0;
    }
    if (imagen==1) {
      opacidadtexto[2]=opacidadtexto[2]+5;
      fill(0, opacidadtexto[2]);
      image(fondocredito[6], 5, 60, 170, 260);
      image(fondocredito[7], 320, 60, 170, 260);
      text("JIM\nHAWKINS", 190, 80);
      text("JOHN\nSILVER", 300, 350);
    } else if (imagen==2) {
      opacidadtexto[2]=opacidadtexto[2]+5;
      fill(0, opacidadtexto[2]);
      image(fondocredito[8], 5, 60, 170, 260);
      image(fondocredito[9], 320, 60, 170, 260);
      text("SQUIRE\nTRELAWNY", 190, 80);
      text("DOCTOR\nLIVESEY", 300, 350);
    } else if (imagen==3) {
      opacidadtexto[2]=opacidadtexto[2]+5;
      fill(0, opacidadtexto[2]);
      image(fondocredito[10], 5, 60, 170, 260);
      image(fondocredito[11], 320, 60, 160, 260);
      text("BILLY\nBONES", 190, 80);
      text("PEW", 300, 350);
    } else if (imagen==4) {
      opacidadtexto[2]=opacidadtexto[2]+5;
      fill(0, opacidadtexto[2]);
      image(fondocredito[12], 5, 60, 170, 260);
      image(fondocredito[13], 320, 60, 170, 260);
      text("BEN\nGUNN", 190, 80);
      text("ISRAEL\nHANDS", 300, 350);
    } else if (imagen==5) {
      opacidadtexto[2]=opacidadtexto[2]+5;
      fill(0, opacidadtexto[2]);
      image(fondocredito[14], 10, 60, 290, 260);
      text("PERRONEGRO\nDICK JOHNSON\nJOB ANDERSON\nGEORGE MERRY", 300, 90);
    } else if (imagen==6) {
      image(im10, 10, 60, 290, 260);
      text("PERRONEGRO\nDICK JOHNSON\nJOB ANDERSON\nGEORGE MERRY", 300, 90 );
    }
    if (x[4]<=0) {
      pantallas=6;
    }
  } else if (pantallas==6) {
    x[4]=x[4]-2;
    x[5]=x[5]+4;
    x[7]=x[7]-2;
    image(fondocredito[3], x[4], 0, 1500, 500);
    image(barquito, 300, y[5], 100, 170);
    image(fondocredito[4], x[7], 0, 600, 500);

    if (x[5]>=50&&x[5]<=650) {
      fill(255, opacidadtexto[3]);
      opacidadtexto[3]=opacidadtexto[3]+x[6];
      text("Director of photografy\nSEÑORA HAWKINS", 80, 100);
    } else if (x[5]>=650&&x[5]<=1250) {
      fill(255, opacidadtexto[4]);
      opacidadtexto[4]=opacidadtexto[4]+x[6];
      text("Screen story by\nSEÑORA HAWKINS", 150, 100);
    } else if (x[5]>=1250&&x[5]<=1850) {
      fill(255, opacidadtexto[5]);
      opacidadtexto[5]=opacidadtexto[5]+x[6];
      text("Music by\nABRAHAM GRAY\nMusic produced by\nMARINAEROS", 300, 100);
    } else if (x[5]>=1850&&x[5]<=2450) {
      fill(255, opacidadtexto[6]);
      opacidadtexto[6]=opacidadtexto[6]+x[6];
      text("Visual effects supervisor\nSEÑOR DANCE\nCAPITAN SMOLLET", 380, 100);
    }

    if (x[7]<=400) {
      y[5]=500;
    }
    if (x[7]<=0) {
      x[7]=0;
      pantallas=7;
    }
  } else if (pantallas==7) {
    y[3]=y[3]-5;
    y[4]=y[4]-5;
    image(fondocredito[4], 0, y[3], width, height);
    image(fondocredito[5], 0, y[4], width, height);
    if (y[4]<=0) {
      y[4]=0;
      pantallas=8;
    }
  } else if (pantallas==8) {
    opacidadtexto[7]=opacidadtexto[7]+4;
    fill(255, opacidadtexto[7]);
    textSize(20);
    textAlign(CENTER);
    image(fondocredito[5], 0, 0, width, height);
    image(equis, 140, 145, 150, 150);
    text("a ROBERT L. STEVENSON Production", width/2, 80);
    image(tesoro, x[8], 300, 360, 170);
    
  }
  if (boton(width/3, height-50, 150, 30, "Volver")) {
      pantalla=0;
    }
}
