// import GridLayout;
// import GridCell;

GridLayout grid;

void setup() {
  size( 400, 400);
  smooth();
  grid = new GridLayout( 4, 4);
  grid.add( new GridCell());
  grid.add( new Shades( 10));
  grid.add( new GridCell());
  grid.add( new Shades( 3));
  grid.add( new Shades( 8));
  grid.add( new GridCell());
  grid.add( new Shades( 4));
}

void draw() {
  grid.draw();
}
