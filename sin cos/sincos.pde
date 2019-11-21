PVector pos;
float theta;
int orbitRadius=100;

void setup() {
  size(800, 800);
  rectMode(CENTER);
  pos=new PVector(0, height/2);
}

void draw() {
  background(0);
  theta+=.05;
  //theta=framecount;
  //pos.x=cos(theta)*orbitRadius+mouseX;
  pos.y=sin(theta)*orbitRadius+mouseY;
  pos.x++;
  rect(pos.x, pos.y, 50, 50);
}
