class Arrow {
  float MIN_ARROW_LEN = 100;
  float MIN_ARROW_SIZE = 8;

  Vec3D h;
  float len;
  float size;

  Arrow( Vec3D heading) {
    h = heading;
    len = max( MIN_ARROW_LEN, h.magnitude());
    size = max( MIN_ARROW_SIZE, len/75);
    legend = l
  }

  void display() {
    pushMatrix();  
    stroke( 128);
    strokeWeight( 1);
    rotate( HALF_PI, h.x, -h.y, h.z);
    // rotateX( h.headingYZ());
    // rotateY( h.headingXZ());
    // rotateZ( h.headingXY());
    line( 0, 0, 0, len, 0, 0);
    line( len, 0, 0, len-size, +size/2, 0);
    line( len, 0, 0, len-size, -size/2, 0);
    popMatrix();
  }
}

