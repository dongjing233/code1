int pos, size;

void setup() {
  background(240);
  size(600, 600);
  size=height/100;
}

void draw() {
  
  for (int i = 0; i <100; i++) {
    ellipse(width/2, i*size, 50, 50);
  }
}
