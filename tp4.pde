//********** Link del video de youtube: https://youtu.be/om4TRfiqB4M **********

PFont fuente, fuente1, fuente2;
String [] linea;
String [] palb={};
PImage [] fondos= new PImage [20];
PImage [] objetos= new PImage[6];
int [] pantalla=new int[26];
int tam, altu;

PImage fondo0, fondo1, fondo2, fondo3, fondo4, fondo5, fondo6, im1, im2, im3, im4, im5, im6, im7, im8, im9, im10, barquito, tesoro, equis;

float opacidadtexto;
float opacidadtexto2;
float opacidadtexto3;
float opacidadtexto4;
float opacidadtexto5;
float opacidadtexto6;
float opacidadtexto7;
float opacidadtexto8;

float opacidad;
float opacidad2;

int x1, x2, x3, x4, x5, x6, x7, x8, x9, x10;
int y1, y2, y3, y4, y5, y6;
int imagen;
int pantallas;


boolean condicionfin;

void setup() {
  size(500, 500);
  tam= 20;
  altu= 270;
  fuente= loadFont("ARBERKLEY-48.vlw");
  fuente1= loadFont("BellMT-48.vlw");

  fondos[0]= loadImage("papiro.jpeg");
  fondos[1]= loadImage("fondo1.jpeg");
  fondos[2]= loadImage("fondo5.jpeg");
  fondos[3]= loadImage("fondo6.jpeg");
  fondos[4]= loadImage("fondo7.jpeg");
  fondos[5]= loadImage("fondo8.jpeg");
  fondos[6]= loadImage("fondo9.jpeg");
  fondos[7]= loadImage("fondo10.jpeg");
  fondos[8]= loadImage("fondo13.png");
  fondos[9]= loadImage("fondo14.jpeg");
  fondos[10]= loadImage("fondo15.jpeg");
  fondos[11]= loadImage("fondo17.jpeg");
  fondos[12]= loadImage("fondo18.jpeg");
  fondos[13]= loadImage("fondo21.jpeg");
  fondos[14]= loadImage("fondo22.jpeg");
  fondos[15]= loadImage("fondo23.jpeg");
  fondos[16]= loadImage("fondo24y25.jpeg");
  fondos[17]= loadImage("fondom.jpeg");
  fondos[18]= loadImage("fondo0.jpeg");
  fondos[19]= loadImage("fondo4.jpeg");

  objetos[0]= loadImage("monedas1.png");
  objetos[2]= loadImage("papel1.png");
  objetos[4]= loadImage("tesoro1.png");


  fuente2=loadFont("ARBLANCA-48.vlw");

  fondo1=loadImage("1.jpg");
  fondo2=loadImage("2.jpg");
  fondo3=loadImage("3.jpg");
  fondo4=loadImage("4.png");
  fondo5=loadImage("5.jpg");
  fondo6=loadImage("6.jpg");
  im1=loadImage("8.jpg");
  im2=loadImage("9.jpg");
  im3=loadImage("10.jpg");
  im4=loadImage("11.jpg");
  im5=loadImage("12.jpg");
  im6=loadImage("13.jpg");
  im7=loadImage("14.jpg");
  im8=loadImage("15.jpg");
  im9=loadImage("16.jpg");
  im10=loadImage("17.png");
  equis=loadImage("18.png");
  tesoro=loadImage("19.jpg");
  barquito=loadImage("20.png");

  opacidadtexto=7; 
  opacidadtexto2=10;
  opacidadtexto4= random(40, 100);
  opacidadtexto5= random(40, 100);
  opacidadtexto6= random(40, 100);
  opacidadtexto7= random(40, 100);
  opacidadtexto8= random(40, 100);

  opacidad2=50;
  opacidad=100;

  pantallas=1;

  imagen=0;

  y1=0;
  y2=400;
  y3=round(random(500, 300));
  y4=0;
  y5=400;
  y6=300;

  x1=0;
  x2=600;
  x3=600;
  x4=100;
  x5=1360;
  x6=2;
  x7=round(random(1, 5));
  x8=1360;
  x9=round(random(1, 230));

  condicionfin= mouseX<=(x9+260);

  pantalla[0]=1;
}

