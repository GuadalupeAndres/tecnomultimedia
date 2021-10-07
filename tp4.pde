//***************** VIDEO YOUTBUE: https://youtu.be/CLGUARdVn9c *****************

PFont fuente, fuente1, fuente2;
String [] linea;
String [] palb={};
String [] texto={};
PImage [] fondos= new PImage [27];
PImage [] objetos= new PImage[6];
PImage [] fondocredito= new PImage[15];
int pantalla= 0;
int tam, altu;
boolean clickear=false;

PImage im10, barquito, tesoro, equis;
float [] opacidadtexto = new float[8];
float opacidad;
float opacidad2;
int [] x=new int [10];
int [] y = new int [6];
int imagen;
int pantallas;
boolean condicionfin=mouseX<=(x[8]+260);

void setup() {
  size(500, 500);
  linea= loadStrings("historia.txt");
  fuente= loadFont("ARBERKLEY-48.vlw");
  fuente1= loadFont("BellMT-48.vlw");
  fuente2=loadFont("ARBLANCA-48.vlw");

  for (int i=0; i<linea.length; i++) {
    String [] texto= split(linea[i], "//");

    for (int f=0; f<texto.length; f++) {
      palb= append(palb, texto[f]);
    }
  }
  for (int g=0; g<fondos.length; g++) {
    fondos[g] = loadImage("fondo"+g+".jpeg");
  }

  for (int g=0; g<objetos.length; g++) {
    objetos[g]= loadImage("objetos"+g+".png");
  }

  for (int g=0; g<fondocredito.length; g++) {
    fondocredito[g]= loadImage(g+".jpg");
  }

  im10=loadImage("17.png");
  equis=loadImage("18.png");
  tesoro=loadImage("19.jpg");
  barquito=loadImage("20.png");

  opacidadtexto[0]=7; 
  opacidadtexto[1]=10;
  opacidadtexto[3]= random(40, 100);
  opacidadtexto[4]= opacidadtexto[3];
  opacidadtexto[5]= opacidadtexto[3];
  opacidadtexto[6]= opacidadtexto[3];
  opacidadtexto[7]= opacidadtexto[3];
  opacidad2=50;
  opacidad=100;

  pantallas=1;

  imagen=0;
  y[0]=0;
  y[1]=400;
  y[2]=round(random(500, 300));
  y[3]=0;
  y[4]=400;
  y[5]=300;

  x[0]=0;
  x[1]=600;
  x[2]=600;
  x[3]=100;
  x[4]=1360;
  x[5]=2;
  x[6]=round(random(1, 5));
  x[7]=1360;
  x[8]=round(random(1, 230));
  
}

void draw() {
  if (pantalla==0) {
    pantallaPrincipal();
  } else if (pantalla==1) {
    pantallaObjetos();
  } else if (pantalla==2) {
    creditos();
  } else if (pantalla==4) {
    crearpantalla1(4, 4, "Volver", 0);
  } else if (pantalla==5) {
    crearpantalla1(5, 5, "Siguiente", 6);
  } else if (pantalla==6) {
    crearpantalla1(6, 6, "Siguiente", 7);
  } else if (pantalla==7) {
    crearpantalla2(7, 7, "Eliges enfrentarlos", "Eliges contarle a\n Livesey", 9, 8);
  } else if (pantalla==8) {
    crearpantalla1(8, 8, "Siguiente", 10);
  } else if (pantalla==9) {
    crearpantalla2(9, 9, "Prefieres contarle\na Trelawny", "Eliges no contarle\na Trelawny", 8, 13);
  } else if (pantalla==10) {
    crearpantalla2(10, 10, "Eliges frenarte", "Eliges correr", 17, 11);
  } else if (pantalla==11) {
    crearpantalla1(10, 11, "Siguiente", 12);
  } else if (pantalla==12) {
    crearpantalla1(25, 12, "Volver", 0);
  } else if (pantalla==13) {
    crearpantalla1(13, 13, "Siguiente", 14);
  } else if (pantalla==14) {
    crearpantalla2(14, 14, "Te unes a ellos", "Rechazas la oferta", 15, 16);
  } else if (pantalla==15) {
    crearpantalla1(15, 15, "Volver", 0);
  } else if (pantalla==16) {
    crearpantalla1(25, 16, "Volver", 0);
  } else if (pantalla==17) {
    crearpantalla2(17, 17, "Confias en el", "No confias", 18, 12);
  } else if (pantalla==18) {
    crearpantalla1(18, 18, "Siguiente", 19);
  } else if (pantalla==19) {
    crearpantalla2(9, 19, "Vas al barco", "No vas al barco", 21, 20);
  } else if (pantalla==20) {
    crearpantalla1(25, 20, "Volver", 0);
  } else if (pantalla==21) {
    crearpantalla1(21, 21, "Siguiente", 22);
  } else if (pantalla==22) {
    crearpantalla1(22, 22, "Siguiente", 23);
  } else if (pantalla==23) {
    crearpantalla2(23, 23, "No lo detienes", "Huyes con el", 24, 25);
  } else if (pantalla==24) {
    crearpantalla1(24, 24, "Volver", 0);
  } else if (pantalla==25) {
    crearpantalla1(24, 25, "Volver", 0);
  }
}

void mouseClicked() {
  clickear=true;
  if (pantalla==1) {
    if (mouseX>0 && mouseX<0+125 && mouseY>125 && mouseY< 125+125) {
      pantalla=4;
    } else if (mouseX>125 && mouseX<125+125 && mouseY>0 && mouseY<0+125) {
      pantalla=5;
    } else if (mouseX>300 && mouseX<300+200 && mouseY>50 && mouseY< 50+200) {
      pantalla=4;
    }
  }
}
