class Axis extends Arrow {

  Axis( Vec3D heading, String legend) {
    super( new Vec3D( 0, 0, 0), heading);
    setLegend( legend);
  }
}
