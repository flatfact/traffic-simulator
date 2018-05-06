class pickup{
  float red,green,blue;
  void colour(int r,int g,int b){
    red=r; green=g; blue=b;
  }
  void show(float x,float y,float di){
    //reference : mitsubishi l200
    float angle=atan(8.5/25.5),radius=sqrt(8.5*8.5+25.5*25.5);
    translate(x-radius*cos(angle+di),y-radius*sin(angle+di),0);
    rotateZ(di);
    fill(red,green,blue);
    stroke(0);
    strokeWeight(1);
  
    //body
    beginShape(QUAD_STRIP);
    vertex(0,17,5);
    vertex(1,17,12);
    vertex(0,0,5);
    vertex(1,0,12);
    vertex(51,0,5);
    vertex(51,0,12);
    vertex(51,17,5);
    vertex(51,17,12);
    vertex(0,17,5);
    vertex(1,17,12);
    endShape();
  
    //upper&hood&cab
    beginShape(QUADS);
    vertex(33,0.5,5);
    vertex(33,0.5,12);
    vertex(33,16.5,12);
    vertex(33,16.5,5);
    vertex(1,0,12);
    vertex(12,0,12);
    vertex(12,17,12);
    vertex(1,17,12);
    vertex(20,3,18);
    vertex(32,3,18);
    vertex(32,14,18);
    vertex(20,14,18);
    fill(128);
    vertex(33.5,0.5,9);
    vertex(50.5,0.5,9);
    vertex(50.5,16.5,9);
    vertex(33.5,16.5,9);
    endShape();
  
    //headlilght
    fill(128);
    beginShape(QUADS);
    vertex(0.8,1,11);
    vertex(0.5,1,9);
    vertex(0.5,4,9);
    vertex(0.8,4,11);
    vertex(0.8,16,11);
    vertex(0.5,16,9);
    vertex(0.5,13,9);
    vertex(0.8,13,11);
    endShape();
  
    //taillight
    fill(200,0,0);
    beginShape(QUADS);
    vertex(51.1,0,8);
    vertex(51.1,0,11);
    vertex(51.1,1.5,11);
    vertex(51.1,1.5,8);
    vertex(51.1,17,8);
    vertex(51.1,17,11);
    vertex(51.1,15.5,11);
    vertex(51.1,15.5,8);
    endShape();
  
    //glass
    fill(128);
    beginShape(QUAD_STRIP);
    vertex(20,3,18);
    vertex(12,0,12);
    vertex(32,3,18);
    vertex(33,0,12);
    vertex(32,14,18);
    vertex(33,17,12);
    vertex(20,14,18);
    vertex(12,17,12);
    vertex(20,3,18);
    vertex(12,0,12);
    endShape();
  
    //wheels
    fill(128);
    beginShape();
    for(float i=0;i<=TWO_PI;i=i+PI/6) vertex(38+sin(i)*3,-0.1,3+cos(i)*3);
    endShape(CLOSE);
    beginShape();
    for(float i=0;i<=TWO_PI;i=i+PI/6) vertex(8+sin(i)*3,17.1,3+cos(i)*3);
    endShape(CLOSE);
    beginShape();
    for(float i=0;i<=TWO_PI;i=i+PI/6) vertex(8+sin(i)*3,-0.1,2+cos(i)*3);
    endShape(CLOSE);
    beginShape();
    for(float i=0;i<=TWO_PI;i=i+PI/6) vertex(38+sin(i)*3,17.1,3+cos(i)*3);
    endShape(CLOSE);
  }
}
