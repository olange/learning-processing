import codeanticode.syphon.*;

SyphonServer server;
PGraphics canvas;

void setup() {
  size( 400,400, P3D);
  canvas = createGraphics(400, 400, P3D);
  
  // Create syhpon server to send frames out.
  server = new SyphonServer(this, "Processing Syphon");
}

void draw() {
  canvas.beginDraw();
  canvas.background( 100);
  canvas.stroke( 255);
  canvas.line( 50, 50, mouseX, mouseY);
  canvas.endDraw();

  image( canvas, 0, 0);
  server.sendImage( canvas);
}
