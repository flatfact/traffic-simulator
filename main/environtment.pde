//this class stores light positions and its status
class light{
    float x,y;
    boolean status;
    light(float a,float b,boolean bo){
      x=a; y=b; status=bo;
    }
}

//this class stores light traffics and draws environtment
class env{
  
  light[] l=new light[8];
  PVector[] c=new PVector[8];
  
  void init(){
    l[0]=new light(70,15,true);
    l[1]=new light(70,45,true);
    l[2]=new light(-15,70,false);
    l[3]=new light(-45,70,false);
    l[4]=new light(-70,-15,true);
    l[5]=new light(-70,-45,true);
    l[6]=new light(15,-70,false);
    l[7]=new light(45,-70,false);
    
    c[0]=new PVector(70,-15);
    c[1]=new PVector(70,-45);
    c[2]=new PVector(15,70);
    c[3]=new PVector(45,70);
    c[4]=new PVector(-70,15);
    c[5]=new PVector(-70,45);
    c[6]=new PVector(-15,-70);
    c[7]=new PVector(-45,-70);
  }
  
  void show(){
    pushMatrix();
  
    //grass
    fill(64,255,64);
    beginShape(QUADS);
    vertex(-1000,1000,-1);
    vertex(-1000,-1000,-1);
    vertex(1000,-1000,-1);
    vertex(1000,1000,-1);
    endShape();
    
    //road
    fill(64);
    beginShape();
    vertex(70,-1000,0);
    vertex(70,-70,0);
    vertex(1000,-70,0);
    vertex(1000,70,0);
    vertex(70,70,0);
    vertex(70,1000,0);
    vertex(-70,1000,0);
    vertex(-70,70,0);
    vertex(-1000,70,0);
    vertex(-1000,-70,0);
    vertex(-70,-70,0);
    vertex(-70,-1000,0);
    endShape(CLOSE);
    
    //line
    translate(0,0,0.1);
    noStroke();
    for(float i=0;i<=TWO_PI;i=i+HALF_PI){
      fill(255,255,0);
      rect(70,-0.5,930,1);
      fill(255);
      rect(70,0.5,2,60);
      rect(70,29.5,200,1);
      rect(59.5,59.5,930,1);
      rect(59.5,-60.5,930,1);
      for(int j=70;j<1000;j=j+20){
        rect(j,-30.5,10,1);
        rect(j,29.5,10,1);
      }
      rotateZ(i);
    }
    
    popMatrix();
    
    //lights
    pushMatrix();
    translate(0,0,0.1);
    for(int i=0;i<8;i++){
      if(l[i].status) fill(0,255,0);
      else fill(255,0,0);
      ellipse(l[i].x,l[i].y,20,20);
    }
    popMatrix();
   
   //checkpoint
    pushMatrix();
    translate(0,0,0.1);
    for(int i=0;i<8;i++){
      fill(255,255,128);
      //ellipse(c[i].x,c[i].y,20,20);
    }
    popMatrix();
  }
}
