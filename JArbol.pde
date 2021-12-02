class JArbol{
  PImage arbol;
  int posy, posx, tamCelda;
  
  JArbol(){
    this.arbol= loadImage("arbol1.png");
  }
  
  void dibujar(){
    image(arbol,this.posx, this.posy,this.tamCelda, this.tamCelda);
  }
 
  
}
