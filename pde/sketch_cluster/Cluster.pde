// Cluster of nodes

class Cluster {
  
  float desiredRadius, radius, thickness, speed;
  String label;
  
  float MIN_RADIUS = 10.0;
  float A_SMALL_ANGLE = QUARTER_PI / 3;
  float LEGEND_ANGLE = A_SMALL_ANGLE / 2.4;
  float RADIUS_TO_THICKNESS_RATIO = 30.0;

  Cluster( float desiredRadius, String label) {
    this.label = label;
    this.desiredRadius = max( MIN_RADIUS, desiredRadius);

    this.speed = 0.18;
    this.radius = MIN_RADIUS;
    this.thickness = radius_to_thickness( this.radius);
  }

  void update() {
    if( radius < desiredRadius) {
      radius += ( desiredRadius - radius) * speed;
      thickness = radius_to_thickness( radius);
    }
  }

  void display() {    
    // Circle
    pushMatrix();
    noFill();
    strokeWeight( thickness);
    stroke( 64, 224, 64, 128);
    arc( 0, 0, radius, radius, 0, A_SMALL_ANGLE);
    arc( 0, 0, radius, radius, A_SMALL_ANGLE, TAU);
    
    // Label
    rotateZ( LEGEND_ANGLE);
    textAlign( RIGHT, CENTER);
    text( label, radius / 2.0 - thickness, 0.0, 0.0);
    popMatrix();
  }

  private float radius_to_thickness( float radius) {
    return radius / RADIUS_TO_THICKNESS_RATIO;
  }
}
