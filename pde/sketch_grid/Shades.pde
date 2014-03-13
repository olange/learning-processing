class Shades extends GridCell {
  int STRIPES_DEFAULT = 5;

  int numStripes;
  float stripeWidth;
  
  Shades() {
    this.numStripes = STRIPES_DEFAULT;
  }

  Shades( int numStripes) {
    this.numStripes = numStripes;
  }
  
  void onAdd( float cellWidth, float cellHeight) {
    super.onAdd( cellWidth, cellHeight);
    stripeWidth = cellWidth / numStripes;
  }

  void draw() {
    int shade = floor( map( millis() % 1000, 0, 1000, 0, 128));  
    for( int x = 0; x < cellWidth; x += stripeWidth) {
      fill( shade + x);
      rect( x, 0, stripeWidth, cellHeight);
    }
  } 
}
