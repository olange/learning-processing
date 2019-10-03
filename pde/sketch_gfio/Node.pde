class Node
  extends VerletParticle {

  float RADIUS = 15;

  Node( Vec3D location) {
    super( location);
  }

  void display() {
    displaySphere();
    displayLegend();
  }

  void displaySphere() {
    pushMatrix();
    stroke( 0);
    strokeWeight( 1);
    fill( 64, 64, 192, 64);
    translate( x, y, z);
    sphere( RADIUS);
    popMatrix();
  }

  void displayLegend() {
    pushMatrix();
    fill( 192, 128);
    textAlign( LEFT, BOTTOM);
    text( legend, x, y + RADIUS, z);
    popMatrix();
  }
}

