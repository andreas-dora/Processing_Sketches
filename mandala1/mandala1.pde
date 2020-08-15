int d1 = 300;
int d2 = 40;
int menge = 16;
int sw = 3;
float thetal;

void setup(){
  size(640, 640, P3D);
}


void draw(){
  background(10,10,20);
  stroke(255,100,10);
  noFill();
  strokeWeight(3);
  
  //ellipseMode(CORNER);
  
  
  thetal = TWO_PI / menge;
  
  for(int i = 0; i < menge; i++){
    pushMatrix();
    translate(width/2, height/2);
    rotateZ(thetal*i);
    ellipse(0, 0, d1, d2); 
    popMatrix();
  }
  
  stroke(255,0,100);
  strokeWeight(1);
  line(0, height/2, width, height/2);
  line(width/2, 0, width/2, height);
}