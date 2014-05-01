class Particle extends VerletParticle {

  Vec3D shadow;

  Particle( Vec3D location) {
    super( location);
    shadow = location.copy();
  }

  void display() {
    shadow.x = this.x;
    shadow.z = this.z;
    shadow.y = 0;

    displaySphere();
    displayShadow();
  }

  void displaySphere() {
    pushMatrix();
    stroke( 0);
    strokeWeight( 1);
    fill( 64, 64, 192, 64);
    translate( x, y, z);
    sphere( 40);
    popMatrix();
  }

  void displayShadow() {
    pushMatrix();
    stroke( 128);
    strokeWeight( 1);
    fill( 192, 128);
    translate( shadow.x, shadow.y, shadow.z);
    
    beginShape();
    vertex( -30, 0, -30);
    vertex( -30, 0,  30);
    vertex(  30, 0,  30);
    vertex(  30, 0, -30);
    endShape( CLOSE);

    popMatrix();
  }
}

