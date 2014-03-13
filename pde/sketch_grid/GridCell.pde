class GridCell {
  int cellWidth;
  int cellHeight;

  int stripeWidth;
  int STRIPECOUNT = 10;
  
  void onAdd( int cellWidth, int cellHeight) {
    this.cellWidth = cellWidth; 
    this.cellHeight = cellHeight;
    this.stripeWidth = floor( cellWidth / STRIPECOUNT);
  }

  void draw() {
    int shade = floor( map( millis() % 1000, 0, 1000, 0, 128));  
    for( int x = 0; x < this.cellWidth; x += stripeWidth) {
      fill( abs( shade + x - 255));
      rect( x, 0, this.stripeWidth, this.cellHeight);
    }
  } 
}
