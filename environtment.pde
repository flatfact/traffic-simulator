//this function draws roads and environtment
void env(){
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
}
