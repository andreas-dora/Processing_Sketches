import java.util.*;
PFont arial;
Ship ship;
List<Asteroid> asteroids = new ArrayList<Asteroid>();
List<Laser> lasers = new ArrayList<Laser>();
int counter = 0;
int lifes = 3;
void setup(){
  size(800, 600);
  ship = new Ship();
  for(int i = 0; i < 5; i++){
    asteroids.add(new Asteroid());
  }
  arial = createFont("Arial", 16);
}

void draw(){
  background(10); 
  for(int i = 0; i < asteroids.size(); i++){
    Asteroid asteroid = asteroids.get(i);
    if(ship.hits(asteroid)){
      lifes -= 1;
      if(lifes == 0){
        counter = 0;
        lifes = 3;
      }
    }
    asteroid.show();
    asteroid.update();
    asteroid.edges();
  }
  
  for(int i = lasers.size() -1; i >=0; i--){
    Laser laser = lasers.get(i);
    laser.show();
    laser.update();
    if(laser.offscreen()){
      lasers.remove(i);
    } else {
      for(int j = asteroids.size() -1; j>= 0; j--){
        Asteroid asteroid = asteroids.get(j);
        if(laser.hits(asteroid)){
          counter +=  100;
          if(asteroid.r > 10){
            List<Asteroid> newAsteroids = asteroid.breakup();
            asteroids.addAll(newAsteroids);
          }
          asteroids.remove(j);
          lasers.remove(i);
          
          break;
        }
      }
    }
  }
  
  ship.show();
  ship.turn();
  ship.update();
  ship.edges();
  textFont(arial);
  fill(0, 255,70);
  text("Ships: " + nf(lifes,2,0), 20, 30); 
  text(nf(counter,6,0), 20, 55);
}
void keyReleased(){
  ship.setRotation(0);
  ship.boosting(false);
}
void keyPressed(){
  if(key == ' '){
    lasers.add(new Laser(ship.position, ship.heading));
  }
  
  else if(keyCode == LEFT){
    ship.setRotation(-0.1);
  } 
  else if (keyCode == RIGHT){
    ship.setRotation(0.1);
  } 
  else if (keyCode == UP){
    ship.boosting(true);
  }
}
