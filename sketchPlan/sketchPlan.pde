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

Vector2 vector = new Vector2(200,250);
Boton btn = new Boton(vector, 100,100);
Vector2 vector2 = new Vector2(400,350);
Boton btn2 = new Boton(vector2, 100,100);
Vector2 vector3 = new Vector2(600,250);
Boton btn3 = new Boton(vector3, 100,100);


void setup() {
  size(800, 600);
  background(255);
  noStroke();
}

void draw() {
  btn.mostrar();
  btn2.mostrar();
  btn3.mostrar();
}
