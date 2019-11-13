Ship myShip;
Ship[] myShips=new Ship[20];


void setup() {
  size(800, 800);
  myShip=new Ship();
  
  for (int i=0; i<20; i++) {
    myShips[i]=new Ship();
  };
}

void draw() {
  background(30, 228, 255);
  myShip.drawShip();
  myShip.move();
}
