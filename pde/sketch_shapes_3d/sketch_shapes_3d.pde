float hrx = 0.0, hry = 0.0;
PShape arrow, rect, house;
PImage img;

PShape createArrowShape() {
  PShape s = createShape();
  s.beginShape();
  s.fill( palette( -1));
  s.stroke( palette( 1));
  s.strokeWeight( 4);
  s.vertex(   0,   0);
  s.vertex( 100, 100);
  s.vertex(   0, 200);
  s.endShape( CLOSE);
  return s;
}

PShape createRectShape() {
  PShape s = createShape( RECT, 0, 0, 100, 100);
  s.setFill( palette( -1));
  s.setStroke( palette( 0));
  s.setStrokeWeight( 2);
  return s;
}

PShape createHouse( float W, float H, float P) {
  float RH = H * 0.6; // Roof height, hauteur du toit
  float TH = H + RH;  // Total house height
  float RAX = W / 2;   // Roof apex X coord
  float DH = H * 0.5;  // Door height 
  float DW = H * 0.2;  // Door width
  
  PShape s = createShape();
  
  s.beginShape();
  s.fill( 127);
  // s.texture( img);
  
  s.stroke( palette( 3));
  s.strokeWeight( 1.0);

  // Face avant
  s.vertex(   0, RH, 0, 0, 0);
  s.vertex( RAX,  0, 0, 0, 0);
  s.vertex(   W, RH, 0, 0, 0);

  s.vertex( 0, RH, 0, 0, 0);
  s.vertex( 0, TH, 0, 0, 0);
  s.vertex( W, TH, 0, 0, 0);
  s.vertex( W, RH, 0, 0, 0);

  // Face arrière
  s.vertex(   0, RH, P, 0, 0);
  s.vertex( RAX,  0, P, 0, 0);
  s.vertex(   W, RH, P, 0, 0);

  s.vertex( 0, RH, P, 0, 0);
  s.vertex( 0, TH, P, 0, 0);
  s.vertex( W, TH, P, 0, 0);
  s.vertex( W, RH, P, 0, 0);
  
  // Mur latéral gauche
  s.vertex( 0, RH, 0, 0, 0);
  s.vertex( 0, RH, P, 0, 0);
  s.vertex( 0, TH, P, 0, 0);
  s.vertex( 0, TH, 0, 0, 0);
  s.vertex( 0, RH, 0, 0, 0);

  // Mur latéral droit
  s.vertex( W, RH, 0, 0, 0);
  s.vertex( W, RH, P, 0, 0);
  s.vertex( W, TH, P, 0, 0);
  s.vertex( W, TH, 0, 0, 0);
  s.vertex( W, RH, 0, 0, 0);

  s.stroke( palette( 2));
  s.strokeWeight( 2.0);
  
  // Pan gauche du toit
  s.vertex(   0, RH, 0, 0, 0);
  s.vertex(   0, RH, P, 0, 0);
  s.vertex( RAX,  0, P, 0, 0);
  s.vertex( RAX,  0, 0, 0, 0);
  s.vertex(   0, RH, 0, 0, 0);
  
  // Pan droit du toit
  s.vertex(   W, RH, 0, 0, 0);
  s.vertex(   W, RH, P, 0, 0);
  s.vertex( RAX,  0, P, 0, 0);
  s.vertex( RAX,  0, 0, 0, 0);
  s.vertex(   W, RH, 0, 0, 0);
  
  // Porte entrée
  s.beginContour();
  s.vertex( RAX, TH-DH, 0, 0, 0);
  s.vertex( RAX,    TH, 0, 0, 0);
  s.vertex( RAX+DW, TH, 0, 0, 0);
  s.vertex( RAX+DW, TH-DH, 0, 0, 0);
  s.vertex( RAX, TH-DH, 0, 0, 0);
  s.endContour();  

  s.endShape();
  return s;
}

void drawBox() {
  pushMatrix();
  translate(130, height/2, 0);
  rotateY(1.25);
  rotateX(-0.4);
  stroke( palette( 3));
  fill( palette( -1));
  box(100);
  popMatrix();
}

void drawSphere() {
  pushMatrix();
  translate( 200, height * 0.35, -200);
  noFill();
  stroke( 0xA0FFFFFF);
  sphere(280);
  popMatrix();
}

void setup() {
  size( 600, 600, P3D); 
  ortho(); 
  img = loadImage( "maddalena.jpg");

  strokeCap( ROUND); // SQUARE, PROJECT, ROUND
  strokeJoin( MITER);  // MITER, BEVEL, ROUND
  
  arrow = createArrowShape();
  rect = createRectShape();
  house = createHouse( 100, 100, -160);
}

void draw() {
  background( 128);
  
  if( mousePressed)  lights();

  drawSphere();
  drawBox();
  
  translate( width/2, height/2, 0);
  
  pushMatrix();
  rotateY( frameCount*PI/170.0);
  rotateZ( frameCount*PI/150.0);
  shape( rect);  
  translate( 0, 0, -100.0);
  shape( arrow);
  popMatrix();    

  pushMatrix();
  rotateX( frameCount*PI/270.0);
  rotateY( frameCount*PI/180.0);
  rotateZ( frameCount*PI/90.0);
  shape( house);  
  popMatrix();    
}

color palette( int pos) {
  switch( pos) {
    case 0:  return 0x80CCFFAA;  // GREEN PEPPERONI with alpha 128
    case 1:  return 0x80FFCCFF;  // LIGHT PINK with alpha 128
    case 2:  return 0x80CC0000;  // RED with alpha 128
    case 3:  return 0xFF006699;  // PETROL BLUE with alpha 255  
    default: return 0x40FFFFFF;  // WHITE with alpha 64  
  }
}
