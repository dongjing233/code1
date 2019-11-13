float xPos=100, yPos=100, x1=300, y1=550;
float xSpeed, ySpeed;
int size=50, xDirection=1, yDirection=1;
float d, c;
boolean circleClicked = false, buttonClicked=false; 

void setup() {
  size(600, 600);
  xSpeed=random(2, 5);
  ySpeed=random(2, 5);
  noStroke();
}


void draw() {


  float g, b;
  g=map(yPos, 0, height, 100, 200);
  b=map(yPos, 0, height, 255, 21);
  background(255, g, b);
  xPos+=xSpeed;
  yPos+=ySpeed;

  if (buttonClicked) {
    xPos=random(25, 550);
    yPos=random(25, 550);
  }

  fill(0, mouseX/3, 150);
  ellipse(xPos, yPos, size, size);
  fill(255);
  ellipse(x1, y1, size/2, size/2);


  if (xSpeed==0) {
    xSpeed=random(2, 5);
  }


  if (ySpeed==0) {
    ySpeed=random(2, 5);
  }


  if (!circleClicked) {
    xSpeed*=1;
    ySpeed*=1;
  }


  if (circleClicked) {
    xSpeed=0;
    ySpeed=0;
  }


  if (xPos>width-size/2||xPos<size/2) {
    xSpeed*=-1;
  } 


  if (yPos>height-size/2||yPos<size/2) {
    ySpeed*=-1;
  }
}


void mousePressed() {
  d=dist(mouseX, mouseY, xPos, yPos);
  if (d<size/2) {
    circleClicked=!circleClicked;
  }
  println(d);
  c=dist(mouseX, mouseY, x1, y1);
  if (c<size/4) {
    buttonClicked=!buttonClicked;
  }
}
