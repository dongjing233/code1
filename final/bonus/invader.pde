class Invader {
  int grid[][] = {{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0}, 
    {0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0}, 
    {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0}, 
    {0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1}, 
    {1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1}, 
    {0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0}
  };
  int rows = 8, cols = 11; 
  int size = 10; 
  float xPos=random(0, width);
  float yPos=random(0, height);
  float x, y;


  Invader() {
  }


  void display() {
    x=myPlayer.xPos;
    y=myPlayer.yPos;
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        if (grid [i][j] == 1) {
          fill(0, 0, 255);
        } else {
          fill(255);
        } 
        rect(xPos+j*size, yPos+i*size, size, size);
      }
  
    }

  }

  void move() {
    float r = random(0, 1);
    if (r < .25) {
      xPos ++;
    }
    if (.25 <r && r<.5) {
      xPos --;
    }
    if (.5 <r && r<.75) {
      yPos --; 
      if (.75 <r && r<1) {
        yPos ++;
      }
    }
  }
}
