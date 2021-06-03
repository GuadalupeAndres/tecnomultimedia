PFont fuente1;
PFont fuente2;

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
int pantalla;


boolean condicionfin;



void setup(){
  size(600,400);
  
  
  fuente1=loadFont("ARBERKLEY-48.vlw");
  fuente2=loadFont("ARBLANCA-48.vlw");
  fondo0=loadImage("0.jpg");
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
 opacidadtexto4= random(40,100);
 opacidadtexto5= random(40,100);
 opacidadtexto6= random(40,100);
 opacidadtexto7= random(40,100);
 opacidadtexto8= random(40,100);
 
 opacidad2=50;
 opacidad=100;
 
 pantalla=0;
 
 imagen=0;
 
 y1=0;
 y2=400;
 y3=round(random(500,300));
 y4=0;
 y5=400;
 y6=170;
 
 x1=0;
 x2=600;
 x3=600;
 x4=100;
 x5=1360;
 x6=2;
 x7=round(random(1,5));
 x8=1360;
 x9=round(random(1,230));
 
 condicionfin= mouseX<=(x9+260);
 
 
 
  
  
  
}


void draw(){
  background(220);
  
if(pantalla==0){
  image(fondo0, 0, 0,600,400);
  fill(#AF7810, 70);
  noStroke();
  rectMode(CENTER);
  rect(300,330,300,80);
  textFont(fuente1,25);
  fill(#F5E0A6);
  textAlign(CENTER);
  text("Abre este misterioso mapa\npara iniciar una gran aventura",300,320);
  
  
 } else if (pantalla==1){
   image(fondo1,0,0,600,400);
   opacidadtexto++;
  textFont(fuente1,30);
  textAlign(CENTER);
  fill(0,0,0,opacidadtexto);
  textSize(60);
  text("La\nIsla del Tesoro",300,150);
   if(opacidadtexto>=255){
 pantalla=2;
}
    
 } else if (pantalla==2){
   opacidad++;
   tint(opacidad);
  image(fondo2,1,y1,600,400);
  textAlign(RIGHT);
  textFont(fuente2,25);
  fill(255);
  text("Directed by\n  CAPITÁN FLINT",520,150);
  if(opacidad>=255){
    y1--;
    y2--;
    image(fondo3, x1, y2,600,400);
    if(y2<=0){
      y2=0;
      pantalla=3;
    }
  }
  
 } else if (pantalla==3){
   image(fondo3,x1,0,600,400);
   opacidadtexto2++;
  image(fondo4,x2,0,1000,400);
  fill(0,0,0,opacidadtexto2);
   textAlign(LEFT);
  text("Produced by\n  ROBERT L. STEVENSON",50,150);
  text("Executive producers\n  TRELAWNY\nDOCTOR LIVESEY\nJOHN SILVER",400,150);
  
     x1=x1-2;
     x2=x2-2;
    if(x2<=0){
       pantalla=4;
    }
    
 } else if (pantalla==4){
   x2=x2-2;
   image(fondo4,x2,-5,1500,400);
    if(x2<=100){
    image(barquito,x4,170,100,170);
    x4=x4+3;
    fill(0);
    textAlign(LEFT);
    textSize(25);
  text("Original story by\n    JIM HAWKINS\n  DOCTOR LIVESEY",20,100);
  text("Character desing\n  SEÑOR ARROW",200,100);
  text("Character animation\n ABRAHAM GRAY",400,100);
    }
    if(x4>=300){
      pantalla=5;
    }
   
 } else if (pantalla==5){
   x2=x2-2;
   x5=x5-2;
   image(fondo4,x2,0,1500,400);
   image(fondo4,x5,0,1500,400);
   
   image(barquito,300,170,100,170);
   

   textAlign(LEFT);
    if(frameCount%90==0){
      imagen++;
      opacidadtexto3=0;
    }
    if(imagen==1){
      opacidadtexto3=opacidadtexto3+5;
      fill(0,opacidadtexto3);
    image(im1,5,60,170,260);
    image(im2,420,60,170,260);
    text("JIM\nHAWKINS",190,80);
    text("JOHN\nSILVER",360,100);
    
    }else if(imagen==2){
      opacidadtexto3=opacidadtexto3+5;
      fill(0,opacidadtexto3);
      image(im3,5,60,170,260);
      image(im4,420,60,170,260);
      text("SQUIRE\nTRELAWNY",190,80);
      text("DOCTOR\nLIVESEY",360,100);
    }else if(imagen==3){
      opacidadtexto3=opacidadtexto3+5;
      fill(0,opacidadtexto3);
      image(im5,5,60,170,260);
      image(im6,420,60,160,260);
      text("BILLY\nBONES",190,80);
      text("PEW",360,100);
    }else if(imagen==4){
      opacidadtexto3=opacidadtexto3+5;
      fill(0,opacidadtexto3);
      image(im7,5,60,170,260);
      image(im8,420,60,170,260);
      text("BEN\nGUNN",190,80);
      text("ISRAEL\nHANDS",360,100);
    }else if(imagen==5){
      opacidadtexto3=opacidadtexto3+5;
      fill(0,opacidadtexto3);
      image(im9,10,60,290,260);
      text("PERRONEGRO\nDICK JOHNSON\nJOB ANDERSON\nGEORGE MERRY",370,90);
    }else if (imagen==6){
      image(im10,10,60,290,260);
      text("PERRONEGRO\nDICK JOHNSON\nJOB ANDERSON\nGEORGE MERRY",370,90);
    }
    if(x5<=0){
      pantalla=6;
    }
   
 } else if (pantalla==6){
   x5=x5-2;
   x6=x6+4;
   x8=x8-2;
   image(fondo4,x5,0,1500,400);
   
   image(barquito,300,y6,100,170);
   
   image(fondo5,x8,0,600,400);
   
   
   
  if(x6>=50&&x6<=650){
    fill(255,opacidadtexto4);
      opacidadtexto4=opacidadtexto4+x7;
      text("Director of photografy\nSEÑORA HAWKINS",20,100);
     
    }else if(x6>=650&&x6<=1250){
      fill(255,opacidadtexto5);
      opacidadtexto5=opacidadtexto5+x7;
      text("Screen story by\nSEÑORA HAWKINS",150,100);
      
    }else if(x6>=1250&&x6<=1850){
      fill(255,opacidadtexto6);
      opacidadtexto6=opacidadtexto6+x7;
      text("Music by\nABRAHAM GRAY\nMusic produced by\nMARINAEROS",280,100);
     
    }else if(x6>=1850&&x6<=2450){
      fill(255,opacidadtexto7);
      opacidadtexto7=opacidadtexto7+x7;
      text("Visual effects supervisor\nSEÑOR DANCE\nCAPITAN SMOLLET",360,100);
      
    }
    
    if(x8<=400){
      y6=500;
    }
    if(x8<=0){
     x8=0;
     pantalla=7;
    }
    
 } else if (pantalla==7){
   y4=y4-5;
   y5=y5-5;
    image(fondo5,0,y4,600,400);
    image(fondo6,0,y5,600,400);
    if(y5<=0){
      y5=0;
      pantalla=8;
    }
    
    
 } else if (pantalla==8){
   opacidadtexto8=opacidadtexto8+4;
   fill(255,opacidadtexto8);
   textSize(28);
   image(fondo6,0,0,600,400);
   image(equis,140,90,150,150);
   text("a ROBERT L. STEVENSON Production",100,80);
   image(tesoro,x9,230,260,170);
  
 }
  
  
 
  
  
  println(x6);
  
}


void mouseClicked(){
  
  if(mouseX<=400 && mouseY>=100 && pantalla==0){
    pantalla=1;
  }
  
  if(condicionfin && mouseX>x9 && mouseY>200 && pantalla==8){
     opacidadtexto=7; 
 opacidadtexto2=10;
 opacidadtexto4= random(40,100);
 opacidadtexto5= random(40,100);
 opacidadtexto6= random(40,100);
 opacidadtexto7= random(40,100);
 opacidadtexto8= random(40,100);
 
 opacidad2=50;
 opacidad=100;
 
 pantalla=0;
 
 imagen=0;
 
 y1=0;
 y2=400;
 y3=round(random(500,300));
 y4=0;
 y5=400;
 y6=170;
 
 x1=0;
 x2=600;
 x3=600;
 x4=100;
 x5=1360;
 x6=2;
 x7=round(random(1,5));
 x8=1360;
 x9=round(random(1,230));
 
 condicionfin= mouseX<=(x9+200);
  }
  
}