void draw() {
  background(240);
  linea= loadStrings("historia.txt");

  if (pantalla[0]==1) {

    image(fondos[18], 0, 0, width, height);
    fill(0);
    textSize(35);
    textFont(fuente);
    text("La Isla del\nTesoro", width/2, height/3);

    boton(width/10, height/2+height/4, 100, 30, "Créditos");

    boton(width/6+width/2, height/2+height/4, 100, 30, "Aventura");
  } else if (pantalla[1]==1) {

    fondito(fondos, 1);
    image(objetos[0], 0, 125, 125, 125);
    image(objetos[2], 125, 0, 125, 125);
    image(objetos[4], 300, 50, 200, 200);



    fondo0();
    textos(linea, 0);
  } else if (pantalla[2]==1) {

    if (pantallas==1) {
      image(fondo1, 0, 0, width, height);
      opacidadtexto++;
      textSize(30);
      textAlign(CENTER);
      fill(0, 0, 0, opacidadtexto);
      textSize(60);
      text("La\nIsla del Tesoro", width/2, 150);
      if (opacidadtexto>=255) {
        pantallas=2;
      }
    } else if (pantallas==2) {
      opacidad++;
      tint(opacidad);
      image(fondo2, 1, y1, width, height);
      textFont(fuente1);
      textAlign(RIGHT);
      textSize(25);
      fill(255);
      text("Directed by\n  CAPITÁN FLINT", 320, 150);
      if (opacidad>=255) {
        y1--;
        y2--;
        image(fondo3, x1, y2, width, height);
        if (y2<=0) {
          y2=0;
          pantallas=3;
        }
      }
    } else if (pantallas==3) {
      image(fondo3, x1, 0, 600, height);
      opacidadtexto2++;
      image(fondo4, x2, 0, 1000, 500);
      fill(0, 0, 0, opacidadtexto2);
      textAlign(LEFT);
      textSize(20);
      text("Produced by\n  ROBERT L. STEVENSON", 50, 150);
      text("Executive producers\n  TRELAWNY\nDOCTOR LIVESEY\nJOHN SILVER", 300, 150);

      x1=x1-2;
      x2=x2-2;
      if (x2<=0) {
        pantallas=4;
      }
    } else if (pantallas==4) {
      x2=x2-2;
      image(fondo4, x2, -5, 1500, 500);
      if (x2<=100) {
        image(barquito, x4, 300, 100, 170);
        x4=x4+3;
        fill(0);
        textAlign(LEFT);
        textSize(18);
        text("Original story by\n    JIM HAWKINS\n  DOCTOR LIVESEY", 20, 100);
        text("Character desing\n  SEÑOR ARROW", 200, 200);
        text("Character animation\n ABRAHAM GRAY", 300, 100);
      }
      if (x4>=300) {
        pantallas=5;
      }
    } else if (pantallas==5) {
      x2=x2-2;
      x5=x5-2;
      image(fondo4, x2, 0, 1500, 500);
      image(fondo4, x5, 0, 1500, 500);

      image(barquito, 350, 300, 100, 170);


      textAlign(LEFT);
      if (frameCount%90==0) {
        imagen++;
        opacidadtexto3=0;
      }
      if (imagen==1) {
        opacidadtexto3=opacidadtexto3+5;
        fill(0, opacidadtexto3);
        image(im1, 5, 60, 170, 260);
        image(im2, 320, 60, 170, 260);
        text("JIM\nHAWKINS", 190, 80);
        text("JOHN\nSILVER", 300, 350);
      } else if (imagen==2) {
        opacidadtexto3=opacidadtexto3+5;
        fill(0, opacidadtexto3);
        image(im3, 5, 60, 170, 260);
        image(im4, 320, 60, 170, 260);
        text("SQUIRE\nTRELAWNY", 190, 80);
        text("DOCTOR\nLIVESEY", 300, 350);
      } else if (imagen==3) {
        opacidadtexto3=opacidadtexto3+5;
        fill(0, opacidadtexto3);
        image(im5, 5, 60, 170, 260);
        image(im6, 320, 60, 160, 260);
        text("BILLY\nBONES", 190, 80);
        text("PEW", 300, 350);
      } else if (imagen==4) {
        opacidadtexto3=opacidadtexto3+5;
        fill(0, opacidadtexto3);
        image(im7, 5, 60, 170, 260);
        image(im8, 320, 60, 170, 260);
        text("BEN\nGUNN", 190, 80);
        text("ISRAEL\nHANDS", 300, 350);
      } else if (imagen==5) {
        opacidadtexto3=opacidadtexto3+5;
        fill(0, opacidadtexto3);
        image(im9, 10, 60, 290, 260);
        text("PERRONEGRO\nDICK JOHNSON\nJOB ANDERSON\nGEORGE MERRY", 300,90);
      } else if (imagen==6) {
        image(im10, 10, 60, 290, 260);
        text("PERRONEGRO\nDICK JOHNSON\nJOB ANDERSON\nGEORGE MERRY",300, 90 );
      }
      if (x5<=0) {
        pantallas=6;
      }
    } else if (pantallas==6) {
      x5=x5-2;
      x6=x6+4;
      x8=x8-2;
      image(fondo4, x5, 0, 1500, 500);

      image(barquito, 300, y6, 100, 170);

      image(fondo5, x8, 0, 600, 500);



      if (x6>=50&&x6<=650) {
        fill(255, opacidadtexto4);
        opacidadtexto4=opacidadtexto4+x7;
        text("Director of photografy\nSEÑORA HAWKINS", 20, 100);
      } else if (x6>=650&&x6<=1250) {
        fill(255, opacidadtexto5);
        opacidadtexto5=opacidadtexto5+x7;
        text("Screen story by\nSEÑORA HAWKINS", 150, 100);
      } else if (x6>=1250&&x6<=1850) {
        fill(255, opacidadtexto6);
        opacidadtexto6=opacidadtexto6+x7;
        text("Music by\nABRAHAM GRAY\nMusic produced by\nMARINAEROS", 280, 100);
      } else if (x6>=1850&&x6<=2450) {
        fill(255, opacidadtexto7);
        opacidadtexto7=opacidadtexto7+x7;
        text("Visual effects supervisor\nSEÑOR DANCE\nCAPITAN SMOLLET", 300, 100);
      }

      if (x8<=400) {
        y6=500;
      }
      if (x8<=0) {
        x8=0;
        pantallas=7;
      }
    } else if (pantallas==7) {
      y4=y4-5;
      y5=y5-5;
      image(fondo5, 0, y4, width, height);
      image(fondo6, 0, y5, width, height);
      if (y5<=0) {
        y5=0;
        pantallas=8;
      }
    } else if (pantallas==8) {
      opacidadtexto8=opacidadtexto8+4;
      fill(255, opacidadtexto8);
      textSize(20);
      textAlign(CENTER);
      image(fondo6, 0, 0, width, height);
      image(equis, 140, 145, 150, 150);
      text("a ROBERT L. STEVENSON Production", width/2, 80);
      image(tesoro, x9, 300, 360, 170);

      boton(width/4, height-50, 100, 30, "Volver");
    }
  } else if (pantalla[4]==1) {

    fondito(fondos, 19);
    fondo0();
    textos(linea, 4);

    boton(width/4, height-70, 200, 50, "Volver");
  } else if (pantalla[5]==1) {

    fondito(fondos, 2);

    fondo0();
    textos(linea, 5);

    boton(width/4, height-70, 200, 50, "Siguiente");
  } else if (pantalla[6]==1) {

    fondito(fondos, 3);
    fondo0();
    textos(linea, 6);

    boton(width/4, height-70, 200, 50, "Siguiente");
  } else if (pantalla[7]==1) {


    fondito(fondos, 4);
    fondo0();
    textos(linea, 7);

    boton(50, height-70, 150, 50, "Eliges enfrentarlos");

    boton(300, height-70, 150, 50, "Eliges contarle a\n Livesey");
  } else if (pantalla[8]==1) {

    fondito(fondos, 5);
    fondo0();
    textos(linea, 8);

    boton(width/4, height-70, 200, 50, "Siguiente");
  } else if (pantalla[9]==1) {

    fondito(fondos, 6);
    fondo0();
    textos(linea, 9);

    boton(50, height-70, 150, 50, "Prefieres contarle\na Trelawny");

    boton(300, height-70, 150, 50, "Eliges no contarle\na Trelawny");
  } else if (pantalla[10]==1) {

    fondito(fondos, 7);
    fondo0();
    textos(linea, 10);

    boton(50, height-70, 150, 50, "Eliges frenarte");

    boton(300, height-70, 150, 50, "Eliges correr");
  } else if (pantalla[11]==1) {

    fondito(fondos, 7);
    fondo0();
    textos(linea, 11);

    boton(width/4, height-70, 200, 50, "Siguiente");
  } else if (pantalla[12]==1) {

    fondito(fondos, 17);
    fondo0();
    textos(linea, 12);
    boton(width/4, height-70, 200, 50, "Volver");
  } else if (pantalla[13]==1) {

    fondito(fondos, 8);
    fondo0();
    textos(linea, 13);

    boton(width/4, height-70, 200, 50, "Siguiente");
  } else if (pantalla[14]==1) {

    fondito(fondos, 9);
    fondo0();
    textos(linea, 14);

    boton(50, height-70, 150, 50, "Te unes a ellos");

    boton(300, height-70, 150, 50, "Rechazas la oferta");
  } else if (pantalla[15]==1) {

    fondito(fondos, 10);
    fondo0();
    textos(linea, 15);

    boton(width/4, height-70, 200, 50, "Volver");
  } else if (pantalla[16]==1) {

    fondito(fondos, 17);
    fondo0();
    textos(linea, 16);

    boton(width/4, height-70, 200, 50, "Volver");
  } else if (pantalla[17]==1) {

    fondito(fondos, 11);
    fondo0();
    textos(linea, 17);

    boton(50, height-70, 150, 50, "Confias en el");

    boton(300, height-70, 150, 50, "No confias");
  } else if (pantalla[18]==1) {

    fondito(fondos, 12);
    fondo0();
    textos(linea, 18);

    boton(width/4, height-70, 200, 50, "Siguiente");
  } else if (pantalla[19]==1) {

    fondito(fondos, 6);
    fondo0();
    textos(linea, 19);
    boton(50, height-70, 150, 50, "Vas al barco");

    boton(300, height-70, 150, 50, "No vas al barco");
  } else if (pantalla[20]==1) {

    fondito(fondos, 17);
    fondo0();
    textos(linea, 20);


    boton(width/4, height-70, 200, 50, "Volver");
  } else if (pantalla[21]==1) {

    fondito(fondos, 13);
    fondo0();
    textos(linea, 21);


    boton(width/4, height-70, 200, 50, "Siguiente");
  } else if (pantalla[22]==1) {

    fondito(fondos, 14);
    fondo0();
    textos(linea, 22);


    boton(width/4, height-70, 200, 50, "Siguiente");
  } else if (pantalla[23]==1) {

    fondito(fondos, 15);
    fondo0();
    textos(linea, 23);
    boton(50, height-70, 150, 50, "No lo detienes");

    boton(300, height-70, 150, 50, "Huyes con el");
  } else if (pantalla[24]==1) {

    fondito(fondos, 16);
    fondo0();
    textos(linea, 24);
    boton(width/4, height-70, 200, 50, "Volver");
  } else if (pantalla[25]==1) {

    fondito(fondos, 16);
    fondo0();
    textos(linea, 25);

    boton(width/4, height-70, 200, 50, "Volver");
  }
}



