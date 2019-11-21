//this sketch has the ellipse change colors whenever 
//the mouse button is pressed. change the sketch so that
//the ellipse only changes colors when the mouse is 
//pressed inside the ellipse.

float d;
void setup() {
  size(600, 600);
}

void draw() {
  d=dist(mouseX, mouseY, width/2, height/2);
  background(150);
  if (mousePressed&&d<100) {
    fill(255);
  } else {
    fill(150);
  }
  
  ellipse(width/2, height/2, 200, 200);
}
