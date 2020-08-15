class Asteroid {
  PVector position;
  float r;   //------?
  PVector velocity = PVector.random2D();
  int total = floor(random(5,15));
  Float[] offset;  //----------?
  
  Asteroid(){
    this(new PVector(random(width), random(height)), random (15,50));
  }
  
  Asteroid(PVector position_, float r_){
    position = position_.copy();
    r = r_*0.5;
    offset = new Float[total];
    for(int i = 0; i< total; i++){
     offset[i] = random(-r*0.5, r*0.5); 
    }
  }
  
  void update(){
    position.add(velocity);
  }
  
  void show(){
   pushMatrix();
   stroke(255,0,100);
   strokeWeight(2);
   noFill();
   translate(position.x, position.y);
   beginShape();
   for(int i = 0; i<total; i++){
     float angle = map(i, 0, total, 0, TWO_PI);
     float r1 = r + offset[i];
     float x = r1 *cos(angle);
     float y = r1 * sin(angle);
     vertex(x,y);
   }
   endShape(CLOSE);
   popMatrix();
  }
  
  List<Asteroid> breakup(){
    List<Asteroid> newA = new ArrayList<Asteroid>();
    newA.add(new Asteroid(position, r));
    newA.add(new Asteroid(position, r));
    return newA;
  }
    void edges() {
    if (position.x > width + r) {
      position.x = -r;
    } else if (position.x < -r) {
      position.x = width + r;
    }

    if (position.y > height + r) {
      position.y = -r;
    } else if (position.y < -r) {
      position.y = height + r;
    }
  }
};
