import toxi.physics.*;
import toxi.physics.behaviors.*;
import toxi.geom.*;

VerletPhysics physics;
Particle p0, p1, p2, p3;
PFont baseFont;

void setup() {
  size( displayWidth/2, displayHeight/5*4, P3D);
  sphereDetail( 15);
  smooth();
  lights();

  baseFont = loadFont( "data/SourceSansPro-Semibold-32.vlw");
  textFont( baseFont); 

  physics = new VerletPhysics();
  physics.setWorldBounds( new AABB( 400.0));
  
  n0 = new Node( new Vec3D( 0, 0, 0), "Gong-fu I/O");
  n1 = new Particle( new Vec3D( 0, 0, 300), "ABC");
  
  physics.addParticle( p0);
  physics.addParticle( p1);
}

void draw() {
  physics.update();
  background( 192);
}

