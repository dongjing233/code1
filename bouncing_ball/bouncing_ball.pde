int num=100;
int size[]=new int[num];
float xPos[]=new float[num], yPos[]=new float[num];
float xSpeed, ySpeed;
color colors[]=new color[num];
int opacity[]=new int [num];

void setup() {
  size(800, 800);
  for (int i=0; i<num; i++) {
    size[i]=floor(random(25, 100));
    xPos[i]=random(size[i]/2, width-size[i]/2);
    yPos[i]=random(size[i]/2, height-size[i]/2);
    xSpeed=random(-2, 2);
    ySpeed=random(-2, 2);
    colors[i]=color(20, random(120, 255), random(30, 100));
  }
}


void draw() {
  background(255);
  noStroke();

  for (int i=0; i<num; i++) {
    fill(colors[i], opacity[i]);
    xPos[i]+=xSpeed;
    yPos[i]+=ySpeed;

    if (xPos[i]<=size[i]/2 || xPos[i]>=width-size[i]/2) {
      xSpeed=-xSpeed;
    }
    if (yPos[i]<=size[i]/2 || yPos[i]>=height-size[i]/2) {
      ySpeed=-ySpeed;
    }

    float d=dist(mouseX, mouseY, xPos[i], yPos[i]);
    if (d<size[i]/2) {
      opacity[i]=0;
    }
    if (keyPressed) {
      opacity[i]=255;
    }


    ellipse(xPos[i], yPos[i], size[i], size[i]);
  }

}
