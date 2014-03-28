PImage img;
PVector v;

void setup() {
  size( 600, 600, P3D);
  img = loadImage( "muenter-gabriele-winter-im-elmau-1933.jpg");
  v = new PVector( width/2, height/2);
}

void draw() {
  // Displays the image at its actual size at point (0,0)
  image( img, 0, 0);
  
  // Display a dot tracking the mouse pointer
  v.lerp( mouseX, mouseY, 0.0, 0.1);
  ellipse( v.x, v.y, 20, 20);
}

void mousePressed() {
  tint( 0, 153, 204);
}

void mouseReleased() {
  noTint();
}
