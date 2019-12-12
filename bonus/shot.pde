class Shot {
  float e;
  float x=myPlayer.xPos;
  float y=myPlayer.yPos;
  int theta; 
  int orbitRadius=100; 


  Shot() {
  }

  void drawShot() {
    theta+=5;
    float x=myPlayer.xPos;
    float y=myPlayer.yPos;

    fill(0, 0, 255);

    if (keyPressed) {
      if (key == ' ') {
        println("shot");
        e--;
      }
      ellipse(cos(radians(theta))*orbitRadius +x+55, sin(radians(theta))*orbitRadius+y+30, 15, 15);
    }
  }
}
