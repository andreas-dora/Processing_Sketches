Flock flock;

void setup(){
  size(300, 600);
  flock = new Flock();
  for(int i = 0; i< 80; i++){
    Boid b = new Boid (width/2, height/2);
    flock.addBoid(b);
  }
  smooth();
}

void draw(){
  background(250);
  flock.run();
  fill(0);
}

void mouseDragged(){
  flock.addBoid(new Boid(mouseX, mouseY));
}
    