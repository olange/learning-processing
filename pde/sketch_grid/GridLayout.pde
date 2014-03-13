// import GridCell;

class GridLayout {
  GridCell[] cells;
  int nx, ny;
  int count = -1;
  int cellWidth, cellHeight;
  int innerWidth, innerHeight;
  int xStep, yStep;
  
  int xMARGIN = 40;
  int yMARGIN = 25;
  int xPADDING = 20;
  int yPADDING = 20;

  GridLayout( int pnx, int pny) {
    nx = pnx;
    ny = pny;

    cells = new GridCell[ nx * ny];
    count = 0;

    innerWidth = width - xMARGIN * 2;
    innerHeight = height - yMARGIN * 2;

    cellWidth = floor(( innerWidth - xPADDING * (nx - 1)) / nx);
    cellHeight = floor(( innerHeight - yPADDING * (ny - 1)) / ny);

    xStep = cellWidth + xPADDING;
    yStep = cellHeight + yPADDING; 
  }

  void add( GridCell c) {
    cells[ count] = c;
    count += 1;
    c.onAdd( cellWidth, cellHeight);
  }
 
  void draw() {
    pushMatrix();
    translate( xMARGIN, yMARGIN);
    int i = 0;
    while( i < count) {
      cells[ i++].draw();
      if( i % nx != 0) { translate( xStep, 0); }
      else { translate( -innerWidth + cellWidth, yStep); }
    }
    popMatrix();
  } 
}
