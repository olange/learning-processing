// Draw a Cluster of Nodes in a circle 

Cluster c1, c2;

void setup() {
  size( 800, 800, P3D);
  smooth();

  ellipseMode(CENTER);
  
  c1 = new Cluster( 450.0, "C1");
  c2 = new Cluster( 225.0, "C2");
}

void draw() {
  background( 0);
  translate( width/2, height/2, 0);
  
  rotateX( PI/3);
  c1.update();
  c1.display();

  rotateY( PI/6);
  c2.update();
  c2.display();
}
