class Ship{
 float r;

 float heading;
 float rotation;
 PVector position;
 PVector velocity;
 boolean isBoosting;
 
  Ship(){
    r = 20;
    position = new PVector(width/2, height/2);
    heading = 0;
    rotation = 0;
    velocity = new PVector(0,0);
    isBoosting = false;
  }
  
  void boosting(boolean b){
    isBoosting = b;
  }
  
  void update(){
    if(isBoosting){
      boost();
    }
    position.add(velocity);
    velocity.mult(0.99);
  }
  
  void boost(){
    PVector force = PVector.fromAngle(heading);
    force.mult(0.05);
    velocity.add(force);
  }
  
  boolean hits(Asteroid asteroid){
   float d = dist(position.x, position.y, asteroid.position.x, asteroid.position.y);
   if(d< r + asteroid.r){
     return true;
   } else {
     return false;
   }
  }
  
  
  
  void show(){
    pushMatrix();
    translate(position.x, position.y);
  
    rotate(heading +PI/2);
    stroke(0,255,70);
    strokeWeight(2);
    fill(10);
    triangle(-r, r, r, r, 0 , -r); 
    popMatrix();
  }
  void edges() {
    if (this.position.x > width + this.r) {
      this.position.x = -this.r;
    } else if (this.position.x < -this.r) {
      this.position.x = width + this.r;
    }
    if (this.position.y > height + this.r) {
      this.position.y = -this.r;
    } else if (this.position.y < -this.r) {
      this.position.y = height + this.r;
    }
  }
  void setRotation(float a){
    rotation = a;
  }
  
  void turn(){
    heading += rotation;
    //heading = PI;
  }
    
}
