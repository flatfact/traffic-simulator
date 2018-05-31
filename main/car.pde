class car{
  float x,y,sp=2,spm,a=0,di,type,wide,lengh,frontx,fronty,backx,backy;
  int lane;
  boolean collision=false,passed=false;
  cargo c=new cargo();
  pickup p=new pickup();
  sedan s=new sedan();
  
  void make(){  //initialize
    int rc=int(random(1,7));
    int rt=int(random(1,10));
    if(rt<=10){
      type=3;
      s.colour(127+(rc/4)%2*128,127+(rc/2)%2*128,127+rc%2*128);
      wide=s.wide; lengh=s.lengh; spm=4;
    }
    if(rt<=5){
      type=2;
      p.colour(127+(rc/4)%2*128,127+(rc/2)%2*128,127+rc%2*128);
      wide=p.wide; lengh=p.lengh; spm=3;
    }
    if(rt<=2){
      type=1;
      c.colour(127+(rc/4)%2*128,127+(rc/2)%2*128,127+rc%2*128);
      wide=c.wide; lengh=c.lengh; spm=2;
    }
    sp=2;
    lane=int(random(0,24));
    di=(lane/3/2)*HALF_PI;
    x=cos(di)*1000-sin(di)*15-sin(di)*30*(lane/3%2);
    y=cos(di-HALF_PI)*1000-sin(di-HALF_PI)*15-sin(di-HALF_PI)*30*(lane/3%2);
    passed=false;
  }
  
  void update(){  //move every frame depends on speed
    sp=sp+a;
    x=x+cos(di+PI)*sp; y=y+sin(di+PI)*sp;
    if(collision && sp>=0) a=-0.04;
    else if(sp<spm) a=0.01;
    else a=0;
  }
  
  void show(){   //draw on screen
    if(x<1100 && x>-1100 && y<1100 && y>-1100){
      
      pushMatrix();
      translate(x,y,30);
      rotateZ(di);
      if(!collision) fill(0,255,0,100);
      else fill(255,0,0,100);
      //ellipse(-10-lengh/2-sp*60,0,20,20);
      //ellipse(lengh/2-10,0,20,20);
      frontx=modelX(-10-lengh/2-sp*60,0,0); fronty=modelY(-10-lengh/2-sp*60,0,0);
      backx=modelX(lengh/2-10,0,0); backy=modelY(lengh/2-10,0,0);
      rotateZ(-HALF_PI);
      fill(0); 
      text(int(sp*60/10000*3600),0,0);
      popMatrix();
      
      pushMatrix();
      if(type==1) c.show(x,y,di);
      if(type==2) p.show(x,y,di);
      if(type==3) s.show(x,y,di);
      popMatrix();
    }
    else this.make();
  }
  
}
