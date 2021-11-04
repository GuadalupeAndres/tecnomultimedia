//************* Video de YOUTUBE https://youtu.be/H6_yRZ0ELMo ************

Juego juego;

void setup(){
 size(500,500);
 juego= new Juego();
}

void draw(){
  juego.dibujar();
}

void keyPressed(){
  juego.teclaPresionada();
  
}

void mouseClicked(){
 juego.mousePresionado(); 
}
