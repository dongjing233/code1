float xPos=200, yPos=100;
float xSpeed=random(2, 5), ySpeed=random(2, 5);
int size=50;
float d;
boolean circleClicked = false;

void setup() {
  size(600, 600);
  noStroke();
}


void draw() {
  float g, b;
  g=map(yPos, 0, height, 100, 200);
  b=map(yPos, 0, height, 255, 21);
  background(255, g, b);
  xPos+=xSpeed;
  yPos+=ySpeed;

  ellipse(xPos, yPos, size, size);



  if (circleClicked&&xPos<width-size/2&&xPos>size/2) {
    xSpeed=0;
  }
  if (!circleClicked &&xPos<width-size/2&&xPos>size/2) {
    xSpeed=random(2, 10);
  }
  if (xPos>width-size/2||xPos<size/2) {
    xSpeed=-xSpeed;
  }


  
  if (circleClicked && yPos<height-size/2 && yPos>size/2) {
    ySpeed=0;
  }
  if (!circleClicked && yPos<height-size/2 && yPos>size/2) {
    ySpeed=random(2, 10);
  }
  if (yPos>height-size/2||yPos<size/2) {
    ySpeed=-ySpeed;
  }
  
  
  
  
}





void mousePressed() {
  d=dist(mouseX, mouseY, xPos, yPos);
  if (d<size/2) {
    circleClicked=!circleClicked;
  }
}
