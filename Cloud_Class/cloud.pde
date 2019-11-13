class Cloud {
  color c;
  float xPos, yPos;
  float xSpeed, ySpeed;

  Cloud() {
    c= color(random(0, 100), random(255), random(255));
    xSpeed=random(2, 6);
    xSpeed=random(-3, 2);
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
    xPos=xPos+xSpeed;
    if (xPos>width) {
      xPos=-20;
    }
    yPos=yPos+ySpeed;
    if (yPos>height) {
      yPos=-20;
    }
  }
}
