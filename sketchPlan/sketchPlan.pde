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

String nuevo = "file-earmark-plus.svg";
String abrir = "file-earmark-arrow-down.svg";
String equis = "x-circle.svg";
String punto = "asterisk.svg";
String check = "clipboard-check.svg";
String slide = "sliders2-vertical.svg";
String lista = "card-list.svg";
String izq = "arrow-left.svg";
String der = "arrow-right.svg";
String volver = "caret-left.svg";

int escena = 0;

Vector2 vector = new Vector2(200, 300);
Boton btn = new Boton(vector, 100, 100, nuevo);

// volver
Vector2 vector2 = new Vector2(60, 60);
Boton btn2 = new Boton(vector2, 60, 60, volver);

// salir
Vector2 vector3 = new Vector2(600, 300);
Boton btn3 = new Boton(vector3, 100, 100, equis);

void setup() {
  size(800, 600);
  background(230);
  noStroke();
}

void draw() {
  background(230);
  if (escena == 0) {
    btn.mostrar();
    btn3.mostrar();
  } else if (escena == 1) {
    btn2.mostrar();
  }
}

void mousePressed() {
  if (btn.hover()) {
    escena = 1;
  }
  if (btn2.hover()) {
    escena = 0;
  }
  if (btn3.hover()) {
    exit();
  }
}
