class Player {
  float xPos, yPos;
  float xSpeed, ySpeed;
  int num=20;
  int size;

  Player() {
    xSpeed=random(2, 6);
    xSpeed=random(-3, 2);
    xPos=width/2;
    yPos=height/2;
    size=25;
  }


  void move() {
    xPos+=xSpeed;
    yPos+=ySpeed;
    if (keyPressed) {
      if (keyCode==UP) {
        ySpeed=5;
      }
    }
    if (keyPressed) {
      if (keyCode==DOWN) {
        ySpeed=-5;
      }
    }
    if (keyPressed) {
      if (keyCode==LEFT) {
        xSpeed=-5;
      }
    }
    if (keyPressed) {
      if (keyCode==LEFT) {
        xSpeed=+5;
      }
    }
    }
    
    

    void drawCloud() {
      noStroke(); 
      fill(255, 0, 0); 
      ellipse(xPos, yPos-20, 50, 50); 
      ellipse(xPos-20, yPos-10, 50, 50); 
      ellipse(xPos+20, yPos-10, 50, 50);
      ellipse(xPos, yPos-10, 50, 50);
    }

    void drawPlayer() {
      noStroke(); 
      fill(255, 0, 0);
          ellipse(xPos, yPos-20, 50, 50); 
    ellipse(xPos-20, yPos-10, 50, 50); 
    ellipse(xPos+20, yPos-10, 50, 50);
    ellipse(xPos, yPos-10, 50, 50);
    }

    void checkBoundaries() {
    }
}





  
  