void mouseClicked() {
  if (pantalla[0]==1) {
    if (mouseX>width/6+width/2 && mouseX <width/6+width/2+100 && mouseY>height/2+height/4 && mouseY<height/2+height/4+30) {
      pantalla[1]=1;
      pantalla[0]=0;
    } else if (mouseX>width/10 && mouseX <width/10+100 && mouseY>height/2+height/4 && mouseY<height/2+height/4+30) {
      pantalla[2]=1;
      pantalla[0]=0;
    }
  } else if (pantalla[1]==1) {
    if (mouseX>0 && mouseX<0+125 && mouseY>125 && mouseY< 125+125) {

      pantalla[4]=1;
      pantalla[1]=0;
    } else if (mouseX>125 && mouseX<125+125 && mouseY>0 && mouseY<0+125) {

      pantalla[5]=1;
      pantalla[1]=0;
    } else if (mouseX>300 && mouseX<300+200 && mouseY>50 && mouseY< 50+200) {

      pantalla[4]=1;
      pantalla[1]=0;
    }
  }else if (pantalla[2]==1) {
     clickear(0, 2);
  } else if (pantalla[4]==1) {

    clickear(0, 4);
  } else if (pantalla[5]==1) {

    clickear(6, 5);
  } else if (pantalla[6]==1) {

    clickear(7, 6);
  } else if (pantalla[7]==1) {

    clickear2(9, 7, 8, 7);
  } else if (pantalla[8]==1) {

    clickear(10, 8);
  } else if (pantalla[9]==1) {

    clickear2(8, 9, 13, 9);
  } else if (pantalla[10]==1) {

    clickear2(17, 10, 11, 10);
  } else if (pantalla[11]==1) {

    clickear(12, 11);
  } else if (pantalla[12]==1) {

    clickear(0, 12);
  } else if (pantalla[13]==1) {

    clickear(14, 13);
  } else if (pantalla[14]==1) {

    clickear2(15, 14, 16, 14);
  } else if (pantalla[15]==1) {

    clickear(0, 15);
  } else if (pantalla[16]==1) {

    clickear(0, 16);
  } else if (pantalla[17]==1) {

    clickear2(18, 17, 12, 17);
  } else if (pantalla[18]==1) {

    clickear(19, 18);
  } else if (pantalla[19]==1) {

    clickear2(21, 19, 20, 19);
  } else if (pantalla[20]==1) {

    clickear(0, 20);
  } else if (pantalla[21]==1) {

    clickear(22, 21);
  } else if (pantalla[22]==1) {

    clickear(23, 22);
  } else if (pantalla[23]==1) {

    clickear2(24, 23, 25, 23);
  } else if (pantalla[24]==1) {

    clickear(0, 24);
  } else if (pantalla[25]==1) {

    clickear(0, 25);
  }
}
