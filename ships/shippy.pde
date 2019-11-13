class Ship {//first letter is uppercase  //data
  color c;
  float xPos, yPos;
  float xSpeed, ySpeed;

  //constructor
  Ship() {
    c=color(random(100, 150), 233, random(200, 300));
    xSpeed=random(2, 6);
    xSpeed=random(-3, 2);
    xPos=random(0, width);
    yPos=random(0, height);
  }

  void drawShip() {
    noStroke();
    fill(c, 2000);
    ellipse(xPos, yPos, 50, 20);
    ellipse(xPos, yPos-10, 20, 20);
  }

  void move() {
    xPos=xPos+xSpeed;
    if (xPos>width){
      xPos=-20;
    }
    yPos=yPos+ySpeed;
    if (yPos>height){
      yPos=-20;
    }
   
  }
  
}
