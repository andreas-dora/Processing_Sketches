class Laser {
  PVector position;
  PVector velocity;
  
  Laser(PVector shipPosition, float angle_){
    position = new PVector(shipPosition.x, shipPosition.y);
    velocity = PVector.fromAngle(angle_);
    velocity.mult(10);
  }
  void update(){
    position.add(velocity);
  }
  void show(){
    pushMatrix();
    stroke(255, 250,0);
    strokeWeight(6);
    point(position.x, position.y);
    popMatrix();
  }
  boolean hits(Asteroid asteroid){
    float d = dist(position.x, position.y, asteroid.position.x, asteroid.position.y);
    if(d < asteroid.r){
      return true;
    } else {
      return false;
    }
  }
  
  boolean offscreen(){
    if(position.x > width || position.y < 0){
      return true;
    }
    if (position.y > height || position.y < 0){
      return true;
    }
    return false;
  }
    
  
};
