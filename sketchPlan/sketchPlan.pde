// Foda Paramétrico interactivo
//
// Etapas del Foda (para cada etapa tener ? ayuda) (separar interfaz en cuadrantes)
//
//   Listar Fortalezas
//   Listar Debilidades
//   Listar Oportunidades
//   Listar Amenazas
//
//   Asignar peso F (una por cada item)
//   Asignar calificacion F ( peso y calificacion en simultaneo?)
//   Asignar peso D
//   Asignar calificacion D
//   Asignar peso O
//   Asignar calificacion O
//   Asignar peso A
//   Asignar calificacion A
//
//   Revisar Ponderacion
//
/* Referencias
 uso del mouse :
 https://processing.org/examples/mousefunctions.html
 uso del texto :
 https://processing.org/examples/charactersstrings.html
 https://processing.org/examples/words.html
 uso de Class y objetos :
 https://processing.org/examples/objects.html
 uso de json :
 https://processing.org/examples/loadsavejson.html
 uso de GUI :
 https://processing.org/examples/button.html
 https://processing.org/examples/handles.html
 hoover :
 https://processing.org/examples/rollover.html
 */

String docmas = "img/file-earmark-plus.svg";
String docabr = "img/file-earmark-arrow-down.svg";
String equis = "img/x-circle.svg";
String punto = "img/asterisk.svg";
String check = "img/clipboard-check.svg";
String slide = "img/sliders2-vertical.svg";
String lista = "img/card-list.svg";
String izq = "img/arrow-left.svg";
String der = "img/arrow-right.svg";
String volver = "img/caret-left.svg";

int escena = 0;

int btnS = 60;
int btnM = 80;
int btnL = 120;

// fortaleza
color verde;
// debilidad
color amarillo;
// amenaza
color rojo;
// oportunidad
color azul;


// nuevo
Vector2 vector = new Vector2(200, 300);
Boton nuevo = new Boton(vector, btnL, btnL, docmas);

// abrir
Vector2 vector1 = new Vector2(400, 300);
Boton abrir = new Boton(vector1, btnL, btnL, docabr);

// volver
Vector2 vector2 = new Vector2(60, 60);
Boton atras = new Boton(vector2, btnS, btnS, volver);

// salir
Vector2 vector3 = new Vector2(600, 300);
Boton salir = new Boton(vector3, btnL, btnL, equis);

// navbar
Vector2 vectorhome = new Vector2(300, 550);
Boton home = new Boton(vectorhome, btnS, btnS, check);
Vector2 vectorlist = new Vector2(400, 550);
Boton list = new Boton(vectorlist, btnS, btnS, lista);
Vector2 vectorpond = new Vector2(500, 550);
Boton pond = new Boton(vectorpond, btnS, btnS, slide);

void setup() {
  colorMode(HSB, 360, 100, 100);

  // fortaleza
  verde = color(148, 88, 33);
  // debilidad
  amarillo = color(33, 91, 54);
  // amenaza
  rojo = color(10, 100, 52);
  // oportunidad
  azul = color(230, 100, 52);

  size(800, 600);
  background(0, 0, 90);
  noStroke();
}

void draw() {
  background(0, 0, 90);
  if (escena == 0) {
    nuevo.mostrar(verde);
    abrir.mostrar(amarillo);
    salir.mostrar(rojo);
  } else if (escena >= 1) {
    atras.mostrar();
    navbar();
  }
}

void mousePressed() {
  if (nuevo.hover() && escena == 0) {
    escena = 1;
  }
  if (atras.hover() && escena > 0) {
    escena -= 1;
  }
  if (salir.hover() && escena == 0) {
    exit();
  }
  if (home.hover() && escena > 0) {
    escena = 1;
  }
  if (list.hover() && escena > 0) {
    escena = 2;
  }
  if (pond.hover() && escena > 0) {
    escena = 3;
  }
}

void navbar() {
  home.mostrar();
  list.mostrar();
  pond.mostrar();
}
