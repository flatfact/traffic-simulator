import peasy.*;
PeasyCam cam;
float a=0;
int i=0,m,carpassed=0;
car[] c=new car[50];
env e=new env();

void testAxis(){
  pushMatrix();
  stroke(255,0,0); line(0,0,0,10,0,0);
  stroke(0,255,0); line(0,0,0,0,10,0);
  stroke(0,0,255); line(0,0,0,0,0,10);
  popMatrix();
}

void HUD(){ //show basic informations
  pushMatrix();
  hint(DISABLE_DEPTH_TEST);
  camera();
  noLights();
  fill(255,255,255,128);
  rect(0,0,256,144);
  fill(0);
  textSize(20);
  text("Framerate : "+int(frameRate)+" FPS",20,40);
  text("Runtime : "+int(millis()/1000/60)+" m "+int(millis()/1000)%60+" s",20,70);
  text("Car passed : "+carpassed+" cars",20,100);
  hint(ENABLE_DEPTH_TEST);
  popMatrix();
}

void setup(){
  size(1280,720,P3D);
  cam=new PeasyCam(this,2000);
  frameRate(60);
  e.init();
}

void draw(){
  background(200);
  testAxis();
  lights();
  if(keyPressed){
    //controlling mode for debugging
    if(key=='w') c[0].sp=c[0].sp+0.1;
    else if(key=='s') c[0].sp=c[0].sp-0.1;
    else if(key=='a') c[0].di=c[0].di-0.05;
    else if(key=='d') c[0].di=c[0].di+0.05;
  }
  //update cars every frame
  for(int j=0;j<i;j++){c[j].update(); c[j].show();}
  //check for collision every frame
  for(int j=0;j<i;j++){
    for(int k=0;k<i;k++){
      if((c[j].frontx-c[k].backx)*(c[j].frontx-c[k].backx)+(c[j].fronty-c[k].backy)*(c[j].fronty-c[k].backy)<400.0){c[j].collision=true; k=i;}
      else c[j].collision=false;
    }
    for(int k=0;k<8;k++){
      if((c[j].frontx-e.l[k].x)*(c[j].frontx-e.l[k].x)+(c[j].fronty-e.l[k].y)*(c[j].fronty-e.l[k].y)<400.0 && !e.l[k].status){c[j].collision=true; k=8;}
    }
    for(int k=0;k<8;k++){
      if((c[j].x-e.c[k].x)*(c[j].x-e.c[k].x)+(c[j].y-e.c[k].y)*(c[j].y-e.c[k].y)<400.0 && !c[j].passed){carpassed++; c[j].passed=true;}
    }
  }
  e.show();
  HUD();
}
void keyPressed(){
  //spawn a new car
  if(key=='q' && i<50){ c[i]=new car(); c[i].make(); i++;}
  //change lights
  else if(key=='e'){
    for(int j=0;j<8;j++){ e.l[j].status=!e.l[j].status;}
  }
}
