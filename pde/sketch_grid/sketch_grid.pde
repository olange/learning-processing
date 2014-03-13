// import GridLayout;
// import GridCell;

GridLayout grid;

void setup() {
  size( 400, 400);
  smooth();
  grid = new GridLayout( 5, 3);
  grid.add( new GridCell());
  grid.add( new GridCell());
  grid.add( new GridCell());
  grid.add( new GridCell());
  grid.add( new GridCell());
  grid.add( new GridCell());
  grid.add( new GridCell());
}

void draw() {
  grid.draw();
}
