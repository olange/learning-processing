class CylinderWithQuads implements Displayable{

    PShape shape;

    CylinderWithQuads(int segments, float height) {
        this.shape = makeMeACylinder(segments, height);
    }

    void display(){
        shape(this.shape);
    }

    PShape makeMeACylinder(int segments, float height){
         PShape result = createShape();

        result.setFill(color(255, 128, 0));

        result.beginShape(QUADS);
        result.noStroke();

        for (int i = 0; i <= segments; i++) {
            float angle_1 = (2 * PI) * (float(i) / segments);
            float angle_2 = (2 * PI) * (float(i + 1) / segments);
            result.vertex(cos(angle_1), 0, sin(angle_1));
            result.vertex(cos(angle_1), height, sin(angle_1));
            result.vertex(cos(angle_2), height, sin(angle_2));
            result.vertex(cos(angle_2), 0, sin(angle_2));
        }

        result.endShape();   

        return result;
    }

}