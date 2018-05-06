import peasy.*;
PeasyCam cam;
float a=0;
int i=0,m;
car[] c=new car[50];

void testAxis(){
  pushMatrix();
  stroke(255,0,0); line(0,0,0,10,0,0);
  stroke(0,255,0); line(0,0,0,0,10,0);
  stroke(0,0,255); line(0,0,0,0,0,10);
  popMatrix();
}

void setup(){
  size(1280,720,P3D);
  cam=new PeasyCam(this,2000);
}

void draw(){
  background(200);
  testAxis();
  lights();
  m=millis();
  if(keyPressed && key==' ' && i<50){
    c[i]=new car();
    c[i].make(); i++;
  }
  for(int j=0;j<i;j++){c[j].update(); c[j].show();}
  env();
}
