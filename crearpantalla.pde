void crearpantalla1(int fpantalla, int escribir, String accion, int siguiente) {
  int tam= 20;
  int altu= 270;
  image(fondos[fpantalla], 0, 0, width, height/2);
  image(fondos[26], 0, height/2, width, height/2);
  fill(0);
  textFont(fuente1);
  textSize(18);
  text(palb[escribir], tam, altu, width-26, height-26);

  boton(width/3, height-70, 150, 50, accion);

  if (boton(width/3, height-70, 150, 50, accion)) {
    pantalla=siguiente;
    clickear=false;
  }
}

void crearpantalla2(int fpantalla, int escribir, String accion1, String accion2, int siguiente1, int siguiente2) {
  int tam= 20;
  int altu= 270;
  image(fondos[fpantalla], 0, 0, width, height/2);
  image(fondos[26], 0, height/2, width, height/2);
  fill(0);
  textFont(fuente1);
  textSize(18);
  text(palb[escribir], tam, altu, width-26, height-26);

  boton(50, height-70, 150, 50, accion1);
  boton(300, height-70, 150, 50, accion2);

  if (boton(50, height-70, 150, 50, accion1)) {
    pantalla=siguiente1;
    clickear=false;
  } else if (boton(300, height-70, 150, 50, accion2)) {
    pantalla=siguiente2;
    clickear=false;
  }
}

void pantallaObjetos() {
  int tam= 20;
  int altu= 270;
  image(fondos[1], 0, 0, width, height/2);
  image(fondos[26], 0, height/2, width, height/2);
  image(objetos[0], 0, 125, 125, 125);
  image(objetos[2], 125, 0, 125, 125);
  image(objetos[4], 300, 50, 200, 200);

  if (mouseX>0 && mouseX<125 && mouseY>125 && mouseY<125+125) {
    image(objetos[1], 0, 125, 125, 125);
  } else if (mouseX>125 && mouseX<125+125 && mouseY>0 && mouseY<125) {
    image(objetos[3], 125, 0, 125, 125);
  } else if (mouseX>300 && mouseX<300+200 && mouseY>50 && mouseY<50+200) {
    image(objetos[5], 300, 50, 200, 200);
  }
  fill(0);
  textFont(fuente1);
  textSize(18);
  text(palb[0], tam, altu, width-26, height-26);
}

void pantallaPrincipal() {
  image(fondos[0], 0, 0, width, height);
  fill(0);
  textSize(35);
  textFont(fuente);
  text("La Isla del\nTesoro", width/2, height/3);

  if (boton(50, height-70, 150, 50, "Créditos")) {
    pantalla=2;
    clickear=false;
  } else if (boton(300, height-70, 150, 50, "Aventura")) {
    pantalla=1;
    clickear=false;
  }
}
