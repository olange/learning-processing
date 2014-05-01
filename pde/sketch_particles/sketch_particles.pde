import toxi.physics.*;
import toxi.physics.behaviors.*;
import toxi.geom.*;

// Reference to physics world
VerletPhysics physics;
Particle p0, p1, p2, p3;

void setup() {
  size( displayWidth/2, displayHeight/3*2, P3D);
  sphereDetail( 15);

  physics = new VerletPhysics();
  physics.setWorldBounds( new AABB( 400.0));
  // physics.addBehavior( new GravityBehavior( new Vec3D( 0, 0.005, 0)));
  
  p0 = new Particle( new Vec3D( 0, 0, 0));
  p1 = new Particle( new Vec3D( 0, 0, 300));
  p2 = new Particle( new Vec3D( 0, 300, 0));
  p3 = new Particle( new Vec3D( 300, 0, 0));
  
  physics.addParticle( p0);
  physics.addParticle( p1);
  physics.addParticle( p2);
  physics.addParticle( p3);

  physics.addSpring( new VerletSpring( p0, p1, 250, 0.00001));
  physics.addSpring( new VerletSpring( p0, p2, 150, 0.00001));
  physics.addSpring( new VerletSpring( p0, p3, 100, 0.00001));
}

void draw() {
  physics.update();
  background( 192);

  translate( width/2, height/2, 0);
  rotateX( PI/9);
  rotateZ( PI/9);

  p0.display();
  p1.display();
  p2.display();
  p3.display();
}


