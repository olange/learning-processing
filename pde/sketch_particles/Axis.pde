class Axis extends Arrow {

  Axis( Vec3D heading, String legend) {
    super( heading.scale( -1.0), heading);
    setLegend( legend);
  }
}
