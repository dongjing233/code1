void setup() {
  size(600, 600);
  background(50);
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, 400, 200);
}

void draw() {
  float x = random(width/2-200, width/2+200);
  float y = random(height/2-100, height/2+100);
  stroke(255);
  point(x, y);
}
