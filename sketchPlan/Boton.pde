class Boton
{
  // coordenada del centro del boton
  Vector2 pos;
  // medida del boton en pixeles horizontal
  int ancho;
  // medida del boton en pixeles vertical
  int alto;

  String img;

  Boton(Vector2 posicion, int xsize, int ysize) {
    pos = posicion;
    ancho = xsize;
    alto = ysize;
  }
  Boton(Vector2 posicion, int xsize, int ysize, String image) {
    pos = posicion;
    ancho = xsize;
    alto = ysize;
    img = image;
  }

  void mostrar() {
    color c = color(20);
    mostrar(c);
  }

  float fcMin = 0.75;
  float fcMax = 0.999;
  float factorColor = fcMin;

  float t = 0;
  float step = 0.15;

  void mostrar(color c) {
    colorAnim(c);
    rect(pos.x-(ancho/2), pos.y-(alto/2), ancho, alto, 20);
    if (img != null) {
      if (esSVG()) {
        fill(c);
        shape(svg(), pos.x-(ancho/2)+15, pos.y-(alto/2)+15, ancho-30, alto-30);
      } else {
        image(imagen(), pos.x-(ancho/2)+15, pos.y-(alto/2)+15, ancho-30, alto-30);
      }
    }
  }



  void colorAnim(color c) {
    if (hover() && t <= 1) {
      t += step;
    } else if (!hover() && t >= 0) {
      t -= step;
    }
    factorColor = map(animIn(t),0,1,fcMin,fcMax);
    fill(lerpColor(c, color(hue(c), saturation(c)-20, 100), factorColor));
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

  boolean esSVG() {
    if (img.endsWith("svg")) {
      return true;
    } else {
      return false;
    }
  }

  PImage imagen() {
    return loadImage(img);
  }
  PShape svg() {
    PShape v = loadShape(img);
    v.disableStyle();
    return v;
  }
}
