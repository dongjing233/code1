void setup() {
  size(500, 500);
  background(80, 70, 70);
  noStroke();
  smooth();

  println(width);
  println(height);
}

void draw() {
  noStroke();
  fill(100, 275, 485);
  triangle(30, 20, 80, 80, 20, 80);

  noStroke();
  fill(200, 300, 200);
  ellipse(50, 50, 50, 50);  //(x,y,width,height)

  stroke(255, 255, 255);
  strokeWeight(5);
  point(width/2, height/2);

  rectMode(CENTER);
  rect(width/2, height/2, 100, 50);

  rectMode(CORNER);
  rect(width/2, height/2, 100, 50);
}
