void setup() {
  for( int i = 1; i <= 6; i++) {
    for( int j = 1; j <= 6; j++) {
      print( int( random( 1, 42)), ", ");
    }
    println( int( random( 1, 6)));
  }
}
