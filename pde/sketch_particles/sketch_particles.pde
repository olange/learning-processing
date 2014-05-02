import toxi.physics.*;
import toxi.physics.behaviors.*;
import toxi.geom.*;

// Reference to physics world
VerletPhysics physics;
Particle p0, p1, p2, p3;
Arrow axisX, axisY, axisZ;

void setup() {
  size( displayWidth/2, displayHeight/5*4, P3D);
  sphereDetail( 15);
  smooth();
  lights();

  physics = new VerletPhysics();
  physics.setWorldBounds( new AABB( 400.0));
  // physics.addBehavior( new GravityBehavior( new Vec3D( 0, 0.005, 0)));
  
  p0 = new Particle( new Vec3D( 0, 0, 0));
  p1 = new Particle( new Vec3D( 0, 0, 300));
  p2 = new Particle( new Vec3D( 0, -300, 0));
  p3 = new Particle( new Vec3D( 300, 0, 0));
  
  physics.addParticle( p0);
  physics.addParticle( p1);
  physics.addParticle( p2);
  physics.addParticle( p3);

  physics.addSpring( new VerletSpring( p0, p1, 250, 0.0001));
  physics.addSpring( new VerletSpring( p0, p2, 150, 0.0001));
  physics.addSpring( new VerletSpring( p0, p3, 100, 0.0001));
  
  axisX = new Arrow( new Vec3D( 300, 0, 0));
  axisY = new Arrow( new Vec3D( 0, 300, 0));
  axisZ = new Arrow( new Vec3D( 0, 0, 300));
}

void draw() {
  physics.update();
  background( 192);

  translate( width/2, height/2, 0);
  rotateX( -PI/6);
  rotateY( -PI/9);
  // rotateZ( PI/9);

  axisX.display();
  axisY.display();
  axisZ.display();

  stroke( 64, 64, 192, 64);
  strokeWeight( 10);
  line( p0.x, p0.y, p0.z, p1.x, p1.y, p1.z);
  line( p0.x, p0.y, p0.z, p2.x, p2.y, p2.z);
  line( p0.x, p0.y, p0.z, p3.x, p3.y, p3.z);

  p0.display();
  p1.display();
  p2.display();
  p3.display();
}

void mousePressed() {
  p0.lock();
  p0.x = mouseX;
  p0.z = mouseY;
  p0.y = 0;
  p0.unlock();
}
