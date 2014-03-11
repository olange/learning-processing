float t = 0;
float speed = 0.00025;
int m;
float x, y;
// 203, 133, 194

void setup() {
  size( 400, 400);
  smooth();
  noStroke();
}

void draw() {
  // background( 80, 32, 32, 0.15);
  m = millis();
  x = sin( m * speed);
  y = cos( m * speed * 4);
  fill( noisy_red());
  ellipse( width/2 * (0.8 + x), height/2 * (0.8 + y),
           60+ map( mouseX, 60 * , 60);
}


