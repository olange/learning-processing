class Arrow {
  float MIN_ARROW_LEN = 100;
  float MIN_ARROW_SIZE = 8;

  Vec3D h;
  float len;
  float size;
  boolean hasLegend;
  String legend;

  Arrow( Vec3D heading) {
    h = heading;
    len = max( MIN_ARROW_LEN, h.magnitude());
    size = max( MIN_ARROW_SIZE, len/75);
    hasLegend = false;
  }

  void display() {
    pushMatrix();  
    fill( 128, 128);
    stroke( 128, 128);
    strokeWeight( 1);
    // rotate( HALF_PI, h.x, h.y, h.z);
    rotateZ( h.headingXY());
    rotateY( -h.headingXZ());
    rotateX( h.headingYZ());
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

