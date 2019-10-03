class VertexColorPlane implements Displayable {

    PShape shape;

    VertexColorPlane(){
        this.shape = makeMeAVertexColoredPlane();
    }

    PShape makeMeAVertexColoredPlane(){
        PShape result = createShape();

        // is front counter clockwise ?
        result.beginShape(QUADS);
        result.noStroke();

        // fill defines vertex color
        result.fill(255, 0, 0);
        result.vertex(0, 0, 0);

        result.fill(0, 255, 0);
        result.vertex(0, 1, 0);
        
        result.fill(0, 0, 255);
        result.vertex(1, 1, 0);
        
        result.fill(0, 0, 0);
        result.vertex(1, 0, 0);
        
        result.endShape();

        result.translate(-0.5, -0.5, 0);

        return result;
    }

    void display(){
        shape(this.shape);
    }

}