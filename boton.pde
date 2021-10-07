boolean boton(int posx, int posy, int anc, int alt, String accion) {
  boolean clickeado=false;

  if (mouseX<posx+anc && mouseX>posx && mouseY<posy+alt && mouseY>posy) {
    if (clickear==true) {
      fill(#984A1D);
      clickeado=true;
    } else {
      fill(#F5B857);
    }
  } else {
    fill(#F0D8B3);
  }
  noStroke();
  rect(posx, posy, anc, alt);
  fill(0);
  textSize(18);
  textAlign(CENTER);
  text(accion, posx+(150/2), posy+25);

  return clickeado;
}
