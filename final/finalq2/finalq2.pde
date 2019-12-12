int xPos, yPos; 
int size = 100; 
boolean circleClicked = false; 
float d; 

void setup() {
  size(600, 600); 
  xPos = width/2; 
  yPos = height/2;
  noStroke();
}

void draw() {

  //calculate dist between the mouse and the center of the circle 

  //if the mouse is inside the circle, fill the circle black 
  //otherwise, fill the circle white

  //ellipse(xPos, yPos, 100, 100);
  if (mousePressed && dist(mouseX, mouseY, xPos, yPos)<50) {
    background(255);
  } else {
    background(0);
  }
  if (dist(mouseX, mouseY, xPos, yPos)<50) {
    fill(0);
    ellipse(xPos, yPos, 100, 100);
  } else {
    fill(255);
    ellipse(xPos, yPos, 100, 100);
  }

}
