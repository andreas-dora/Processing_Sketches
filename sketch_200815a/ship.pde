class Ship{
 float seite = 20;
 float heading = 0;
 float rotation = 0;
  Ship(){
    
  }
  
  void show(){
    pushMatrix();
    translate(width/2, height/2);
    rotate(heading);
    stroke(0,255,70);
    strokeWeight(2);
    noFill();
    triangle(-seite, seite, seite, seite, 0 , -seite); 
    popMatrix();
  }
  
  void setRotation(float a){
    rotation = a;
  }
  
  void turn(){
    heading += rotation;
    //heading = PI;
  }
    
}
