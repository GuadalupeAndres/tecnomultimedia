class Arbol{
  PImage arbol;
  int posy, posx, tamCelda;
  
  Arbol(){
    this.arbol= loadImage("arbol1.png");
  }
  
  void dibujar(){
    image(arbol,this.posx, this.posy,this.tamCelda, this.tamCelda);
  }
 
  
}
