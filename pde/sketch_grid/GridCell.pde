class GridCell {
  float cellWidth;
  float cellHeight;

  void onAdd( float cellWidth, float cellHeight) {
    this.cellWidth = cellWidth; 
    this.cellHeight = cellHeight;
  }

  void draw() {
    fill( map( millis() % 1000, 0, 1000, 0, 255));
    rect( 0, 0, cellWidth, cellHeight);
  } 
}
