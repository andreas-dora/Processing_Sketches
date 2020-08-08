float a= 0;

void setup(){
  size(600,600);
}

void draw(){
  background(255);
  float noiseMax = 5;
    float xoff = map(cos(a), -1,1,0, noiseMax);
    float yoff = map(sin(a), -1,1,0, noiseMax);
    float r = map(noise(xoff, yoff), 0,1,100, height);
    float x  = map(r,0,1,0, width);
    circle(x, height/2, 100);
 a += radians(1);
}