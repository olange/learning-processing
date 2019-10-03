// Essai d'import d'une classe PDE en tant que librairie
// Ne fonctionne pas; je ne sais pas s'il est possible
// d'importer du code PDE en tant que librairie

import palette.*;

Kandinsky colors;

void setup() {
  size( 400, 400);
  smooth();
  colors = new Kandinsky();
}

void draw() {
  fill( colors.some());
  rect( 10, 10, width-10, height-10);
}
