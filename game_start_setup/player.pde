class Player {
  float xPos, yPos;
  int num=20;
  int size;


  Player(float _xPos, float _yPos) {
    fill(0);
    xPos=_xPos;
    yPos=_yPos;
    size=25;
  }

  void drawPlayer() {
    image(img, xPos-100, yPos-100, 200, 200);
  }
}
