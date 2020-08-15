Ship ship;
void setup(){
  size(800, 600);
  ship = new Ship();
}

void draw(){
  background(10);
  ship.show();
  ship.turn();
}

void keyPressed(){
  if(keyCode == LEFT){
    ship.setRotation(-0.1);
  } 
  else if (keyCode == RIGHT){
    ship.setRotation(0.1);
  }
}

void keyReleased(){
  ship.setRotation(0);
}
