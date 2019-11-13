class Player {
  float xPos, yPos; 
  float xSpeed, ySpeed; 

  int size; 

  Player() {
    xPos = width/2; 
    yPos = height/2; 
    size = 25;
  }

  void move() {
    //user input that controls our ship movement
    //mouse or keyboard input
    xPos += xSpeed; 
    yPos += ySpeed; 
    if (keyPressed) {
      if (keyCode == UP) {
        ySpeed = -5;
      } else if (keyCode == DOWN) {
        ySpeed = 5;
      } else if (keyCode == LEFT) {
        xSpeed = -5;
      } else if (keyCode == RIGHT) {
        xSpeed = 5;
      }
    } else {
      xSpeed = 0; 
      ySpeed = 0;
    }
  }

  void checkBoundaries() {
    if (xPos > width -10) {
      xPos = width-10;
    }
    if (xPos < 10) {
      xPos = 10;
    }
    if (yPos > height -10) {
      yPos = height-10;
    }
    if (yPos < 10) {
      yPos = 10;
    }
  }

  void drawPlayer() {
    fill(255, 0, 255, 60); 
    ellipse(xPos, yPos, 50, 20); 
    ellipse(xPos, yPos-10, 20, 20);
  }
  //display -> set fill color
}
