
int totalFrames = 90;
int counter = 0;
boolean record = true;

Particle[] particles = new Particle[50];

void setup() {
  size(300, 500);
  //colorMode(RGB, 15);
  for (int i = 0; i < particles.length; i++) {
    particles[i] = new Particle();
  }
}

void draw() {
  float percent = 0;
  if (record) {
    percent = float(counter) / totalFrames;
  } else {
    percent = float(counter % totalFrames) / totalFrames;
  }
  render(percent);
  if (record) {
    saveFrame("output/gif-"+nf(counter, 3)+".png");
    if (counter == totalFrames-1) {
      exit();
    }
  }
  counter++;
}

void render(float percent) {
  background(255);
  float a = percent * TWO_PI;
  for (Particle p : particles) {
    p.render(a); 
  }
  
}
