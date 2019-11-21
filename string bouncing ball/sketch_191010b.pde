int num = 10; 
int i = 0, u=0;
float xPos[]= new float[num], yPos[]= new float[num]; 
float xSpeed[]= new float[num], ySpeed[] = new float[num];
float size[]= new float[num]; 
color c[]= new color[num]; 
float d;



void setup() {
  size(800, 800); 
  for (int i = 0; i<num; i++) {
    for (int u=i; u<num*2; u++) {
      size[i] = int(random(70, 150)); 
      xPos[i] = int(random(size[i]/2, width-size[i]/2)); 
      yPos[i] = int(random(size[i]/2, height-size[i]/2)); 
      xSpeed[i] = int(random(1, 5)); 
      ySpeed[i] = int(random(1, 5)); 
      c[i] = color(random(30, 200), random(50, 200), random(100, 200));
    }
  }
}



void draw() {
  background(0); 
  noStroke();
  for (int i = 0; i<num; i++) {
    xPos[i] = xPos[i] + xSpeed[i]; 
    yPos[i] = yPos[i] + ySpeed[i]; 
    fill(c[i]); 
    ellipse(xPos[i], yPos[i], size[i], size[i]); 

    if (xSpeed[i]==0&&ySpeed[i]==0&&mousePressed) {
      xSpeed[i]=random(2, 5);
      ySpeed[i]=random(2, 5);
    }

    if (xPos[i]>width-size[i]/2||xPos[i]<size[i]/2) {
      xSpeed[i]*=-1;
    } 
    if (yPos[i]>height-size[i]/2||yPos[i]<size[i]/2) {
      ySpeed[i]*=-1;
    }

    if (dist(mouseX, mouseY, xPos[i], yPos[i])<size[i]/2&&mousePressed) {
      xSpeed[i]=0;
      ySpeed[i]=0;
    }
  }
}
