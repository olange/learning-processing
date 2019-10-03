
VertexColorPlane plane;
CylinderWithStrips quadStripCylinder;
CylinderWithQuads quadCylinder;

void setup() {
    size(int(displayWidth * 0.85), int(displayHeight * 0.85), P3D);
    smooth();
    plane = new VertexColorPlane();
    quadStripCylinder = new CylinderWithStrips(12, 4);
    quadCylinder = new CylinderWithQuads(12, 4);
}

void drawPlane(){
    pushMatrix();
    translate( width / 2, height * 0.3, 0);
    scale(200);
    plane.display();
    popMatrix();
}

void drawRotatingCylinder(Displayable cylinder, PVector where){
    pushMatrix();
    translate(where.x, where.y, 0);
    rotateX(-QUARTER_PI / 3);
    rotateY(QUARTER_PI / 6 * millis() / 500);
    rotateZ(-QUARTER_PI / 9);
    scale(40);
    cylinder.display();
    popMatrix();
}

void draw() {
    background(0, 0, 0);

    pointLight(255, 255, 255, 0, 10, 50);
    lights();
    
    drawPlane();
    drawRotatingCylinder(quadCylinder, new PVector(width * 0.4, height / 2, 0));
    drawRotatingCylinder(quadStripCylinder, new PVector(width * 0.6, height / 2, 0));
}

