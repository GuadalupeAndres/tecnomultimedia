void boton(float x, float y, float anc, float alt, String nombre) {
  if (mouseX>x && mouseX <x+anc && mouseY>y && mouseY<y+alt) {
    if (mousePressed) {
      fill(#984A1D);
    } else {
      fill(#F5B857);
    }
  } else {
    fill(#F0D8B3);
  }
  noStroke();
  rect(x, y, anc, alt);

  fill(0);
  textFont(fuente1);
  textAlign(CENTER);
  textSize(18);
  text(nombre, x+(anc/2), y+y/16);
}


void textos(String [] _texto, int numerot) {
  for (int i=0; i<_texto.length; i++) {
    String [] texto= split(_texto[i], "//");

    for (int f=0; f<texto.length; f++) {
      palb= append(palb, texto[f]);
    }
  }

  for (int g=0; g<palb.length; g++) {
    fill(0);
    textFont(fuente1);
    textSize(18);
    text(palb[numerot], tam, altu, width-26, height-26);
  }
}


void fondo0() {
  image(fondos[0], 0, height/2, width, height/2);
}


void fondito(PImage [] nombre, int numero) {

  image(nombre[numero], 0, 0, width, height/2);
}

void clickear (int ir, int paso) {
  if (mouseX>width/4 && mouseX<width/4+200 && mouseY>height-70 && mouseY < (height-70) + 50) {
    pantalla[ir]=1;
    pantalla[paso]=0;
  }
}


void clickear2(int ir1, int paso1, int ir2, int paso2) {

  if (mouseX>50 && mouseX<50+150 && mouseY>height-70 && mouseY < (height-70) + 50) {
    pantalla[ir1]=1;
    pantalla[paso1]=0;
  } else if (mouseX>300 && mouseX<300+150 && mouseY>height-70 && mouseY < (height-70) + 50) {
    pantalla[ir2]=1;
    pantalla[paso2]=0;
  }
}
