import processing.video.*;
import processing.opengl.*;
Movie myMovie;

PImage tex;
float rotx = PI/4, roty = PI/4, rotz = PI/4;
float incX = 0; float incY = 0;
int xw, yw;

void setup(){
  size( 400, 400, P3D);

  myMovie = new Movie( this, "poissons.m4v");
  myMovie.speed( 1);
  myMovie.loop();

  textureMode( NORMAL);
}


void draw(){
  int n=1;
  background( 0);
  noStroke();
  noTint();
  
  pushMatrix();
  translate( width/2.0, height/2.0, -100);
  rotateX( rotx);
  rotateY( roty);
  rotateZ( rotz);  
  scale( 90);
  ortho( -width/2, width/2, -height/2, height/2, -10, 10); 
  TexturedCube( myMovie);
  popMatrix();

  if ( mousePressed) { if( mouseButton == RIGHT)  if( keyPressed) rotx += 1/(10 * PI); else rotx += -1/(10 * PI);}
  if ( mousePressed) { if( mouseButton == LEFT)   if( keyPressed) roty += 1/(10 * PI); else roty += -1/(10 * PI);}
  if ( mousePressed) { if( mouseButton == CENTER) if( keyPressed) rotz += 1/(10 * PI); else rotz += -1/(10 * PI);}

  if ( mousePressed) { incX=0; incY=0;}
  rotx += incX;
  roty += incY;  
}


void TexturedCube(PImage tex) {  
  beginShape(QUADS);
  texture(tex);
  // +Z "front" face
  vertex(-1,-1, 1,0,0); vertex( 1,-1, 1,1,0); vertex( 1, 1, 1,1,1); vertex(-1, 1, 1,0,1);
  // -Z "back" face
  vertex( 1,-1,-1,0,0); vertex(-1,-1,-1,1,0); vertex(-1, 1,-1,1,1); vertex( 1, 1,-1,0,1);
  // +Y "bottom" face
  vertex(-1, 1, 1,0,0); vertex( 1, 1, 1,1,0); vertex( 1, 1,-1,1,1); vertex(-1, 1,-1,0,1);
  // -Y "top" face
  vertex(-1,-1,-1,0,0); vertex( 1,-1,-1,1,0); vertex( 1,-1, 1,1,1); vertex(-1,-1, 1,0,1);
  // +X "right" face
  vertex( 1,-1, 1,0,0); vertex( 1,-1,-1,1,0); vertex( 1, 1,-1,1,1); vertex( 1, 1, 1,0,1);
  // -X "left" face
  vertex(-1,-1,-1,0,0); vertex(-1,-1, 1,1,0); vertex(-1, 1, 1,1,1); vertex(-1, 1,-1,0,1);
  endShape();
}


void keyPressed(){
  exit();
}

void mouseDragged() {
  float rate = 0.01;
  
  incX = ( pmouseY - mouseY) * rate;
  incY = ( mouseX - pmouseX) * rate;
  rotx += incX;
  roty += incY;
}
