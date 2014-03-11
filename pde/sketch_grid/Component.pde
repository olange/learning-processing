class Component {
  int compWidth;
  int compHeight;

  int stripeWidth;
  int STRIPECOUNT = 10;
  
  void onAdd( int compWidth, int compHeight) {
    this.compWidth = compWidth; 
    this.compHeight = compHeight;
    this.stripeWidth = floor( compWidth / STRIPECOUNT);
  }

  void draw() {
    int shade = floor( map( millis() % 1000, 0, 1000, 0, 128));  
    for( int x = 0; x < this.compWidth; x += stripeWidth) {
      fill( abs( shade + x - 255));
      rect( x, 0, this.stripeWidth, this.compHeight);
    }
  } 
}
