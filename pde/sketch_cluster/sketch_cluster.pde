// Draw a Cluster of Nodes in a circle 

Cluster c1, c2;
PFont fontForLegend;

void setup() {
  size( displayWidth, displayHeight, P3D);
  smooth();
  
  fontForLegend = loadFont( "AvenirNext-Medium-24.vlw");
  textFont( fontForLegend);

  c1 = new Cluster( 450.0, "Cluster 1");
  c2 = new Cluster( 225.0, "Cluster 2");
}

void draw() {
  background( 0);
  translate( width/2, height/2, 0);
  
  // rotateX( PI/3);
  c1.update();
  c1.display();

  rotateY( PI/3);
  c2.update();
  c2.display();
}
