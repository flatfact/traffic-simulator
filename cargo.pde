class cargo{
  float red,green,blue;
  void colour(int r,int g,int b){
    red=r; green=g; blue=b;
  }
  void show(float x,float y,float di){
    //reference : ford cargo 1723
    float angle=atan(10.0/40.0),radius=sqrt(10*10+40*40);
    translate(x-radius*cos(angle+di),y-radius*sin(angle+di),0);
    rotateZ(di);
    fill(red,green,blue);
    stroke(0);
    strokeWeight(1);
  
    //body
    beginShape(QUAD_STRIP);
    vertex(20,20,4);
    vertex(20,20,17);
    vertex(0,20,4);
    vertex(0,20,17);
    vertex(0,0,4);
    vertex(0,0,17);
    vertex(20,0,4);
    vertex(20,0,17);
    endShape();
  
    //upper&hood
    beginShape(QUADS);
    vertex(5,0,27);
    vertex(20,0,27);
    vertex(20,20,27);
    vertex(5,20,27);
    endShape();
  
    //headlilght
    fill(128);
    beginShape(QUADS);
    vertex(-0.1,1,13);
    vertex(-0.1,1,7);
    vertex(-0.1,3,7);
    vertex(-0.1,3,13);
    vertex(-0.1,19,13);
    vertex(-0.1,19,7);
    vertex(-0.1,17,7);
    vertex(-0.1,17,13);
    endShape();
  
    //taillight
    fill(200,0,0);
    beginShape(QUADS);
    vertex(80.1,0,6);
    vertex(80.1,0,4);
    vertex(80.1,4,4);
    vertex(80.1,4,6);
    vertex(80.1,20,6);
    vertex(80.1,20,4);
    vertex(80.1,16,4);
    vertex(80.1,16,6);
    endShape();
    
    //container
    pushMatrix();
    translate(20,-2,6);
    fill(216);
    beginShape(QUAD_STRIP);
    vertex(0,0,0);
    vertex(0,0,26);
    vertex(60,0,0);
    vertex(60,0,26);
    vertex(60,24,0);
    vertex(60,24,26);
    vertex(0,24,0);
    vertex(0,24,26);
    vertex(0,0,0);
    vertex(0,0,26);
    endShape();
    beginShape(QUADS);
    vertex(0,0,26);
    vertex(0,24,26);
    vertex(60,24,26);
    vertex(60,0,26);
    endShape();
    popMatrix();
    
    //support
    pushMatrix();
    fill(16);
    translate(20,-2,4);
    beginShape(QUAD_STRIP);
    vertex(0,0,0);
    vertex(0,0,2);
    vertex(0,24,0);
    vertex(0,24,2);
    vertex(60,24,0);
    vertex(60,24,2);
    vertex(60,0,0);
    vertex(60,0,2);
    vertex(0,0,0);
    vertex(0,0,2);
    endShape();
    popMatrix();
  
    //glass
    fill(128);
    beginShape(QUAD_STRIP);
    vertex(20,20,27);
    vertex(20,20,17);
    vertex(5,20,27);
    vertex(0,20,17);
    vertex(5,0,27);
    vertex(0,0,17);
    vertex(20,0,27);
    vertex(20,0,17);
    endShape();
  
    //wheels
    fill(128);
    beginShape();
    for(float i=0;i<=TWO_PI;i=i+PI/6) vertex(60+sin(i)*4.5,-2.1,4.5+cos(i)*4.5);
    endShape(CLOSE);
    beginShape();
    for(float i=0;i<=TWO_PI;i=i+PI/6) vertex(12+sin(i)*4.5,20.1,4.5+cos(i)*4.5);
    endShape(CLOSE);
    beginShape();
    for(float i=0;i<=TWO_PI;i=i+PI/6) vertex(12+sin(i)*4.5,-0.1,4.5+cos(i)*4.5);
    endShape(CLOSE);
    beginShape();
    for(float i=0;i<=TWO_PI;i=i+PI/6) vertex(60+sin(i)*4.5,22.1,4.5+cos(i)*4.5);
    endShape(CLOSE);
  }
}
