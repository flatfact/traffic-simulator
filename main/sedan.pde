class sedan{
  int red,green,blue,wide=17,lengh=43;
  void colour(int r,int g,int b){
    red=r; green=g; blue=b;
  }
  void show(float x,float y,float di){
    //reference : toyota corolla 2014
    float angle=atan(8.5/21.5),radius=sqrt(8.5*8.5+21.5*21.5);
    translate(x-radius*cos(angle+di),y-radius*sin(angle+di),0);
    rotateZ(di);
    fill(red,green,blue);
    stroke(0);
    strokeWeight(1);
  
    //body
    beginShape(QUAD_STRIP);
    vertex(0,17,2);
    vertex(2,17,8);
    vertex(0,0,2);
    vertex(2,0,8);
    vertex(43,0,2);
    vertex(42,0,8);
    vertex(43,17,2);
    vertex(42,17,8);
    vertex(0,17,2);
    vertex(2,17,8);
    endShape();
  
    //upper&hood
    beginShape(QUADS);
    vertex(18,3,14);
    vertex(30,3,14);
    vertex(30,14,14);
    vertex(18,14,14);
    vertex(2,0,8);
    vertex(10,0,8);
    vertex(10,17,8);
    vertex(2,17,8);
    vertex(33,0,8);
    vertex(42,0,8);
    vertex(42,17,8);
    vertex(33,17,8);
    endShape();
  
    //headlilght
    fill(128);
    beginShape(QUADS);
    vertex(1.4,0,6.5);
    vertex(0.9,0,5);
    vertex(0.9,5,5);
    vertex(1.4,5,6.5);
    vertex(1.4,17,6.5);
    vertex(0.9,17,5);
    vertex(0.9,12,5);
    vertex(1.4,12,6.5);
    endShape();
  
    //taillight
    fill(200,0,0);
    beginShape(QUADS);
    vertex(42.3,0,6.8);
    vertex(42.5,0,5.6);
    vertex(42.5,4,5.6);
    vertex(42.3,4,6.8);
    vertex(42.3,17,6.8);
    vertex(42.5,17,5.6);
    vertex(42.5,13,5.6);
    vertex(42.3,13,6.8);
    endShape();
  
    //glass
    fill(128);
    beginShape(QUAD_STRIP);
    vertex(18,14,14);
    vertex(10,17,8);
    vertex(18,3,14);
    vertex(10,0,8);
    vertex(30,3,14);
    vertex(33,0,8);
    vertex(30,14,14);
    vertex(33,17,8);
    vertex(18,14,14);
    vertex(10,17,8);
    endShape();
  
    //wheels
    fill(128);
    beginShape();
    for(float i=0;i<=TWO_PI;i=i+PI/6) vertex(33+sin(i)*2.5,-0.1,2.5+cos(i)*2.5);
    endShape(CLOSE);
    beginShape();
    for(float i=0;i<=TWO_PI;i=i+PI/6) vertex(7+sin(i)*2.5,17.1,2.5+cos(i)*2.5);
    endShape(CLOSE);
    beginShape();
    for(float i=0;i<=TWO_PI;i=i+PI/6) vertex(7+sin(i)*2.5,-0.1,2.5+cos(i)*2.5);
    endShape(CLOSE);
    beginShape();
    for(float i=0;i<=TWO_PI;i=i+PI/6) vertex(33+sin(i)*2.5,17.1,2.5+cos(i)*2.5);
    endShape(CLOSE);
    
  }
}
