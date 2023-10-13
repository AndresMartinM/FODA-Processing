class Boton
{
  // coordenada del centro del boton
  Vector2 pos;
  // medida del boton en pixeles horizontal
  int ancho;
  // medida del boton en pixeles vertical
  int alto;

  Boton(Vector2 posicion, int xsize, int ysize) {
    pos = posicion;
    ancho = xsize;
    alto = ysize;
  }

  void mostrar() {
    if (this.hover()) {
      fill(0);
    } else {
      fill(100);
    }
    rect(pos.x-(ancho/2), pos.y-(alto/2), ancho, alto, 20);
  }

  boolean hover() {
    int x1 = pos.x - (ancho/2);
    int x2 = x1 + ancho;
    int y1 = pos.y - (alto/2);
    int y2 = y1 + ancho;
    if (mouseX >= x1  && mouseX <= x2 && mouseY >= y1 && mouseY <= y2) {
      return true;
    } else {
      return false;
    }
  }
}
