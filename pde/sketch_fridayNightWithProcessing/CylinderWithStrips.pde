class CylinderWithStrips implements Displayable{

    PShape shape;

    CylinderWithStrips(int segments, float height) {
        this.shape = makeMeACylinder(segments, height);
    }

    void display(){
        shape(this.shape);
    }

    PShape makeMeACylinder(int segments, float height){
         PShape result = createShape();

        result.setFill(color(255, 128, 0));

        result.beginShape(QUAD_STRIP);
        result.noStroke();

        for (int i = 0; i <= segments; i++) {
            float angle = (2 * PI) * (float(i) / segments);
            result.vertex(cos(angle), 0, sin(angle));
            result.vertex(cos(angle), height, sin(angle));
        }

        result.endShape();   

        return result;
    }

}