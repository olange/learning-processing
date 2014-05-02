class Arrow {
  float MIN_ARROW_LEN = 100;
  float MIN_ARROW_SIZE = 8;

  Vec3D start, heading;
  float len;
  float size;
  boolean hasLegend;
  String legend;

  Arrow( Vec3D from, Vec3D to) {
    start = from;
    heading = to.sub( from);
    len = max( MIN_ARROW_LEN, heading.magnitude());
    size = max( MIN_ARROW_SIZE, len/75);
    hasLegend = false;
  }

  void display() {
    pushMatrix();  
    fill( 128, 128);
    stroke( 128, 128);
    strokeWeight( 1);

    translate( start.x, start.y, start.z);
    rotateZ(  heading.headingXY());
    rotateY( -heading.headingXZ());
    rotateX(  heading.headingYZ());

    line( 0, 0, 0, len, 0, 0);
    line( len, 0, 0, len-size, +size/2, 0);
    line( len, 0, 0, len-size, -size/2, 0);

    if( hasLegend) {
      textSize( 24);
      textAlign( LEFT, CENTER);
      text( legend, len + 6, 0, 0);
    }
    popMatrix();
  }

  void setLegend( String legend) {
    this.hasLegend = ( legend != null && legend.length() != 0); 
    this.legend = hasLegend ? legend : "";
  }
}

