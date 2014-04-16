// Essai chargement Shape à partir d'un fichier SVG
// exporté depuis tracé InkBot (iPad)

// Obtenu exception ArrayOutOfBounds: -2 initialement;
// fonctionne après ré-enregistrement par Illustrator CS5

PShape coquelicot, feuilles, figure, lotus, rosace, tulipe;

void setup() {
  size( 800, 800, P3D);
  smooth();
  
  coquelicot = loadShape( "Coquelicot.svg");
  feuilles = loadShape( "Feuilles.svg");
  figure = loadShape( "Figure.svg");
  lotus = loadShape( "Lotus.svg");
  rosace = loadShape( "Rosace.svg");
  tulipe = loadShape( "Tulipe.svg");

  lotus.setStroke( true);
  lotus.setFill( color( 80, 80, 255, 255));
  
  background( 255);
  shapeMode( CENTER);
}

void draw() {
  // shape( coquelicot, 0, 0);
  // shape( feuilles, 0, 0);
  // shape( figure, 0, 0);
  // shape( rosace, 0, 0);
  // shape( tulipe, 0, 0);

  translate( width/2, height/2, 0);
  rotateX( PI/9 * frameCount/20);
  rotateY( PI/9 * frameCount/20);
  shape( lotus, 0, 0);
}



