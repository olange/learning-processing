// import GridLayout;
// import Component;

GridLayout grid;

void setup() {
  size( 400, 400);
  smooth();
  grid = new GridLayout( 4, 2);
  grid.add( new Component());
  grid.add( new Component());
  grid.add( new Component());
  grid.add( new Component());
  grid.add( new Component());
  grid.add( new Component());
  grid.add( new Component());
}

void draw() {
  grid.draw();
}
