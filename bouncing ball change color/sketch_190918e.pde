float xPos=100, yPos=100;
float xSpeed, ySpeed;
int size=50;
float d;

void setup() {
  size(600, 600);
  xSpeed=random(2, 5);
  ySpeed=random(-5, +5);
  noStroke();
}


void draw() {
  float g,b;
  g=map(yPos, 0, height, 100, 200);
  b=map(yPos, 0, height, 255, 21);
  background(255,g,b);
  //x=x+1;
  //x++;
  xPos+=xSpeed;
  yPos+=ySpeed;
  //if my ellipse goes further than the right side of my screen, reset
  if (xPos>width-size/2||xPos<size/2) {
    xSpeed=-xSpeed;
  }
  if (yPos>height-size/2||yPos<size/2) {
    ySpeed=-ySpeed;
  }
  ellipse(xPos, yPos, size, size);
}

void mousePressed(){
   d=dist(mouseX, mouseY, xPos, yPos);
 if (d<size/2){
   xSpeed=random(-5,2);
   ySpeed=random(-5,5);
 }
}
