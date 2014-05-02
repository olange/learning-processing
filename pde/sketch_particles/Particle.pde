class Particle extends VerletParticle {

  float RADIUS = 40;
  float SHADOW_SIZE = 30;

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
    sphere( RADIUS);
    popMatrix();
  }

  void displayShadow() {
    pushMatrix();
    stroke( 128, 128);
    strokeWeight( 1);
    fill( 192, 128);
    translate( shadow.x, shadow.y, shadow.z);
    
    beginShape();
    vertex( -SHADOW_SIZE, 0, -SHADOW_SIZE);
    vertex( -SHADOW_SIZE, 0,  SHADOW_SIZE);
    vertex(  SHADOW_SIZE, 0,  SHADOW_SIZE);
    vertex(  SHADOW_SIZE, 0, -SHADOW_SIZE);
    endShape( CLOSE);
    line( 0, 0, 0, 0, y - RADIUS/2, 0);
    // line( 0, 0, 0, -x, 0, 0);
    // line( 0, 0, 0, 0, 0, -z);

    popMatrix();
  }
}

