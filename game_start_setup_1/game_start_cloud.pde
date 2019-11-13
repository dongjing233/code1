class Cloud {
  color c;
  float xPos, yPos;
  float xSpeed, ySpeed;

  Cloud() {
    c= color(random(0, 50), random(100, 200), random(150, 255));
    xSpeed=random(-5, 5);
    ySpeed=random(-5, 5);
    xPos=random(0, width);
    yPos=random(0, height);
  }

  void drawCloud() {
    noStroke(); 
    fill(c); 
    ellipse(xPos, yPos-20, 50, 50); 
    ellipse(xPos-20, yPos-10, 50, 50); 
    ellipse(xPos+20, yPos-10, 50, 50);
    ellipse(xPos, yPos-10, 50, 50);
  }

  void moveCloud() {
    yPos=yPos+ySpeed;
    if (yPos>height||yPos<0) {
      ySpeed=-ySpeed;
    }
    xPos=xPos+xSpeed;
    if (xPos>width||xPos<0) {
      xSpeed=-xSpeed;
    }
  }
}
