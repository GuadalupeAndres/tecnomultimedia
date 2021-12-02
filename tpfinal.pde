// **************** Link Video de YouTube https://youtu.be/icJ3cEob43Y ****************
Aventura aventura; 

void setup(){
 size(500,500); 
 aventura = new Aventura(); 
}

void draw(){
  background(240);
  aventura.dibujar();
}

void mouseClicked(){
  aventura.mousePresionado();
}

void keyPressed(){
  aventura.teclaPresionada();
}
