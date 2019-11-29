class Player {
  float xPos, yPos;
  int num=20;
  int size;

  Player(float _xPos,float _yPos) {
    fill(0);
    xPos=_xPos;
    yPos=_yPos;
    size=25;
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
