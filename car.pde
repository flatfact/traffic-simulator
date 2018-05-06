class car{
  float x,y,sp=1,a=0,di,type;
  cargo c=new cargo();
  pickup p=new pickup();
  sedan s=new sedan();
  void make(){
    int r=int(random(1,7));
    int t=int(random(1,10));
    if(t<=10){type=3; s.colour(127+(r/4)%2*128,127+(r/2)%2*128,127+r%2*128);}
    if(t<=5){type=2; p.colour(127+(r/4)%2*128,127+(r/2)%2*128,127+r%2*128);}
    if(t<=2){type=1; c.colour(127+(r/4)%2*128,127+(r/2)%2*128,127+r%2*128);}
    t=int(random(0,8));
    di=(t/2)*HALF_PI;
    x=cos(di)*1000-sin(di)*15-sin(di)*30*(t%2);
    y=cos(di-HALF_PI)*1000-sin(di-HALF_PI)*15-sin(di-HALF_PI)*30*(t%2);
    println(y);
  }
  void update(){
    sp=sp+a;
    x=x+cos(di+PI)*sp; y=y+sin(di+PI)*sp;
  }
  void show(){
    if(x<1100 && x>-1100 && y<1100 && y>-1100){
      pushMatrix();
      if(type==1) c.show(x,y,di);
      if(type==2) p.show(x,y,di);
      if(type==3) s.show(x,y,di);
      popMatrix();
    }
    else this.make();
  }
}
